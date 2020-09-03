(deftemplate Diagnostico
	(slot subfamilia
		(type STRING)
		(allowed-strings 
			"B-111: Sopladuras pinholes"
			"B-112: Sopladuras"
			"B-113: Sopladuras por escoria"
			"B-121: Sopladuras superficiales"
			"B-122: Sopladura por ángulo vivo"
			"B-123: Pinhole de superficie"
			"B-124: Rechupe disperso"
			"B-211: Rechupe abierto o externo"
			"B-212: Rechupe en ángulos o bordes"
			"B-213: Rechupe por noyo"
			"B-221: Rechupe interno o ciego"
			"B-222: Rechupe central"
			"B-311: Micro-rechupe"
			
			"C-111: Grietas en frío"
			"C-121: Grietas en caliente"
			"C-211: Fisura en frío"
			"C-221: Fisura en caliente"
			"C-222: Fisura por temple"
			"C-311: Colado frío"
			"C-321: Colada interrumpida"
			"C-331: Colado frío no fusión de insertos"
			"C-411: Fractura concoidea"
			"C-412: Corrosión intergranular"
			
			"E-111"
			"E-112"
			"E-121"
			"E-122"
			"E-123"
			"E-124"
			"E-125"
			"E-211"
			"E-221"
			"E-231"
		)
	)	
			
	(multislot causas
		(type STRING)
		(allowed-strings 	
			"Humedad de los materias de inoculacón"
			"Tenor de Aluminio en metal (ref. menor a 0.02%)"
			"Humedad de la masa de moldeo y su permeabilidad"
			"Elementos carbonaceos en la masa de moldeo"
			"Fase de secado de la pintura, tanto en base agua como alcohol, no terminada"
			"Posible exceso de aglomerante"
			"Noyos sin salidas de aire o respiraderos a la atmosfera"
			
			"Falta de limpieza de enfriadores/soportines"
			"Condensación de humedad sobre enfriadores/soportines (puede darse por colocar partes frías y calientes dentro del molde)"
			"Enfriadores con superficies porosas o agrietamiento superficial en la cara de contacto con el metal colado"
		
			"Metal no limpio, asegure la limpieza del metal antes de volcarlo en el molde puede usar atrapa escorias, son provistos por muchos proveedores"
			"Reacciones no deseadas entre el metal y los revestimientos de hornos y cucharas o partes del molde"
			"Molde no limpio antes del ensamble definitivo (aspire preferentemente)"
			"Llenado turbulento"
			"Temperatura incorrecta"
			"En hierro: relación magnesio/azufre menor a 4"
			
			"Gas atrapado en los sistemas de salida de aire, principalmente en las partes más altas del semimolde superior"
			"Temperatura de llenado baja"
			"Llenado lento y turbulento"
			"Baja permeabilidad del molde"
			"Posible exceso de aglomerante o compactación"
			
			"Acumulación de pintura sin secar"
			"Material extraño, grumos de aglomerante, falta de homogeneidad en el mezclado del material del molde"
			
			"Posibles partes húmedas no deseadas en el molde"
			"Temperatura de llenado baja y turbulenta"
			"Baja permeabilidad del semi-molde superior"
			"Cuchara de llenado húmeda"
			
			"Sistema de alimentación inadecuado (revisar distribución de alimentadores, posibles zonas aisladas de alimentación)"
			"Alta temperatura de llenado"
			"Desbalance de la composición química"
			"Inoculación ineficiente"
			"Falta de direccionalidad de la solidificación"
			
			"Sistema de alimentación inadecuado (revisar distribución de alimentadores, revisar el módulo de enfriamiento de alimentadores y revisar el aporte de metal de cada alimentador)"
			"Desbalance de la composición química (para fundición de hierros C.E bajo)"
			"Falta de rigidez del molde"
			"Pobre condición metalúrgica del metal"
			"Falta de inoculación"
			"Tiempo desde la inoculación al llenado demasiado prolongado - Fading"
			"Si usa camisas aislantes o exotérmicas para los montantes, revisar su calidad"
			
			"Diseño inadecuado de pieza por falta de redondez en los ángulos, formación de puntos calientes (efecto punta)"
			"Diseños de pieza con cambios de secciones muy abruptas"
			"Alta temperatura de colada"
			
			"Diseño de pieza inadecuado, noyo demasiado fino para la sección de metal que lo rodea (punto caliente)"
			"En hierro nodular:  Auto-compensación de alimentación desequilibrado (rigidez del molde, calidad metalúrgica del metal, temperatura de llenado, inoculación)"
			"En acero: sistema de alimentación inadecuado (revisar distribución de alimentadores, posibles zonas aisladas de alimentación)"
			
			"En hierro gris: alto contenido de nitrógeno en el metal"
			
			
			
			
			"Manipulación en: desmoldeo, rebaba, acopio, traslado, granallado, tamboreo, etc"
			
			"Manipulación en caliente de la pieza (tiempo de desmoldeo escaso)"
					
			"Molde/noyo demasiado duro, elevada cantidad de aglomerante"
			"Compactado de la arena de moldeo en exceso"
			"Aglomerante con alta resistencia en caliente"
			"Diseños de encuentros de forma inadecuados"
			"Muy baja temperatura de llenado"


			"Diseños de pieza con cambios de secciones muy abruptas"
			"Falta de redondeo en los encuentros de secciones"
			"Material del molde/noyo con baja colapsabilidad"
			"En fundición de acero, alto valor de fosforo (mayor a 0.03)"
			"En fundición de hierro, excesiva cantidad de carburos en la matriz (alta contracción inicial)"
			
			"Alta velocidad de enfriamiento"
			"Alta velocidad de calentamiento"
			"Transformación de matriz (primordialmente martensítica)"
			
			"Falta de temperatura en el colado"
			"Muy baja velocidad de llenado"
			
			"Falta de temperatura en el colado"
			"Colada interrumpida"
			"Muy baja velocidad de llenado"
			
			"Falta de temperatura en el colado"
			"Insertos con falta de limpieza (oxidados)"
			"Muy baja velocidad de llenado"

			"Para fundición de acero: elevado nivel de nitrógeno y muy alta temperatura de colada"
	
			"Para fundición de acero: exceso de tiempo en tratamiento térmico de alta temperatura"
			
			
			
			
			"Metal frío al momento de llenado"
			"Acumulación de pintura de molde solo en vértices"
			"Modelo desgastado por erosión"
			
			"Mala reparación del molde"
			"Acumulación de pintura por mala aplicación"
			"Modelo deteriorado"
			
			"Metal oxidado (baja fluidez al momento de llenado)"
			"Falta de un sistema de salida de gases"
			
			"Insuficiente cantidad de metal líquido en cuchara"
			"Interrupción del llenado por error del operador"
			"Interrupción del llenado por pérdida de metal"
			"Muy baja velocidad de llenado por sección insuficiente de los ataques de llenado"
			"Nivel de la balsa de llenado (basín) próxima o por debajo de la altura de la pieza"
			
			"Fuga del metal una vez completo el llenado"
			"Falta de sello entre los semi-moldes"
			"Presión metalostática vence el sello de los semi-moldes"
			"Pared de molde lateral rota"
			
			"Exceso en la remoción de metal por efecto de granallado"
			
			"Temperatura y tiempo de tratamiento térmico elevados"
			
			"Golpes durante el desmoldeo"
			"Traslado de la pieza descuidado"
			
			"Dimensiones incorrectas de los ataques de colada o salidas de gases"
			"Ubicación incorrecta de los ataques de colada o salidas de gases"
			"Manipulación desde las salidas de gases o ataques de colada durante el desmoldeo"
			"Retiro de salida de gases o ataques de colada por medio de golpes sin entallar por amolado la zona de corte"

			"Desmoldeo prematuro de la pieza (a alta temperatura)"
			"Diseño de pieza que acumula altas tensiones internas"
			"Contracciones impedidas por materiales del molde"
		)
	)
)


