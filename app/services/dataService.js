(function () {
  'use strict';

  angular
    .module('cware')
    .factory('data', dataService);

  function dataService($resource) {
    var service = {
      getFamiliasDefectos: getFamiliasDefectos,
      getRegistros: getRegistros
    };
    return service;

    function getFamiliasDefectos() {
      return $resource('/api/familia-defectos', {}, {
        get: { method: "GET", cache: true, isArray: true }
      }).get().$promise;
    }

    function getRegistros(user) {
      return $resource('/api/log/' + user, {}, {
        get: { method: "GET", isArray: true }
      }).get().$promise;
    }
  }
})();
