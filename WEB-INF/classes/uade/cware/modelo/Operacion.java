package uade.cware.modelo;

public class Operacion 
{
	private String fecha;
	private FamiliaDefectos familia;
	private Diagnostico diagnostico;
	
	public Operacion(String fecha, FamiliaDefectos familia, Diagnostico diagnostico) {
		super();
		this.fecha = fecha;
		this.familia = familia;
		this.diagnostico = diagnostico;
	}
	
	public Operacion() {}

	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}

	public FamiliaDefectos getFamilia() {
		return familia;
	}

	public void setFamilia(FamiliaDefectos familia) {
		this.familia = familia;
	}

	public Diagnostico getDiagnostico() {
		return diagnostico;
	}

	public void setDiagnostico(Diagnostico diagnostico) {
		this.diagnostico = diagnostico;
	}
}