(deftemplate Cavidad
	(slot Aspecto
		(type STRING)
		(allowed-strings
			"Liso"
			"Dendrítico"
			"Rugoso"
		)
	)
	(slot Color
		(type STRING)
		(allowed-strings
			"Negruzco"
			"Amarronado"
			"Rojizo"
			"Dorado"
			"Plateado"
		)
	)
	(slot Acabado
		(type STRING)
		(allowed-strings
			"Mate"
			"Brillante"
		)
	)
	(slot Forma
		(type STRING)
		(allowed-strings
			"Irregular alargada"
			"Irregular redonda"
			"Irregular cuadrada"
			"Cilíndrica alargada"
			"Cilíndrica corta"
			"Cónica"
			"Esférica"
			"Redondeada"
		)
	)
	(slot Tamaño
		(type STRING)
		(allowed-strings
			"Pequeño (menor a 4mm)"
			"Mediano (4mm a 7mm)"
			"Grande (mayor a 7mm y menor a 15mm)"
			"Muy grande (mayor a 15mm)"
		)
	)
	(slot Cantidad
		(type STRING)
		(allowed-strings
			"Una"
			"Pocas (entre 2 y 5)"
			"Muchas (entre 6 y 10)"
			"Muchísimas (más de 10)"
		)
	)
	(slot Distribución
		(type STRING)
		(allowed-values
			"Única"
			"Alineadas rectas"
			"Alineadas circulares"
			"Azarosa"
		)
	)
	(slot Ubicación
		(type STRING)
		(allowed-strings
			"Semi-molde superior"
			"Superficie definida por noyo o lado sobre"
			"Semi-molde inferior"
			"No definida (dispersas en zonas)"
			"En toda la pieza"
		)
	)
	(slot Posición
		(type STRING)
		(allowed-strings
			"En la superficie"
			"Subsuperficial"
			"Próximas a enfriadores"
			"Sobre un vértice interior"
			"En el centro del espesor"
			"Sobre ataques de colada"
			"Intersección de secciones a 90°"
			"Próximas cuello de montante"
			"Dentro del cuello del montante"
		)
	)
)



(deftemplate Discontinuidad
	(slot Estado 
		(type STRING) 
		(allowed-strings "En bruto de colada" "Luego del tratamiento térmico") 
	)
	(slot Forma 
		(type STRING) 
		(allowed-strings 
							"Sinuosa" 
							"Rectilínea")
	)
	(slot Espesor 
		(type STRING) 
		(allowed-strings 
							"Muy apretada"
							"Apretada"
							"Abierta"
							"Muy abierta"
		) 
	)
	(slot Profundidad 
		(type STRING) 
		(allowed-strings 
							"No pasante (entre 8% y 99% del espesor)"
							"Superficial (hasta 8% del espesor)"
							"Pasante"
		) 
	)
	(slot Raiz 
		(type STRING) 
		(allowed-strings 
							"Aguda" 
							"Redondeada" 
							"Sin raíz")
	)
	(slot Camino 
		(type STRING) 
		(allowed-strings 
							"Perpendicular a la superficie"
							"Paralelo a la superficie"
							"Oblicuo a la superficie"
		) 
	)
	(slot Color 
		(type STRING) 
		(allowed-strings 
							"Negruzco"
							"Ocre"
							"Dorado"
							"Plateado"
		) 
	)
	(slot Aspecto 
		(type STRING) 
		(allowed-strings 
							"Sin grano"
							"Grano fino"
							"Grano dendrítico (concoidal)"
							"Grano grueso"
		) 
	)
	(slot Ubicación 
		(type STRING) 
		(allowed-strings 
							"Dentro de ataque de colada"
							"Próxima a ataque de colada"
							"Próxima a encuentros de secciones diferentes"
							"Por el cuello del montante"
							"Próxima a enfriadores"
							"Entre enfriadores"
							"Indistinta"
							"Otros puntos calientes"
		) 
	)
)
	
