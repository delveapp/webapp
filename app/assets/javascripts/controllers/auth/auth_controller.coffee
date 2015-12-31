#
# Copyright (c) 2015-2016
# Brendan Downey, Adam Markon, Nikita Shenkman
#
# The code contained in this file and any related code in this project
# may not be modified or used without consent of the above listed owners.
#

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