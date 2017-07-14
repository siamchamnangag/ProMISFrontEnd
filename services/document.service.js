var app = angular.module('scg').service('documentService', function ($http) {

    var self = this;

    self.status = 'initial';

    self.URL = 'http://188.166.210.45:8000/documents/{document_id}?xomlanid={user}';

    self.getDocumentFromAPI = function (documentID, user) {

        var DOCUMENT_WITH_USER_URL = self.URL.replace('{document_id}', documentID).replace('{user}', user);

        return $http({
            method: 'POST',
            url: DOCUMENT_WITH_USER_URL
        }).then(function successCallback(response) {
            console.log(response);
            self.status = 'success';
            return response.data;

        }, function errorCallback(response) {
            console.log(response);
            self.status = 'failed';
            return response.data;

        });
    }
});