(deftemplate PiezaIncompleta
	(slot CumplióConLaFormaBuscadaEnAlgúnMomento
		(type STRING)
		(allowed-strings
			"Si"
			"No"
		)
	)
	(slot TipoDeIncompletitud
		(type STRING)
		(allowed-strings
			"Fractura"
			"Faltante"
		)
	)
	(slot TamañoDelFaltante
		(type STRING)
		(allowed-strings
			"Pequeño"
			"Grande"
			"No aplica"
		)	
	)
	(slot UbicaciónFaltante
		(type STRING)
		(allowed-strings
			"Solo en esquinas"
			"Dispersa"
			"En la cara superior"
			"No aplica"
		)
	)
	(slot AspectoDeLaCaraSuperior
		(type STRING)
		(allowed-strings
			"Con bordes redondeados"
			"Con bordes definidos (plano recto)"
			"Con zona central deprimida (tipo olla)"
			"No aplica"
		)
	)
	(slot TipoDeFractura
		(type STRING)
		(allowed-strings
			"De la pieza"
			"De partes de la pieza"
			"No aplica"
		)
	)
	(slot AspectoDeLaFractura
		(type STRING)
		(allowed-strings
			"Oxidada"
			"No oxidada"
			"No aplica"
		)
	)
)
	

(defrule R-B-111
	(Cavidad
		(Aspecto "Liso")
		(Color "Plateado")
		(Acabado "Brillante")
		(Forma "Redondeada")
		(Tamaño ?tamaño)
		(Cantidad "Muchísimas (más de 10)")
		(Distribución "Azarosa")
		(Ubicación "En toda la pieza")
		(Posición "En la superficie")
	)
	(test (or (eq ?tamaño "Pequeño (menor a 4mm)") (eq ?tamaño "Mediano (4mm a 7mm)")))
	=>
	(assert
		(Diagnostico
			(subfamilia "B-111: Sopladuras pinholes")
			(causas
				"Humedad de los materias de inoculacón"
				"Tenor de Aluminio en metal (ref. menor a 0.02%)"
				"Humedad de la masa de moldeo y su permeabilidad"
				"Elementos carbonaceos en la masa de moldeo"
				"Fase de secado de la pintura, tanto en base agua como alcohol, no terminada"
				"Posible exceso de aglomerante"
				"Noyos sin salidas de aire o respiraderos a la atmosfera"
			)
		)
	)
)

(defrule R-B-112
	(Cavidad
		(Aspecto "Liso")
		(Color ?color)
		(Acabado "Brillante")
		(Forma "Irregular alargada")
		(Tamaño "Mediano (4mm a 7mm)")
		(Cantidad "Pocas (entre 2 y 5)")
		(Distribución "Azarosa")
		(Ubicación "Semi-molde superior")
		(Posición "Próximas a enfriadores")
	)
	(test (or (eq ?color "Rojizo") (eq ?color "Dorado")))
	=>
	(assert
		(Diagnostico
			(subfamilia "B-112: Sopladuras")
			(causas
				"Falta de limpieza de enfriadores/soportines"
				"Condensación de humedad sobre enfriadores/soportines (puede darse por colocar partes frías y calientes dentro del molde)"
				"Enfriadores con superficies porosas o agrietamiento superficial en la cara de contacto con el metal colado"
			)
		)
	)
)

(defrule R-B-113
	(Cavidad
		(Aspecto ?aspecto)
		(Color "Negruzco")
		(Acabado "Mate")
		(Forma ?forma)
		(Tamaño "Mediano (4mm a 7mm)")
		(Cantidad "Pocas (entre 2 y 5)")
		(Distribución "Azarosa")
		(Ubicación "Semi-molde superior")
		(Posición "En la superficie")
	)
	(test (or (eq ?aspecto "Liso") (eq ?aspecto "Rugoso")))
	(test (or (eq ?forma "Irregular alargada") (eq ?forma "Irregular redonda")))
	=>
	(assert
		(Diagnostico
			(subfamilia "B-113: Sopladuras por escoria")
			(causas
				"Metal no limpio, asegure la limpieza del metal antes de volcarlo en el molde puede usar atrapa escorias, son provistos por muchos proveedores"
				"Reacciones no deseadas entre el metal y los revestimientos de hornos y cucharas o partes del molde"
				"Molde no limpio antes del ensamble definitivo (aspire preferentemente)"
				"Llenado turbulento"
				"Temperatura incorrecta"
				"En hierro: relación magnesio/azufre menor a 4"
			)
		)
	)
)

(defrule R-B-121
	(Cavidad
		(Aspecto "Liso")
		(Color "Negruzco")
		(Acabado "Mate")
		(Forma "Irregular redonda")
		(Tamaño "Grande (mayor a 7mm y menor a 15mm)")
		(Cantidad "Muchas (entre 6 y 10)")
		(Distribución "Azarosa")
		(Ubicación "Semi-molde superior")
		(Posición "En la superficie")
	)
	=>
	(assert
		(Diagnostico
			(subfamilia "B-121: Sopladuras superficiales")
			(causas
				"Gas atrapado en los sistemas de salida de aire, principalmente en las partes más altas del semimolde superior"
				"Temperatura de llenado baja"
				"Llenado lento y turbulento"
				"Baja permeabilidad del molde"
				"Posible exceso de aglomerante o compactación"
			)
		)
	)
)


