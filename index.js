var app = angular.module('scg', [])

.controller('mainController',
  function($scope, $http) {

    $scope.URL = "http://document-api.cloudhub.io/mock/v1/documents/15"

    $scope.status = "Initial";
   
    $http({
      method: 'GET',
      url: $scope.URL
    }).then(function successCallback(response) {
      console.log(response);
    }, function errorCallback(message) {
      console.log(message);
    });
});