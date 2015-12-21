angular.module('delve')
.controller 'AuthController', [
  '$scope',
  '$state',
  'Auth',
  ($scope, $state, Auth) ->
    $scope.login = ->
      Auth.login($scope.user).then ->

    $scope.register = ->
      Auth.register($scope.user).then ->

]