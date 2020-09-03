package uade.cware.modelo;

import java.util.ArrayList;
import java.util.List;

import uade.cware.utilidades.ClipsEngine;

public class FamiliaDefectos {
	
	private String nombre;
	private List<Caracteristica> caracteristicas;
	
	public FamiliaDefectos() {}

	public void inicializarFamilia() {
		List <Caracteristica> caracteristicasFamilia = new ArrayList<Caracteristica>();
		String nombresCaracteristicasRaw = ClipsEngine.getClipsEngine().obtenerNombresCaracteristicas(nombre);
		nombresCaracteristicasRaw = nombresCaracteristicasRaw.replace(")", "").replace("(", "");
		String[] nombresCaracteristicas = nombresCaracteristicasRaw.split(" ");
		for (String nombreCaracteristica : nombresCaracteristicas) 
		{
			String valoresPermitidosRaw = ClipsEngine.getClipsEngine().obtenerValoresPermitidos(nombre, nombreCaracteristica);
			String[] partes = valoresPermitidosRaw.split("\"");
			int cantidadPartes = partes.length;
			List <String> valoresPermitidos = new ArrayList<String>();
			for(int i = 1; i < cantidadPartes ; i+=2)
			{	
				valoresPermitidos.add(partes[i]);
			}
			caracteristicasFamilia.add(new Caracteristica(nombreCaracteristica,"",valoresPermitidos));
		} 
		this.caracteristicas = caracteristicasFamilia;
	}
	
	public String armarHecho()
	{
		String hecho = "(" + nombre;
		for (Caracteristica caracteristica : caracteristicas) {
			hecho = hecho + " (" + caracteristica.getNombre() + " " + "\"" + caracteristica.getValor() + "\"" + ")";
		}
		hecho = hecho + " )";
		return hecho;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public List<Caracteristica> getCaracteristicas() {
		return caracteristicas;
	}

	public void setCaracteristicas(List<Caracteristica> caracteristicas) {
		this.caracteristicas = caracteristicas;
	}
}
