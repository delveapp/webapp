angular.module('delve')
.controller 'HeaderController', (Auth, $scope, $rootScope) ->
  $scope.signedIn = Auth.isAuthenticated();
  $scope.logout = Auth.logout;
  Auth.currentUser().then( (user) ->
    $scope.user = user;
    $scope.uid = user.id;
  );
  init = () ->
    $.get 'http://ipinfo.io', ((response) ->
      $scope.search_location = response.city + ", " + response.region
      $rootScope.$emit('locationLoaded', {loc: response.loc.split(",")})
      $scope.$apply()
    ), 'jsonp'
  $scope.logout = () ->
    jQuery.ajax
      url: '/users/sign_out',
      type: 'DELETE',
      success: (response) ->
        window.location.reload(true);
        $scope.$apply()

  $scope.deleteAccount = () ->
    jQuery.ajax
        url: '/users/' + $scope.uid,
        type: 'DELETE',
        success: (response) ->
          $scope.$apply()




  $scope.$on('devise:login',(e, user) ->
    $scope.user = user;
    $scope.uid = user.id
  );

  $scope.$on('devise:logout',(e, user) ->
    $scope.user = {};
  );

  $scope.isNotAuthenticated = () ->
    return !Auth.isAuthenticated()

  $scope.isAuthenticated = () ->
    return Auth.isAuthenticated()
  init()