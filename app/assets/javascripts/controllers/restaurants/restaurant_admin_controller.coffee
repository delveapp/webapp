angular.module('delve')
.controller 'RestaurantAdminController', (Auth, $rootScope, $scope, $http, $stateParams) ->
  $scope.init = () ->

  $scope.getDetails = () ->
    $http(
      method: "GET"
      params: {"url_title": $stateParams.restaurantName}
      url: '/api/restaurant/get_restaurant_info'
    ).then((response) ->
      $scope.restaurant = response.data.restaurant
      $scope.menu_items = response.data.menu_items

      $scope.$apply()
    )

  $scope.init()