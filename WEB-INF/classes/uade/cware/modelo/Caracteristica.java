package uade.cware.modelo;

import java.util.List;

public class Caracteristica {
	
	private String nombre;
	private String valor;
	private List<String> valoresPermitidos;
	
	public Caracteristica() {}
	
	public Caracteristica(String nombre, String valor, List <String>valoresPermitidos) {
		super();
		this.nombre = nombre;
		this.valor = valor;
		this.valoresPermitidos = valoresPermitidos;
	}
	
	public String getNombre() {
		return nombre;
	}
	
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	public String getValor() {
		return valor;
	}
	
	public void setValor(String valor) {
		this.valor = valor;
	}
	
	public List<String> getValoresPermitidos() {
		return valoresPermitidos;
	}
	
	public void setValoresPermitidos( List<String> valoresPermitidos) {
		this.valoresPermitidos = valoresPermitidos;
	}

}
