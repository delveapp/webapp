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
