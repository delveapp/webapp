angular.module('delve')
.controller 'RestaurantController', ($scope, $http, $stateParams, Auth) ->

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