package uade.cware.utilidades;
import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;

public class CDN 
{
	private static CDN cdn = null;
	private Cloudinary cloudinary;
	
	public static CDN getCDN()
	{
		if(cdn == null)
			cdn = new CDN();
		return cdn;
	}
	
	private CDN()
	{
		cloudinary = new Cloudinary(ObjectUtils.asMap(
				  "cloud_name", "castingware",
				  "api_key", "455383533598695",
				  "api_secret", "Iv-TwawwBbluHG6JK3GT-iSv7W8"));
		
	}
	
	public String obtenerImgUrl(String subfamilia)
	{
		return cloudinary.url().generate(subfamilia);		
	}
}
