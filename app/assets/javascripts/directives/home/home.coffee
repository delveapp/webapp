#
# Copyright (c) 2015-2016
# Brendan Downey, Adam Markon, Nikita Shenkman
#
# The code contained in this file and any related code in this project
# may not be modified or used without consent of the above listed owners.
#

delve = angular.module('delve')

delve.directive 'dvMenuSelection', ($rootScope) ->
  (scope, elem, attrs) ->
    elem.bind 'change', (e) ->
      if attrs.id is 'search-radius'
        scope.searchRadius = e.target.selectedOptions[0].attributes['data-value']['value']
      else if attrs.id is 'sort-order'
        scope.sortOrder = e.target.selectedOptions[0].attributes['data-value']['value']
      scope.$apply()
      getTopMenuItems()

    getTopMenuItems = ->
      jQuery.ajax
        url: '/api/home/top_menu_items?latitude=' + $rootScope.latLong[0] +
          '&longitude=' + $rootScope.latLong[1] +
          '&range=' + scope.searchRadius +
          '&sortOrder=' + scope.sortOrder,
        success: (response) ->
          scope.menuItems = response['data']
          scope.$apply()

delve.directive 'dvRating', ($rootScope, $http) ->
  (scope, elem, attrs) ->
    elem.bind 'click', (e) ->
      $http({
        method: 'POST'
        url: 'api/score'
        data: {uid: $rootScope.uid, menu_item: attrs.menuItem, score: attrs.value}
      }).then (resp) ->
        $.notify { message: "Your score for " + attrs.name + " has been updated to " + resp.data.data.score }
      , (resp) ->
        if resp.status == 401
          $("#login").modal('show')