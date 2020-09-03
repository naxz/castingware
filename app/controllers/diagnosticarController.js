(function () {
  'use strict';

  angular
    .module('cware')
    .controller('Diagnosticar', Diagnosticar);

  function Diagnosticar($scope, $rootScope, $route, $http, identity, notifier, data) {
    $rootScope.page = "diagnosticar";
    $scope.diagnosisResult = null;
    $scope.tab = undefined;

    $scope.$on('$routeChangeSuccess', function () {
      data.getFamiliasDefectos().then(function (data) {
        $scope.familias = data;
      });
    });

    $scope.changeTab = function (tab) {
      $scope.diagnosisResult = null;
      $scope.tab = tab;
      data.getFamiliasDefectos().then(function (data) {
        $scope.familias = data;
      });
    };

    $scope.diagnose = function (family) {
      $http.post('/api/diagnostico/' + identity.currentUser, family)
        .then(function successCallback(response) {
          $scope.diagnosisResult = response.data;
          $("body").scrollTop(0);
          notifier.notifySuccess("Diagnóstico completado!");
        }, function errorCallback(response) {
          $scope.diagnosisResult = undefined;
          notifier.notifyError("Hubo un error interno al ejecutar el diagnóstico. Por favor intente nuevamente.");
        });
    };

    $scope.reset = function (family) {
      for (var key in family.slots) {
        family.slots[key].valor = '';
      }
      $scope.diagnosisResult = '';
    };
  }

  /* -- GOOGLE ANALYTICS */
  (function (i, s, o, g, r, a, m) {
    i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
      (i[r].q = i[r].q || []).push(arguments)
    }, i[r].l = 1 * new Date(); a = s.createElement(o),
      m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
  })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

  ga('create', 'UA-99769210-1', 'auto');
  ga('send', 'pageview');

})();
