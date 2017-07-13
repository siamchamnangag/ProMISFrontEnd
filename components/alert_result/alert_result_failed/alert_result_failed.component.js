function alertResultFailedController() {
    var self = this;
}

var app = angular.module('scg')
    .component('alertResultFailed', {
        templateUrl: '/components/alert_result/alert_result_failed/alert_result_failed.html',
        bindings: {
            result: '<',
            name: '<'
        },
        controller: alertResultFailedController
    })