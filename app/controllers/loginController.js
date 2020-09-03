(function () {
  'use strict';

  angular
    .module('cware')
    .controller('Login', Login);

  function Login($scope, $rootScope, $location, identity) {
    $rootScope.page = "login";

    $scope.logIn = function () {
      identity.logIn($rootScope.user);
      $rootScope.currentUser = identity.currentUser;
      if ($rootScope.currentUser != undefined) {

        // Si el usuario se dirigia a Diagnosticar.
        if ($rootScope.next == "app/partials/diagnosticar.html") {
          $location.path('/diagnosticar');
        }

        // Si el usuario se dirigia a ver Registros.
        else if ($rootScope.next == "app/partials/registros.html") {
          $location.path('/logs');
        }

        // En caso de que el usuario se dirigiera a otra página, se lo redirige al Home.
        else {
          $location.path('/');
        }
      }
    };

    $scope.submitLogIn = function (keyEvent) {
      if (keyEvent.which === 13)
        $scope.logIn();
    };
  }
})();
