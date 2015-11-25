angular.module('delve')
.controller 'SignupModalController', ($scope, $uibModalInstance) ->

  $scope.ok = ->
    $uibModalInstance.close()

  $scope.cancel = ->
    $uibModalInstance.dismiss('cancel')