(defrule R-B-122
	(Cavidad
		(Aspecto "Rugoso")
		(Color "Negruzco")
		(Acabado "Mate")
		(Forma "Irregular alargada")
		(Tamaño "Grande (mayor a 7mm y menor a 15mm)")
		(Cantidad "Una")
		(Distribución "Única")
		(Ubicación ?ubicación)
		(Posición "Sobre un vértice interior")
	)
	(test 	(or (eq ?ubicación "Semi-molde superior")	
				(eq ?ubicación "Superficie definida por noyo o lado sobre")
				(eq ?ubicación "Semi-molde inferior")
				(eq ?ubicación "No definida (dispersas en zonas)")
				(eq ?ubicación "En toda la pieza")
			)
	)
	=>
	(assert
		(Diagnostico
			(subfamilia "B-122: Sopladura por ángulo vivo")
			(causas
				"Posible exceso de aglomerante"
				"Acumulación de pintura sin secar"
				"Material extraño, grumos de aglomerante, falta de homogeneidad en el mezclado del material del molde"
			)
		)
	)
)

(defrule R-B-123
	(Cavidad
		(Aspecto "Liso")
		(Color "Plateado")
		(Acabado "Brillante")
		(Forma "Redondeada")
		(Tamaño "Mediano (4mm a 7mm)")
		(Cantidad "Muchísimas (más de 10)")
		(Distribución "Azarosa")
		(Ubicación "Semi-molde superior")
		(Posición "En la superficie")
	)
	=>
	(assert
		(Diagnostico
			(subfamilia "B-123: Pinhole de superficie")
			(causas			
				"Posibles partes húmedas no deseadas en el molde"
				"Temperatura de llenado baja y turbulenta"
				"Baja permeabilidad del semi-molde superior"
				"Cuchara de llenado húmeda"
				"Humedad de los materias de inoculacón"	
			)
		)
	)
)

(defrule R-B-124
	(Cavidad
		(Aspecto "Rugoso")
		(Color "Plateado")
		(Acabado "Brillante")
		(Forma "Cilíndrica alargada")
		(Tamaño "Mediano (4mm a 7mm)")
		(Cantidad "Muchas (entre 6 y 10)")
		(Distribución ?distribución)
		(Ubicación  "No definida (dispersas en zonas)")
		(Posición "Subsuperficial")
	)
	(test 	(or (eq ?distribución "Alineadas rectas")	
				(eq ?distribución "Alineadas circulares")
			)
	)
	=>
	(assert
		(Diagnostico
			(subfamilia "B-124: Rechupe disperso")
			(causas			
				"Sistema de alimentación inadecuado (revisar distribución de alimentadores, posibles zonas aisladas de alimentación)"
				"Alta temperatura de llenado"
				"Desbalance de la composición química"
				"Inoculación ineficiente"
				"Falta de direccionalidad de la solidificación"
			)
		)
	)
)

(defrule R-B-211
	(Cavidad
		(Aspecto "Dendrítico")
		(Color "Negruzco")
		(Acabado "Mate")
		(Forma "Cónica")
		(Tamaño "Muy grande (mayor a 15mm)")
		(Cantidad "Una")
		(Distribución "Única")
		(Ubicación "Semi-molde superior")
		(Posición "Dentro del cuello del montante")
	)
	=>
	(assert
		(Diagnostico
			(subfamilia "B-211: Rechupe abierto o externo")
			(causas			
				"Sistema de alimentación inadecuado (revisar distribución de alimentadores, revisar el módulo de enfriamiento de alimentadores y revisar el aporte de metal de cada alimentador)"
				"Alta temperatura de llenado"
				"Desbalance de la composición química (para fundición de hierros C.E bajo)"
				"Falta de rigidez del molde"
				"Pobre condición metalúrgica del metal"
				"Falta de inoculación"
				"Tiempo desde la inoculación al llenado demasiado prolongado - Fading"
				"Si usa camisas aislantes o exotérmicas para los montantes, revisar su calidad"
			)
		)
	)
)


(defrule R-B-212
	(Cavidad
		(Aspecto "Dendrítico")
		(Color "Negruzco")
		(Acabado "Mate")
		(Forma ?forma)
		(Tamaño "Grande (mayor a 7mm y menor a 15mm)")
		(Cantidad "Una")
		(Distribución "Única")
		(Ubicación ?ubicación)
		(Posición ?posición)
	)
	(test 	(or (eq ?ubicación "Semi-molde superior")	
				(eq ?ubicación "Superficie definida por noyo o lado sobre")
				(eq ?ubicación "Semi-molde inferior")
				(eq ?ubicación "No definida (dispersas en zonas)")
				(eq ?ubicación "En toda la pieza")
			)
	)
	(test 	(or (eq ?forma "Irregular alargada")	
				(eq ?forma "Irregular redonda")
				(eq ?forma "Irregular cuadrada")
			)
	)
	(test 	(or (eq ?posición "Sobre un vértice interior")	
				(eq ?posición "Sobre ataques de colada")
				(eq ?posición "Próximas cuello de montante")
			)
	)
	=>
	(assert
		(Diagnostico
			(subfamilia "B-212: Rechupe en ángulos o bordes")
			(causas	
					"Diseño inadecuado de pieza por falta de redondez en los ángulos, formación de puntos calientes (efecto punta)"
					"Diseños de pieza con cambios de secciones muy abruptas"
					"Alta temperatura de colada"

			)
		)
	)
)

