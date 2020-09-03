(function () {
  'use strict';

  angular
    .module('cware', ['ngRoute', 'ngResource'])
    .config(function ($routeProvider, $locationProvider) {
      /* -- Activa el prefijo '#' para ser usado en vez de '/#!/#ruta' */
      $locationProvider.hashPrefix('');

      /* -- Definición de rutas y sus correspondientes templates y routers */
      $routeProvider.when('/', {
        templateUrl: 'app/partials/home.html',
        controller: 'Home'
      });
      $routeProvider.when('/login', {
        templateUrl: 'app/partials/login.html',
        controller: 'Login'
      });
      $routeProvider.when('/diagnosticar', {
        templateUrl: 'app/partials/diagnosticar.html',
        controller: 'Diagnosticar'
      });
      $routeProvider.when('/logs', {
        templateUrl: 'app/partials/registros.html',
        controller: 'Registros'
      });
      $routeProvider.when('/docs', {
        templateUrl: 'app/partials/documentacion.html',
        controller: 'Documentacion'
      });
      $routeProvider.when('/about', {
        templateUrl: 'app/partials/about.html',
        controller: 'About'
      });
      $routeProvider.otherwise({ redirectTo: '/' });
    })
    .run(function ($rootScope, $location, identity, data) {
      $rootScope.$on("$routeChangeStart", function (event, next, current) {
        /* -- Si el usuario no se ha identificado... */
        if (!identity.currentUser) {
          /* -- Solicitar identificarse si se intenta acceder a funciones de Diagnostico o Registros */
          if (next.templateUrl == "app/partials/diagnosticar.html" || next.templateUrl == "app/partials/registros.html") {
            $rootScope.next = next.templateUrl;
            $location.path("/login");
          }
          /* -- El resto de las páginas pueden ser accedidas sin haberse identificado. */
        }

        /* -- Si el usuario ya se ha identificado... */
        else {
          /* -- e intenta acceder a la página de login otra vez, se lo redirige al Home. */
          if (next.templateUrl == "app/partials/login.html") {
            $location.path("/");
          }
        }
      });
    });
})();