var app = angular.module('scg', [])

  .controller('mainController',
  function ($http) {

    var self = this;

    self.URL = "http://document-api.cloudhub.io/mock/v1/documents/"

    self.status = "initial";

    self.result = "";

    self.is_clicked = false;

    self.createDocument = function (document_id) {

      $http({
        method: 'GET',
        url: self.URL + document_id
      }).then(function successCallback(response) {

        self.status = "success";

        self.result = response.data;
        console.log(response);

      }, function errorCallback(response) {

        self.status = "failed";
        self.result = response.data.message;
        console.log(response);

      });

      self.is_clicked = true;
    }
  });
