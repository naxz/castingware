package uade.cware.modelo;

import java.util.List;

import uade.cware.utilidades.CDN;


public class Diagnostico {

	private String subfamilia;
	private List <String> causas;
	private String imagenUrl;
	
	public Diagnostico() {}

	public Diagnostico(String subfamilia, List <String> causas) {
		this.subfamilia = subfamilia;
		this.causas = causas;
		if(this.subfamilia.equals("No definida"))
			imagenUrl = "No definida";
		else
			this.imagenUrl = CDN.getCDN().obtenerImgUrl(subfamilia);
	}

	public String getSubfamilia() {
		return subfamilia;
	}
	
	public void setSubfamilia(String subfamilia) {
		this.subfamilia = subfamilia;
	}
	
	public List <String> getCausas() {
		return causas;
	}
	
	public void setCausas(List <String> causas) {
		this.causas = causas;
	}

	public String getImagenUrl() {
		return imagenUrl;
	}

	public void setImagenUrl(String imagenUrl) {
		this.imagenUrl = imagenUrl;
	}
	
}
