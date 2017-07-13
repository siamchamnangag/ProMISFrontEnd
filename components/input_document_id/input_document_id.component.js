function inputDocumentIdController() {
    var self = this;
}

var app = angular.module('scg')
    .component('inputDocumentId', {
        templateUrl: '/components/input_document_id/input_document_id.html',
        bindings: {
            label: '<',
            name: '<',
            model: '=',
        },
        controller: function () { }
    })