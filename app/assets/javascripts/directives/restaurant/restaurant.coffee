delve = angular.module('delve')

delve.directive 'dvManage', (Auth, $stateParams) ->
  {
    restrict: 'A'
    replace: true
    scope: true
  }
  (scope, elem, attrs) ->
    elem.bind 'click', (evt) ->
      Auth.currentUser().then (data) ->
        if scope.admin
          str = ""
          if window.location.href.charAt(window.location.href.length - 1) != '/' then str = '/'
          window.location.href += str + 'admin'
        else
          alert "You are not authorized to manage this restaurant. Please contact support if you think this message is incorrect."
