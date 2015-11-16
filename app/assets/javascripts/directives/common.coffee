finalProject = angular.module('finalProject')
finalProject.directive 'header', ->
  {
    restrict: 'A'
    replace: true
    scope: { user: '=' }
    templateUrl: 'common/header.html'
    controller: 'HeaderController'
  }

finalProject.directive 'footer', ->
  {
  restrict: 'A'
  replace: true
  scope: { user: '=' }
  templateUrl: 'common/footer.html'
  controller: 'FooterController'
  }
