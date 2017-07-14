var app = angular.module('scg', [])

  .controller('mainController', function (documentService) {

    var self = this;

    self.documentService = documentService;

    self.status = 'initial';

    self.result = '';

    self.isSubmitted = false;

    self.users = ['NGOLAMA', 'XXX'];

    self.createDocument = function (documentID, user) {

      self.isSubmitted = true;

      self.result = self.documentService.getDocumentFromAPI(documentID, user);

    }

  });
