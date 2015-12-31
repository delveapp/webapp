#
# Copyright (c) 2015-2016
# Brendan Downey, Adam Markon, Nikita Shenkman
#
# The code contained in this file and any related code in this project
# may not be modified or used without consent of the above listed owners.
#

angular.module('delve')
.controller 'MenuItemController', ($scope, $http, $state, $stateParams) ->

  $scope.init = () ->
    $http(
      method: "GET"
      params: {"menu_item_id": $stateParams.menuItemId}
      url: '/api/menu_item/get_menu_item_info'
    )
    .then ((response) ->
      $scope.restaurant = response.data.restaurant
      $scope.menu_item = response.data
      #check if valid menu item for restaurant
      if response.data.restaurant.url_title != $stateParams.restaurantName
        $state.go('restaurant', {restaurantName: $stateParams.restaurantName})
    ), (response) ->
      console.log "error"


  $scope.init()