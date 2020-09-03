(function () {
  'use strict';

  angular
    .module('cware')
    .controller('Registros', Registros);

  function Registros($scope, $rootScope, $route, identity, notifier, data) {
    $rootScope.page = "logs";
    $scope.index = 0;
    $scope.hasLogs = undefined;
    $scope.nextIndex = nextIndex;
    $scope.details = details;
    $scope.exportarLog = exportarLog;

    $scope.$on('$routeChangeSuccess', function () {
      data.getRegistros(identity.currentUser).then(function (data) {
        data.length == 0 ? $scope.hasLogs = undefined : $scope.hasLogs = true;
        $scope.logs = data;
      });
    });

    function nextIndex() {
      $scope.index = $scope.index + 1;
      return $scope.index;
    };

    function details(row) {
      if (row.expanded === true) {
        row.expanded = false;
      } else {
        row.expanded = true;
      }
    };

    function exportarLog() {
      /* -- CSV HEADERS */
      var file = "Fecha,Familia,Subfamilia,Caracteristicas,Causas\n";

      /* -- CSV DATA */
      // Por cada registro...
      for (var index = 0; index < $scope.logs.length; index++) {

        var log = $scope.logs[index];

        // Escribir fecha, nombre de la familia y subfamilia diagnosticada...
        file += '"' + log.fecha + '",';
        file += '"' + log.familia.nombre + '",';
        file += '"' + log.diagnostico.subfamilia + '",';

        // Escribir las características ingresadas...
        file += '"';
        for (var carac = 0; carac < log.familia.caracteristicas.length; carac++) {
          var caracteristica = log.familia.caracteristicas[carac];
          file += caracteristica.nombre + ": " + caracteristica.valor + "|";
        }
        if (log.familia.caracteristicas.length > 0) { file = file.slice(0, -1); }
        file += '",';

        // Escribir las causas del defecto
        file += '"';
        for (var caus = 0; caus < log.diagnostico.causas.length; caus++) {
          var causa = log.diagnostico.causas[caus];
          file += causa + "|";
        }
        if (log.diagnostico.causas.length > 0) { file = file.slice(0, -1); }
        file += '"\n';

      }

      /* -- FORMAT AND DOWNLOAD CSV */
      var blob = new Blob(["\ufeff", file]);
      var date = (new Date()).toJSON();
      if (window.navigator.msSaveOrOpenBlob)
        window.navigator.msSaveBlob(blob, identity.currentUser + "_logs_" + date + ".csv");
      else {
        var a = window.document.createElement("a");
        a.href = window.URL.createObjectURL(blob, {
          type: "text/plain"
        });
        a.download = identity.currentUser + "_logs_" + date + ".csv";
        document.body.appendChild(a);
        a.click();
        document.body.removeChild(a);
      }
      notifier.notifyInfo("La descarga de sus registros ha comenzado. Revise su carpeta de descargas al finalizar.");

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