(defrule R-B-213
	(Cavidad
		(Aspecto "Dendrítico")
		(Color "Negruzco")
		(Acabado "Mate")
		(Forma ?forma)
		(Tamaño "Grande (mayor a 7mm y menor a 15mm)")
		(Cantidad "Una")
		(Distribución "Única")
		(Ubicación "Superficie definida por noyo o lado sobre")
		(Posición "En el centro del espesor")
	)
	(test 	(or (eq ?forma "Irregular alargada")	
				(eq ?forma "Irregular redonda")
				(eq ?forma "Irregular cuadrada")
			)
	)
	=>
	(assert
		(Diagnostico
			(subfamilia "B-213: Rechupe por noyo")
			(causas	
					"Desbalance de la composición química (para fundición de hierros C.E bajo)"
					"Diseño de pieza inadecuado, noyo demasiado fino para la sección de metal que lo rodea (punto caliente)"
			)
		)
	)
)



(defrule R-B-221
	(Cavidad
		(Aspecto "Dendrítico")
		(Color "Plateado")
		(Acabado "Brillante")
		(Forma "Cónica")
		(Tamaño ?tamaño)
		(Cantidad "Una")
		(Distribución "Única")
		(Ubicación "Semi-molde superior")
		(Posición "Intersección de secciones a 90°")
	)
	(test 	(or (eq ?tamaño "Grande (mayor a 7mm y menor a 15mm)")	
				(eq ?tamaño "Muy grande (mayor a 15mm)")
			)
	)
	=>
	(assert
		(Diagnostico
			(subfamilia "B-221: Rechupe interno o ciego")
			(causas	
					"Sistema de alimentación inadecuado (revisar distribución de alimentadores, revisar el módulo de enfriamiento de alimentadores y revisar el aporte de metal de cada alimentador)"
					"Alta temperatura de llenado"
					"Desbalance de la composición química (para fundición de hierros C.E bajo)"
					"Falta de rigidez del molde"
					"Pobre condición metalúrgica del metal"
					"Falta de inoculación"
					"Tiempo desde la inoculación al llenado demasiado prolongado - Fading"
					"Si usa camisas aislantes o exotérmicas para los montantes, revisar su calidad"
			)
		)
	)
)



(defrule R-B-222
	(Cavidad
		(Aspecto "Dendrítico")
		(Color "Plateado")
		(Acabado "Brillante")
		(Forma "Irregular redonda")
		(Tamaño ?tamaño)
		(Cantidad "Una")
		(Distribución "Única")
		(Ubicación "Semi-molde superior")
		(Posición "En el centro del espesor")
	)
	(test 	(or (eq ?tamaño "Grande (mayor a 7mm y menor a 15mm)")	
				(eq ?tamaño "Muy grande (mayor a 15mm)")
			)
	)
	=>
	(assert
		(Diagnostico
			(subfamilia "B-222: Rechupe central")
			(causas	
					"Sistema de alimentación inadecuado (revisar distribución de alimentadores, posibles zonas aisladas de alimentación)"
					"Falta de direccionalidad de la solidificación"
			)
		)
	)
)


(defrule R-B-311
	(Cavidad
		(Aspecto "Dendrítico")
		(Color "Plateado")
		(Acabado "Brillante")
		(Forma "Redondeada")
		(Tamaño "Pequeño (menor a 4mm)")
		(Cantidad "Muchísimas (más de 10)")
		(Distribución "Azarosa")
		(Ubicación ?ubicacion)
		(Posición "Intersección de secciones a 90°")
	)
	(test 	(or (eq ?ubicacion "Semi-molde superior")	
				(eq ?ubicacion "Semi-molde inferior")
			)
	)
	=>
	(assert
		(Diagnostico
			(subfamilia "B-311: Micro-rechupe")
			(causas	
					"En hierro gris: alto contenido de nitrógeno en el metal"
					"En hierro nodular:  Auto-compensación de alimentación desequilibrado (rigidez del molde, calidad metalúrgica del metal, temperatura de llenado, inoculación)"
					"En acero: sistema de alimentación inadecuado (revisar distribución de alimentadores, posibles zonas aisladas de alimentación)"			
			)
		)
	)
)


(defrule R-C-111		
	(Discontinuidad 
					(Estado ?estado)
					(Forma "Rectilínea")
					(Espesor "Muy abierta")
					(Profundidad "Pasante")
					(Raiz "Aguda")
					(Camino "Perpendicular a la superficie")
					(Color "Plateado")
					(Aspecto "Grano fino")
					(Ubicación "Indistinta")
	)	
	(test (or (eq ?estado "En bruto de colada") (eq ?estado "Luego del tratamiento térmico")))		
	=>
	(assert
		(Diagnostico
			(subfamilia "C-111: Grietas en frío")
			(causas
				"Manipulación en: desmoldeo, rebaba, acopio, traslado, granallado, tamboreo, etc"
			)
		)
	)
)


(defrule R-C-121
	(Discontinuidad 
					(Estado ?estado)			 
					(Forma "Sinuosa")
					(Espesor "Muy abierta")
					(Profundidad "Pasante")
					(Raiz "Aguda")
					(Camino "Perpendicular a la superficie")
					(Color ?color)
					(Aspecto "Grano fino")
					(Ubicación "Indistinta")
	)
	(test 	(or (eq ?estado "En bruto de colada") (eq ?estado "Luego del tratamiento térmico")))
	(test	(or (eq ?color "Negruzco") (eq ?color "Ocre")(eq ?color "Dorado")))
	=>
	(assert
		(Diagnostico
			(subfamilia "C-121: Grietas en caliente")
			(causas
				"Manipulación en caliente de la pieza (tiempo de desmoldeo escaso)"
			)
		)
	)
)


