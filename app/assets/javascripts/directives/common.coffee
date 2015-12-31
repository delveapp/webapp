#
# Copyright (c) 2015-2016
# Brendan Downey, Adam Markon, Nikita Shenkman
#
# The code contained in this file and any related code in this project
# may not be modified or used without consent of the above listed owners.
#

delve = angular.module('delve')
delve.directive 'header', ->
  {
    restrict: 'A'
    replace: true
    templateUrl: 'common/header.html'
    controller: 'HeaderController'
  }

delve.directive 'footer', ->
  {
    restrict: 'A'
    replace: true
    templateUrl: 'common/footer.html'
    controller: 'FooterController'
  }
