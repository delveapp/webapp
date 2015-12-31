#
# Copyright (c) 2015-2016
# Brendan Downey, Adam Markon, Nikita Shenkman
#
# The code contained in this file and any related code in this project
# may not be modified or used without consent of the above listed owners.
#

delve = angular.module('delve')
delve.controller 'HomeController', (Auth, $scope, $rootScope) ->
  $scope.init = () ->
    $scope.menuItems = []
    $scope.searchRadius = 1
    $scope.sortOrder = "score-desc"
    if !$rootScope.latLong
      $rootScope.$on('locationLoaded', (event, data) ->
        $rootScope.latLong = data.loc
        $rootScope.$apply()
        $scope.getTopMenuItems()
      )
    else
      $scope.getTopMenuItems()

  $scope.getTopMenuItems = () ->
    jQuery.ajax
      url: '/api/home/top_menu_items?latitude=' + $rootScope.latLong[0] +
        '&longitude=' + $rootScope.latLong[1] +
        '&range=5&sortOrder=score-desc',
      success: (response) ->
        $scope.menuItems = response['data']
        $scope.$apply()


  $scope.init()
