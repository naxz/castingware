(function () {
  'use strict';

  angular
    .module('cware')
    .controller('Nav', Nav);

  function Nav($scope, $rootScope, $route, $location, identity) {
    $rootScope.currentUser = identity.currentUser;

    $scope.logIn = function () {
      identity.logIn($rootScope.user);
      $rootScope.currentUser = identity.currentUser;
    };

    $scope.logOut = function () {
      identity.logOut();
      $rootScope.currentUser = identity.currentUser;
      $rootScope.user = identity.currentUser;
      $route.reload();
      $location.path('/');
    };

    $scope.submitLogIn = function (keyEvent) {
      if (keyEvent.which === 13)
        $scope.logIn();
    };
  }
})();
