function alertResultSuccessController() {
    var self = this;
}

var app = angular.module('scg')
    .component('alertResultSuccess', {
        templateUrl: '/components/alert_result/alert_result_success/alert_result_success.html',
        bindings: {
            result: '<',
            name: '<'
        },
        controller: alertResultSuccessController
    })