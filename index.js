var app = angular.module('scg', [])

  .controller('mainController',
  function ($scope, $http) {

    $scope.URL = "http://document-api.cloudhub.io/mock/v1/documents/"

    $scope.message = "";

    $scope.isClicked = false;

    $scope.createDocument = function (document_id) {
      $http({
        method: 'GET',
        url: $scope.URL + document_id
      }).then(function successCallback(response) {
        console.log(response);
      }, function errorCallback(message) {
        console.log(message);
      });
    }
  });