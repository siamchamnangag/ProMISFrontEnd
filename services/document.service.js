var app = angular.module('scg').service('documentService', function ($http) {

    var self = this;

    self.status = 'initial';

    self.URL = 'http://188.166.210.45:8000/documents/';

    self.getDocumentFromAPI = function (documentID) {

        $http({
            method: 'POST',
            url: self.URL + documentID
        }).then(function successCallback(response) {

            self.status = 'success';
            return response.data;

        }, function errorCallback(response) {

            self.status = 'failed';
            return response.data;

        });
    }
});