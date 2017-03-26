package resource;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

import entity.InforRating;
import entity.Information;
import services.Inforservice;

@Path("/infor")
public class InforResource {

	/*
	 * @Path("/{province}")
	 * 
	 * @GET
	 * 
	 * @Produces(MediaType.APPLICATION_JSON) public List<Information>
	 * findProvince(@PathParam("province") String province) { Inforservice
	 * inforservice = new Inforservice(); System.out.println("so 1"); return
	 * inforservice.searchProvince(province); }
	 */

	/*
	 * @Path("/{ratingRestaurant}")
	 * 
	 * @GET
	 * 
	 * @Produces(MediaType.APPLICATION_JSON) public List<Information>
	 * ratingRes(@QueryParam("province") String province) { Inforservice
	 * inforservice = new Inforservice(); System.out.println("so 1"); return
	 * inforservice.searchProvince(province);
	 * 
	 * }
	 */
	/*
	 * @Path("/searchType")
	 * 
	 * @GET
	 * 
	 * @Produces(MediaType.APPLICATION_JSON) public List<Information>
	 * search(@Context UriInfo uri) { String param =
	 * uri.getRequestUri().getQuery(); String[] words = param.split("=");
	 * Inforservice inforservice = new Inforservice(); // System.out.println(
	 * "param : " + param); return inforservice.search(words[0], words[1]); }
	 */
	
	
	
	
	@Path("/type")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public String search() {
		Inforservice inforservice = new Inforservice();
		return inforservice.listType();
	}
	@Path("/rating")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<InforRating> rating() {
		Inforservice inforservice = new Inforservice();
		return inforservice.rating();
	}
	
	
	

	@Path("/search")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<Information> findDistricAndProvinceAndType(@QueryParam("partner") int partner,
			@QueryParam("province") String province, @QueryParam("district") String distric,
			@QueryParam("type") String type) {
		Inforservice inforservice = new Inforservice();
		if (distric == null && type == null) {
			return inforservice.searchProvince(partner, province);
		} else if (type == null) {
			return inforservice.searchDistrictAndProvince(partner, province, distric);
		} else if (distric == null && type != null) {
			return inforservice.searchTypeAndProvince(partner, province, type);
		} else if (province == null && distric == null) {
			return inforservice.searchType(partner, type);
		} else
			return inforservice.searchDistrictAndProvinceAndType(partner, province, distric, type);
	}

	
	
	
	
	
	
	
	/*
	 * @GET
	 * 
	 * @Produces(MediaType.APPLICATION_JSON) public List<Information>
	 * findType(@QueryParam("type") String type) { Inforservice inforservice =
	 * new Inforservice(); return inforservice.searchProvince(type);
	 * 
	 * }
	 */

	@Path("/{InforID}/room")
	public RoomResource getRoomResource() {
		return new RoomResource();
	}

	@Path("/{InforID}/food")
	public FoodResource getFoodResource() {
		return new FoodResource();
	}
}
