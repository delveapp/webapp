angular.module('finalProject')
.controller 'HeaderController', ($scope) ->

  init = () ->
    $.get 'http://ipinfo.io', ((response) ->
      $scope.search_location = response.city + ", " + response.region
      $scope.$apply()
    ), 'jsonp'

  init()