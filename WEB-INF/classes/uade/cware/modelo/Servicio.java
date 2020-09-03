package uade.cware.modelo;

import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import uade.cware.utilidades.ClipsEngine;

public class Servicio {
	private static Servicio servicio;
	private List<FamiliaDefectos> familiasDefectos;

	public static Servicio getServicio()
	{
		if (servicio == null)
			servicio = new Servicio();
		return servicio;
	}
	
	private Servicio()
	{
		familiasDefectos =  ClipsEngine.getClipsEngine().obtenerFamilias();
	}
	
	public List<FamiliaDefectos> obtenerFamilias()
	{
		return familiasDefectos;
	}

	public Diagnostico hacerDiagnostico(FamiliaDefectos familia, String usuario) {
		Diagnostico diagnostico = ClipsEngine.getClipsEngine().diagnosticar(familia.armarHecho());
		loguearOperacion (diagnostico, usuario, familia);
		return diagnostico;
	}

	private void loguearOperacion(Diagnostico diagnostico, String usuario, FamiliaDefectos familia) 
	{ 
		final Path logs = Paths.get(System.getProperty("catalina.home"), "logsCastingware");
		if (!Files.exists(logs))
		{
			try {
				Files.createDirectory(logs);
			} catch (IOException e) {
				e.printStackTrace();}		
		}
		try
    	{	
			String fecha = new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date());
			Operacion operacion = new Operacion(fecha, familia, diagnostico);
			List <Operacion> operaciones = new ArrayList<Operacion>();
			if (new File(logs + "/" + usuario + ".json").exists())
			{
				Gson gson = new Gson();
				operaciones = gson.fromJson(new FileReader(logs + "/" + usuario + ".json"),
						new TypeToken<List<Operacion>>(){}.getType());
			}
			operaciones.add(operacion);
			Gson gson = new Gson();
			FileWriter fileToWrite = new FileWriter(logs + "/" + usuario + ".json",false);
			gson.toJson(operaciones, fileToWrite);
			fileToWrite.flush();
			fileToWrite.close();  
    	}catch (Exception e) {
    		e.printStackTrace();
    	}  
	}

	public List<Operacion> obtenerOperaciones(String usuario)
	{
		List <Operacion> operaciones = new ArrayList<Operacion>();
		try
		{
			final java.nio.file.Path logs = Paths.get(System.getProperty("catalina.home"), "logsCastingware");
			if (new File(logs + "/" + usuario + ".json").exists())
			{
				Gson gson = new Gson();
				operaciones = gson.fromJson(new FileReader(logs + "/" + usuario + ".json"),
						new TypeToken<List<Operacion>>(){}.getType());
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return operaciones;
	}	
}
