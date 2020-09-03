package uade.cware.utilidades;

import net.sf.clipsrules.jni.Environment;
import net.sf.clipsrules.jni.FactAddressValue;
import net.sf.clipsrules.jni.MultifieldValue;
import uade.cware.modelo.Diagnostico;
import uade.cware.modelo.FamiliaDefectos;

import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

public class ClipsEngine 
{
	private static ClipsEngine clipsEngine = null;
	private Environment clipsEnvironment;

	public static ClipsEngine getClipsEngine()
	{
		if(clipsEngine == null)
			clipsEngine = new ClipsEngine();
		return clipsEngine;
	}
		
	private ClipsEngine()
	{		
		System.out.println("Creando Environment Clips ...");
		clipsEnvironment = new Environment();
		System.out.println("Environment Creado");
		System.out.println("Cargando recursos: ");
		ClassLoader classLoader = getClass().getClassLoader();
		File BC = new File(classLoader.getResource("/uade/cware/clips/SEDDPM.clp").getFile());
		System.out.println("SEDDPM.clp encontrado");
		try {
			clipsEnvironment.load(URLDecoder.decode(BC.getAbsolutePath(), "UTF-8"));
			System.out.println("SEDDPM.clp absolute path: "+ BC.getAbsolutePath());
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}	
		System.out.println("Hechos:");
		System.out.println(clipsEnvironment.eval("(facts)"));
		System.out.println("Rules:");
		System.out.println(clipsEnvironment.eval("(list-defrules)"));
		System.out.println("Templates:");
		System.out.println(clipsEnvironment.eval("(list-deftemplates)"));
	}
	
	public String obtenerNombresCaracteristicas (String familia)
	{
		System.out.println("Evaluando: " + "(deftemplate-slot-names "+ familia +  ")");
		return clipsEnvironment.eval("(deftemplate-slot-names "+ familia +  ")").toString();
	}
	
	public String obtenerValoresPermitidos(String familia, String caracteristica)
	{
		System.out.println("Evaluando: "+ "(deftemplate-slot-allowed-values "+ familia + " " + caracteristica + ")");
		return clipsEnvironment.eval("(deftemplate-slot-allowed-values "+ familia + " " + caracteristica + ")").toString();
	}
	
	public Diagnostico diagnosticar(String hecho)
	{
		Diagnostico diagnostico;
		System.out.println("Evaluo el hecho: " + hecho);
		clipsEnvironment.reset();
		clipsEnvironment.eval("(assert " + hecho + ")");
		clipsEnvironment.run();
		String evaluarString = "(find-all-facts ((?x Diagnostico)) TRUE)";
		MultifieldValue factNumber = (MultifieldValue) clipsEnvironment.eval(evaluarString);
		List <String> causasArray = new ArrayList<String>();
		try{
			FactAddressValue factValue = (FactAddressValue) factNumber.get(0);
			String subfamilia = factValue.getFactSlot("subfamilia").toString().replaceAll("\"","");
			String causas = factValue.getFactSlot("causas").toString();
			String[] partes = causas.split("\"");
			int cantidadPartes = partes.length;
			int nroCausa = 1;
			for(int i = 1; i < cantidadPartes ; i+=2)
			{
				causasArray.add(String.valueOf(nroCausa) + ". " + partes[i]);
				nroCausa += 1;
			}
			diagnostico = new Diagnostico(subfamilia, causasArray);
		}catch (Exception e){
			causasArray.add("Las características ingresadas no coinciden con ninguna sub-familia definida");
			diagnostico = new Diagnostico("No definida", causasArray);
		}
		return diagnostico;
	}

	public List<FamiliaDefectos> obtenerFamilias() {
		List<FamiliaDefectos> familias = new ArrayList<FamiliaDefectos>();
		try {
			ClassLoader classLoader = getClass().getClassLoader();
			File BC = new File(classLoader.getResource("/uade/cware/clips/familias.json").getFile());
			Gson gson = new Gson();
			familias = gson.fromJson(new FileReader(URLDecoder.decode(BC.getAbsolutePath(), "UTF-8")),
					new TypeToken<List<FamiliaDefectos>>() {}.getType());			
		} catch (IOException e) {
			e.printStackTrace();
		}
		for (FamiliaDefectos familia : familias) {
			familia.inicializarFamilia();
		}
		return familias;
	}
}
