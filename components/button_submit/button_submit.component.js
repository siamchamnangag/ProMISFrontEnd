function buttonSubmitController() {
    var self = this;
}

var app = angular.module('scg')
    .component('buttonSubmit', {
        templateUrl: '/components/button_submit/button_submit.html',
        bindings: {
            name: '<',
            text: '<'
        },
        controller: buttonSubmitController
    })