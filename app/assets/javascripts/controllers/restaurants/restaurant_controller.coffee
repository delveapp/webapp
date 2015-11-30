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
      counter = 0
      rating = 0
      for menu_item in response.data.menu_items
        for score in menu_item.user_scores
          rating += score.score
          counter++
      $scope.rating = rating/counter
    ), (response) ->
      console.log "error"

  $scope.init()