delve = angular.module('delve')
delve.controller 'HomeController', (Auth, $scope, $rootScope) ->
  $scope.init = () ->
    Auth.currentUser().then ((user) ->
        $rootScope.user = user;
      ), (error) ->
        console.log "ERROR", error
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
        '&range=5&limit=25&sortOrder=score-desc',
      success: (response) ->
        $scope.menuItems = response['data']
        $scope.$apply()


  $scope.init()
