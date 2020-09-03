(function () {
  'use strict';

  angular
    .module('cware')
    .factory('identity', identityService);

  function identityService(notifier) {
    var service = {
      currentUser: undefined,
      logIn: logIn,
      logOut: logOut
    };
    return service;

    function logIn(user) {
      if (user) {
        service.currentUser = user;
        notifier.notifySuccess("Bienvenido " + user + "!");
      } else {
        notifier.notifyError("Dirección de email incorrecta o el campo se encuentra vacío.");
      }
    }

    function logOut() {
      service.currentUser = undefined;
      notifier.notifySuccess("Se ha cerrado la sesión exitosamente.");
    }
  }
})();