(defrule R-C-211
	(Discontinuidad 	
					(Estado ?estado)				 
					(Forma "Rectilínea")
					(Espesor "Muy abierta")
					(Profundidad "Pasante")
					(Raiz "Sin raíz")
					(Camino ?camino)
					(Color "Plateado")
					(Aspecto "Grano fino")
					(Ubicación "Indistinta")
	)
	(test 	(or (eq ?estado "En bruto de colada") (eq ?estado "Luego del tratamiento térmico")))
	(test	(or (eq ?camino "Perpendicular a la superficie") (eq ?camino "Oblicuo a la superficie")))
	=>
	(assert
		(Diagnostico
			(subfamilia "C-211: Fisura en frío")
			(causas
					"Molde/noyo demasiado duro, elevada cantidad de aglomerante"
					"Compactado de la arena de moldeo en exceso"
					"Aglomerante con alta resistencia en caliente"
					"Diseños de encuentros de forma inadecuados"
					"Muy baja temperatura de llenado"
			)
		)
	)
)

(defrule R-C-221
	(Discontinuidad 	
					(Estado "En bruto de colada")				 
					(Forma "Sinuosa")
					(Espesor ?espesor)
					(Profundidad "No pasante (entre 8% y 99% del espesor)")
					(Raiz "Redondeada")
					(Camino "Perpendicular a la superficie")
					(Color ?color)
					(Aspecto "Grano dendrítico (concoidal)")
					(Ubicación ?ubicación)
	)
	(test 	(or (eq ?espesor "Apretada") 
				(eq ?espesor "Abierta")
			)
	)
	
	(test	(or (eq ?color "Negruzco") 
				(eq ?color "Ocre")
			)
	)
	
	(test 	(or (eq ?ubicación "Entre enfriadores")	
				(eq ?ubicación "Próxima a enfriadores")
				(eq ?ubicación "Por el cuello del montante")
				(eq ?ubicación "Próxima a ataques de colada")
				(eq ?ubicación "Dentro de ataque de coladas")
				(eq ?ubicación "Próxima a encuentros de secciones diferentes")
				(eq ?ubicación "Otros puntos calientes")
			)
	)
	=>
	(assert
		(Diagnostico
			(subfamilia "C-221: Fisura en caliente")
			(causas
					"Diseños de pieza con cambios de secciones muy abruptas"
					"Falta de redondeo en los encuentros de secciones"
					"Material del molde/noyo con baja colapsabilidad"
					"En fundición de acero, alto valor de fosforo (mayor a 0.03)"
					"En fundición de hierro, excesiva cantidad de carburos en la matriz (alta contracción inicial)"
			)
		)
	)
)


(defrule R-C-222
	(Discontinuidad 	
					(Estado ?estado)			 
					(Forma "Sinuosa")
					(Espesor ?espesor)
					(Profundidad "No pasante (entre 8% y 99% del espesor)")
					(Raiz "Aguda")
					(Camino "Perpendicular a la superficie")
					(Color ?color)
					(Aspecto "Grano grueso")
					(Ubicación "Indistinta")
	)
	(test 	(or 	(eq ?estado "En bruto de colada") 
					(eq ?estado "Luego del tratamiento térmico")
			)
	)		
	
	(test 	(or (eq ?espesor "Muy apretada") 
				(eq ?espesor "Abierta")
				(eq ?espesor "Apretada")
			)
	)
	
	(test	(or (eq ?color "Dorado") 
				(eq ?color "Ocre")
			)
	)
	
	=>
	(assert
		(Diagnostico
			(subfamilia "C-222: Fisura por temple")
			(causas
					"Alta velocidad de enfriamiento"
					"Alta velocidad de calentamiento"
					"Transformación de matriz (primordialmente martensítica)"
			)
		)
	)
)

(defrule R-C-311
	(Discontinuidad 	
					(Estado "En bruto de colada")		 
					(Forma ?forma)
					(Espesor "Abierta")
					(Profundidad ?profundidad)
					(Raiz "Redondeada")
					(Camino "Perpendicular a la superficie")
					(Color "Negruzco")	
					(Aspecto "Sin grano")
					(Ubicación "Indistinta")	
	)
	
	(test 	(or 	(eq ?forma "Sinuosa") 
					(eq ?forma "Rectilínea")
			)
	)		
	
	(test 	(or (eq ?profundidad "Pasante") 
				(eq ?profundidad "No pasante (entre 8% y 99% del espesor)")
			)
	)
	=>
	(assert
		(Diagnostico
			(subfamilia "C-311: Colado frío")
			(causas
					"Falta de temperatura en el colado"
					"Muy baja velocidad de llenado"
			)
		)
	)
)

(defrule R-C-321
	(Discontinuidad 	
					(Estado "En bruto de colada")		 
					(Forma ?forma)
					(Espesor "Abierta")
					(Profundidad ?profundidad)
					(Raiz "Redondeada")
					(Camino "Paralelo a la superficie")
					(Color "Negruzco")	
					(Aspecto "Sin grano")
					(Ubicación "Indistinta")	
	)
	
	(test 	(or 	(eq ?forma "Sinuosa") 
					(eq ?forma "Rectilínea")
			)
	)		
	
	(test 	(or (eq ?profundidad "Pasante") 
				(eq ?profundidad "No pasante (entre 8% y 99% del espesor)")
			)
	)
	
	=>
	(assert
		(Diagnostico
			(subfamilia "C-321: Colada interrumpida")
			(causas
					"Falta de temperatura en el colado"
					"Colada interrumpida"
					"Muy baja velocidad de llenado"
			)
		)
	)
)

(defrule R-C-331
	(Discontinuidad 	
					(Estado "En bruto de colada")		 
					(Forma ?forma)
					(Espesor "Abierta")
					(Profundidad ?profundidad)
					(Raiz "Redondeada")
					(Camino "Paralelo a la superficie")
					(Color "Negruzco")	
					(Aspecto "Sin grano")
					(Ubicación "Próxima a enfriadores")	
	)
	
	(test 	(or 	(eq ?forma "Sinuosa") 
					(eq ?forma "Rectilínea")
			)
	)		
	
	(test 	(or (eq ?profundidad "Pasante") 
				(eq ?profundidad "No pasante (entre 8% y 99% del espesor)")
			)
	)
	
	=>
	(assert
		(Diagnostico
			(subfamilia "C-331: Colado frío no fusión de insertos")
			(causas
					"Falta de temperatura en el colado"
					"Insertos con falta de limpieza (oxidados)"
					"Muy baja velocidad de llenado"
			)
		)
	)
)

