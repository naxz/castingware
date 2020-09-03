package uade.cware.recursos;

import java.util.List;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;
import uade.cware.modelo.FamiliaDefectos;
import uade.cware.modelo.Diagnostico;
import uade.cware.modelo.Operacion;
import uade.cware.modelo.Servicio;

@Path("/")
@Api(value = "/",tags = "Castingware API")
@Produces({ "application/xml" })
public class Recurso 
{
	public Recurso()
	{}
	
	@GET
	@Produces(MediaType.APPLICATION_JSON + ";charset=utf-8")
	@Path("/familia-defectos")
	@ApiOperation(value = "Obtener Familias de defectos implementadas", 
    notes = "Retorna las familias de defectos incluidas en Castingware,"
    		+ " más sus características y posibles valores.", 
    response = FamiliaDefectos.class,
    responseContainer = "List")
	public List<FamiliaDefectos> obtenerFamilias() {
		return Servicio.getServicio().obtenerFamilias();
	}
	
	@POST
	@Consumes(MediaType.APPLICATION_JSON + ";charset=utf-8")
	@Produces(MediaType.APPLICATION_JSON + ";charset=utf-8")
	@Path("/diagnostico/{usuario}")
	@ApiOperation(value = "Obtener diagnostico de un defecto", 
    notes = "Toma como entrada la familia a diagnosticar,"
    		+ " devuelve la subfamilia a la que pertenece "
    		+ "y sus posibles causas. ", 
    response = Diagnostico.class  )
	@ApiResponses(value = {@ApiResponse(code = 400, message = "Request erronea") })
	public Diagnostico obtenerDiagnostico
		( 
			@ApiParam(value = "Familia del defecto con cada una de sus características completas."
					+ " El body se puede obtener copiando una familia del response del método '/familia-defectos' "
					+ "y luego completando los campos 'valor' de cada característica.", required = true) 
			FamiliaDefectos familia
			,@ApiParam(value = "Usuario que solicita el diagnóstico", required = true) 
			@PathParam("usuario") String usuario) 
	{
		return Servicio.getServicio().hacerDiagnostico(familia, usuario);
	}
	
	@GET
	@Produces(MediaType.APPLICATION_JSON + ";charset=utf-8")
	@Path("/log/{usuario}")
	@ApiOperation(value = "Obtener Log de un usuario", 
    notes = "Dado un usuario, devuelve un registro con todas sus operaciones realizadas.", 
    response = Operacion.class,
    responseContainer = "List")
	public List<Operacion> obtenerLog(
			@ApiParam(value = "Usuario que solicita el log", required = true) @PathParam("usuario") String usuario)
	{	
		return Servicio.getServicio().obtenerOperaciones(usuario);
	}
}
