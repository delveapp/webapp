delve = angular.module('delve')
delve.controller 'HomeController', ($scope) ->
  $scope.init = () ->
    $scope.menuItems = []
    $scope.searchRadius = 1
    $scope.sortOrder = "score-desc"
    jQuery.ajax
      url: '/api/home/top_menu_items?latitude=42.337443&longitude=-71.086074&range=5&limit=2',
      success: (response) ->
        $scope.menuItems = response['data']
        $scope.$apply()

  $scope.init()
