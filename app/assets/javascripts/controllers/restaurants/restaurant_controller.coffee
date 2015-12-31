#
# Copyright (c) 2015-2016
# Brendan Downey, Adam Markon, Nikita Shenkman
#
# The code contained in this file and any related code in this project
# may not be modified or used without consent of the above listed owners.
#

angular.module('delve')
.controller 'RestaurantController', (_, $scope, $http, $stateParams, Auth) ->
  $scope.init = () ->
    $http(
      method: "GET"
      params: {"url_title": $stateParams.restaurantName}
      url: '/api/restaurant/get_restaurant_info'
    )
    .then ((response) ->
      $scope.restaurant = response.data.restaurant
      $scope.menu_items = response.data.menu_items
      Auth.currentUser().then (data) ->
        rest = response.data.restaurant
        admin = _.findWhere data.restaurant_admins, {restaurant_id: rest.id}
        $scope.admin = admin
    ), (response) ->
      console.log "error"

  $scope.init()