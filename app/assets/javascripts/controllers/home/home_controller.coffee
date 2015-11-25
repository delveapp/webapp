angular.module('delve')
.controller 'HomeController', ($scope) ->
  $scope.things = ['Angular', 'Rails 4.1', 'UI Router', 'Together!!', 'adam', 'markon', 'he', 'would', 'not', 'eat', 'that', 'you', 'are', 'not', 'the', 'father']
  $scope.hello_adam = () ->
    $.ajax
      url: 'api/get/home_hello_adam'
      type: 'GET'
      data : {}
      success: (response, status) ->
        if response
          $scope.helloAdam=response.adam
          $scope.$apply()