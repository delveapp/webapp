angular.module('delve')
.controller 'HeaderController', ($scope, $rootScope, $uibModal) ->

  init = () ->
    $.get 'http://ipinfo.io', ((response) ->
      $scope.search_location = response.city + ", " + response.region
      $rootScope.$emit('locationLoaded', {loc: response.loc.split(",")})
      $scope.$apply()
    ), 'jsonp'

  $scope.open = (signupAction) ->
    $scope.action = signupAction
    modalInstance = $uibModal.open(
      animation: true
      templateUrl: 'modals/signup_modal.html'
      controller: 'SignupModalController'
    )
  $scope.logout = () ->
    jQuery.ajax
      url: '/users/sign_out',
      type: 'DELETE',
      success: (response) ->
        window.location.reload(true);
        $scope.$apply()


  init()