(defrule R-C-411
	(Discontinuidad 	
					(Estado "En bruto de colada")		 
					(Forma "Sinuosa")
					(Espesor "Muy abierta")
					(Profundidad "Pasante")
					(Raiz "Sin raíz")
					(Camino "Paralelo a la superficie")
					(Color "Plateado")	
					(Aspecto ?aspecto)
					(Ubicación ?ubicación)
	)
	
	(test	(or (eq ?aspecto "Grano dendrítico (concoidal)") 
				(eq ?aspecto "Grano grueso")
			)
	)
	
	(test 	(or (eq ?ubicación "Por el cuello del montante")	
				(eq ?ubicación "Otros puntos calientes")
			)
	)
	
	=>
	(assert
		(Diagnostico
			(subfamilia "C-411: Fractura concoidea")
			(causas
					"Para fundición de acero: elevado nivel de nitrógeno y muy alta temperatura de colada"
			)
		)
	)
)

(defrule R-C-412
	(Discontinuidad 	
					(Estado "Luego del tratamiento térmico")		 
					(Forma "Sinuosa")
					(Espesor "Muy apretada")
					(Profundidad "Superficial (hasta 8% del espesor)")
					(Raiz "Aguda")
					(Camino "Perpendicular a la superficie")
					(Color "Negruzco")	
					(Aspecto "Sin grano")
					(Ubicación "Indistinta")
	)=>
	(assert
		(Diagnostico
			(subfamilia "C-412: Corrosión intergranular")
			(causas
					"Para fundición de acero: exceso de tiempo en tratamiento térmico de alta temperatura"
			)
		)
	)
)

(defrule R-E-111
	(PiezaIncompleta 	
					(CumplióConLaFormaBuscadaEnAlgúnMomento "No")		 
					(TipoDeIncompletitud "Faltante")
					(TamañoDelFaltante "Pequeño")
					(UbicaciónFaltante "Solo en esquinas")
					(AspectoDeLaCaraSuperior ?aspectoCaraSuperior)
					(TipoDeFractura "No aplica")
					(AspectoDeLaFractura "No aplica")	
				
	)
	(test	(or (eq ?aspectoCaraSuperior "No aplica") 
				(eq ?aspectoCaraSuperior "Con bordes redondeados")	
			)
	)
	=>
	(assert
		(Diagnostico
			(subfamilia "E-111")
			(causas
				"Metal frío al momento de llenado"
				"Muy baja velocidad de llenado"
				"Acumulación de pintura de molde solo en vértices"
				"Modelo desgastado por erosión"
				"Baja permeabilidad del molde"
			)
		)
	)
)

(defrule R-E-112
	(PiezaIncompleta 	
					(CumplióConLaFormaBuscadaEnAlgúnMomento "No")		 
					(TipoDeIncompletitud "Faltante")
					(TamañoDelFaltante "Pequeño")
					(UbicaciónFaltante "Dispersa")
					(AspectoDeLaCaraSuperior ?aspectoCaraSuperior)
					(TipoDeFractura "No aplica")
					(AspectoDeLaFractura "No aplica")	
				
	)
	(test	(or (eq ?aspectoCaraSuperior "No aplica") 
				(eq ?aspectoCaraSuperior "Con bordes redondeados")
				(eq ?aspectoCaraSuperior "Con bordes definidos (plano recto)")
				(eq ?aspectoCaraSuperior "Con zona central deprimida (tipo olla)")
			)
	)	
	=>
	(assert
		(Diagnostico
			(subfamilia "E-112")
			(causas
				"Mala reparación del molde"
				"Acumulación de pintura por mala aplicación"
				"Modelo deteriorado"
			)
		)
	)
)

(defrule R-E-121
	(PiezaIncompleta 	
					(CumplióConLaFormaBuscadaEnAlgúnMomento "No")		 
					(TipoDeIncompletitud "Faltante")
					(TamañoDelFaltante "Grande")
					(UbicaciónFaltante "En la cara superior")
					(AspectoDeLaCaraSuperior "Con bordes redondeados")
					(TipoDeFractura "No aplica")
					(AspectoDeLaFractura "No aplica")	
				
	)=>
	(assert
		(Diagnostico
			(subfamilia "E-121")
			(causas
				"Metal frío al momento de llenado"
				"Metal oxidado (baja fluidez al momento de llenado)"
				"Muy baja velocidad de llenado"
				"Falta de un sistema de salida de gases"
				"Colada interrumpida"
			)
		)
	)
)

(defrule R-E-122
	(PiezaIncompleta 	
					(CumplióConLaFormaBuscadaEnAlgúnMomento "No")		 
					(TipoDeIncompletitud "Faltante")
					(TamañoDelFaltante "Grande")
					(UbicaciónFaltante "En la cara superior")
					(AspectoDeLaCaraSuperior "Con bordes definidos (plano recto)")
					(TipoDeFractura "No aplica")
					(AspectoDeLaFractura "No aplica")	
				
	)=>
	(assert
		(Diagnostico
			(subfamilia "E-122")
			(causas
				"Insuficiente cantidad de metal líquido en cuchara"
				"Interrupción del llenado por error del operador"
				"Interrupción del llenado por pérdida de metal"
				"Muy baja velocidad de llenado por sección insuficiente de los ataques de llenado"
				"Nivel de la balsa de llenado (basín) próxima o por debajo de la altura de la pieza"
			)
		)
	)
)

