function inputChooseUserController() {
    var self = this;
}

var app = angular.module('scg')
    .component('inputChooseUser', {
        templateUrl: '/components/input_choose_user/input_choose_user.html',
        bindings: {
            users: '<',
            model: '='
        },
        controller: inputChooseUserController
    })