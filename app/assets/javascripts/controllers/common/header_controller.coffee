angular.module('delve')
.controller 'HeaderController', ($scope, $rootScope, $uibModal) ->

  init = () ->
    $.get 'http://ipinfo.io', ((response) ->
      $scope.search_location = response.city + ", " + response.region
      $scope.$apply()
    ), 'jsonp'

  $scope.open = (signupAction) ->
    $scope.action = signupAction
    modalInstance = $uibModal.open(
      animation: true
      templateUrl: 'modals/signup_modal.html'
      controller: 'SignupModalController'
    )

  init()