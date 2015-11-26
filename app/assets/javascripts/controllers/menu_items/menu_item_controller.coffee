angular.module('delve')
.controller 'MenuItemController', ($scope, $stateParams) ->
  $scope.restaurantName = $stateParams.restaurantName
  $scope.menuItemId = $stateParams.menuItemId