(defrule R-E-123
	(PiezaIncompleta 	
					(CumplióConLaFormaBuscadaEnAlgúnMomento "No")		 
					(TipoDeIncompletitud "Faltante")
					(TamañoDelFaltante "Grande")
					(UbicaciónFaltante "En la cara superior")
					(AspectoDeLaCaraSuperior "Con zona central deprimida (tipo olla)")
					(TipoDeFractura "No aplica")
					(AspectoDeLaFractura "No aplica")	
				
	)=>
	(assert
		(Diagnostico
			(subfamilia "E-123")
			(causas
				"Fuga del metal una vez completo el llenado"
				"Falta de sello entre los semi-moldes"
				"Presión metalostática vence el sello de los semi-moldes"
				"Pared de molde lateral rota"
			)
		)
	)
)

(defrule R-E-124
	(PiezaIncompleta 	
					(CumplióConLaFormaBuscadaEnAlgúnMomento "Si")		 
					(TipoDeIncompletitud "Faltante")
					(TamañoDelFaltante "Pequeño")
					(UbicaciónFaltante ?ubicacionFaltante)
					(AspectoDeLaCaraSuperior ?aspectoCaraSuperior)
					(TipoDeFractura "No aplica")
					(AspectoDeLaFractura "No aplica")	
				
	)
	(test	(or (eq ?ubicacionFaltante "No aplica") 
				(eq ?ubicacionFaltante "Solo en esquinas")
				(eq ?ubicacionFaltante "Dispersa")
				(eq ?ubicacionFaltante "En la cara superior")
			)
	)
	(test	(or (eq ?aspectoCaraSuperior "No aplica") 
				(eq ?aspectoCaraSuperior "Con bordes redondeados")
				(eq ?aspectoCaraSuperior "Con bordes definidos (plano recto)")
				(eq ?aspectoCaraSuperior "Con zona central deprimida (tipo olla)")
			)
	)
	=>
	(assert
		(Diagnostico
			(subfamilia "E-124")
			(causas
				"Exceso en la remoción de metal por efecto de granallado"
			)
		)
	)
)

(defrule R-E-125
	(PiezaIncompleta 	
					(CumplióConLaFormaBuscadaEnAlgúnMomento "Si")		 
					(TipoDeIncompletitud "Faltante")
					(TamañoDelFaltante "Grande")
					(UbicaciónFaltante ?ubicacionFaltante)
					(AspectoDeLaCaraSuperior ?aspectoCaraSuperior)
					(TipoDeFractura "No aplica")
					(AspectoDeLaFractura "No aplica")	
				
	)
	(test	(or (eq ?ubicacionFaltante "No aplica") 
				(eq ?ubicacionFaltante "Solo en esquinas")
				(eq ?ubicacionFaltante "Dispersa")
				(eq ?ubicacionFaltante "En la cara superior")
			)
	)
	(test	(or (eq ?aspectoCaraSuperior "No aplica") 
				(eq ?aspectoCaraSuperior "Con bordes redondeados")
				(eq ?aspectoCaraSuperior "Con bordes definidos (plano recto)")
				(eq ?aspectoCaraSuperior "Con zona central deprimida (tipo olla)")
			)
	)
	=>
	(assert
		(Diagnostico
			(subfamilia "E-125")
			(causas
				"Temperatura y tiempo de tratamiento térmico elevados"
			)
		)
	)
)

(defrule R-E-211
	(PiezaIncompleta 	
					(CumplióConLaFormaBuscadaEnAlgúnMomento "Si")		 
					(TipoDeIncompletitud "Fractura")
					(TamañoDelFaltante "No aplica")
					(UbicaciónFaltante "No aplica")
					(AspectoDeLaCaraSuperior "No aplica")
					(TipoDeFractura "De la pieza")
					(AspectoDeLaFractura "No oxidada")	
				
	)=>
	(assert
		(Diagnostico
			(subfamilia "E-211")
			(causas
				"Golpes durante el desmoldeo"
				"Traslado de la pieza descuidado"
			)
		)
	)
)

(defrule R-E-221
	(PiezaIncompleta 	
					(CumplióConLaFormaBuscadaEnAlgúnMomento "Si")		 
					(TipoDeIncompletitud "Fractura")
					(TamañoDelFaltante "No aplica")
					(UbicaciónFaltante "No aplica")
					(AspectoDeLaCaraSuperior "No aplica")
					(TipoDeFractura "De partes de la pieza")
					(AspectoDeLaFractura "No oxidada")	
				
	)=>
	(assert
		(Diagnostico
			(subfamilia "E-221")
			(causas
				"Dimensiones incorrectas de los ataques de colada o salidas de gases"
				"Ubicación incorrecta de los ataques de colada o salidas de gases"
				"Manipulación desde las salidas de gases o ataques de colada durante el desmoldeo"
				"Retiro de salida de gases o ataques de colada por medio de golpes sin entallar por amolado la zona de corte"
			)
		)
	)
)

(defrule R-E-231
	(PiezaIncompleta 	
					(CumplióConLaFormaBuscadaEnAlgúnMomento "Si")		 
					(TipoDeIncompletitud "Fractura")
					(TamañoDelFaltante "No aplica")
					(UbicaciónFaltante "No aplica")
					(AspectoDeLaCaraSuperior "No aplica")
					(TipoDeFractura "De la pieza")
					(AspectoDeLaFractura "Oxidada")	
				
	)=>
	(assert
		(Diagnostico
			(subfamilia "E-231")
			(causas
				"Desmoldeo prematuro de la pieza (a alta temperatura)"
				"Diseño de pieza que acumula altas tensiones internas"
				"Contracciones impedidas por materiales del molde"
			)
		)
	)
)


