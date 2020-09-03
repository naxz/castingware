(function () {
  'use strict';

  angular
    .module('cware')
    .controller('Documentacion', Documentacion);

  function Documentacion($scope, $rootScope) {
    $rootScope.page = "docs";
    $scope.tab = "servicios";

    $scope.changeTab = function (tab) {
      switch (tab) {
        case 'esquemas':
          $scope.tab = "esquemas";
          break;
        default:
          $scope.tab = "servicios";
      };
    }
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
