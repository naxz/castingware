(function () {
  'use strict';

  angular
    .module('cware')
    .filter('clipsToNormal', clipsToNormalFilter);

  function clipsToNormalFilter() {

		/* -- El texto en clips no contiene espacios, la separación entre palabras 
			está definida por una letra en mayúsculas correspondiente a la primera 
			letra de la nueva palabra. Esta función permite separar las palabras con
			espacios y convierte en minúsculas todas las letras salvo la inicial para
			por ser utilizado como texto normal.
					Ejemplo: TextoDePrueba => Texto de prueba
		*/

    return function (clipsText) {
      var normal = clipsText.split(/(?=[A-Z])/).join(" ");
      return normal.charAt(0).toUpperCase() + normal.slice(1).toLowerCase();
    };
  }
})();
