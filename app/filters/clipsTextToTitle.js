(function () {
	'use strict';

	angular
		.module('cware')
		.filter('clipsToTitle', clipsToTitleFilter);

	function clipsToTitleFilter() {
		
		/* -- El texto en clips no contiene espacios, la separación entre palabras 
			está definida por una letra en mayúsculas correspondiente a la primera 
			letra de la nueva palabra. Esta función permite separar las palabras con
			espacios y mantiene las mayúsculas iniciales de cada palabra para ser
			utilizados en títulos.
					Ejemplo: TituloDePrueba => Titulo De Prueba
		*/

		return function (clipsText) {
			var title = clipsText.split(/(?=[A-Z])/).join(" ");
			return title;
		};
	}
})();
