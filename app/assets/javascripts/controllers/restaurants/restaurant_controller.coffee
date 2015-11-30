angular.module('delve')
.controller 'RestaurantController', ($scope, $http, $stateParams) ->

  $scope.init = () ->
    $http(
      method: "GET"
      params: {"url_title": $stateParams.restaurantName}
      url: '/api/restaurant/get_restaurant_info'
    )
    .then ((response) ->
      $scope.restaurant = response.data.restaurant
      $scope.menu_items = response.data.menu_items
      console.log response
    ), (response) ->
      console.log "error"

  $scope.init()