package org.flod.web.service;

import javax.inject.Inject;
import javax.inject.Singleton;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.flod.service.dto.FetchURIresponse;
import org.flod.service.dto.FlodService;

/**
 * 
 * @author Erik van Ingen
 * 
 */
@Path("")
@Singleton
public class FlodWs {

	@Inject
	private FlodService service;

	/**
	 * //www.fao.org/figis/flod/ws/codelist/asfis/code/TUN/uri
	 * 
	 * @param codelist
	 * @param code
	 * @return
	 * @throws Exception
	 */

	// @GET
	// @Path("/codelist/{codelist}/code/{code}/uri")
	// @Produces(MediaType.APPLICATION_JSON)
	// public Response fetchURI(@PathParam("codelist") String codelist, @PathParam("code") String code) {
	// return Response.status(200).entity(service.fetchURI(codelist, code)).build();
	// }

	@GET
	@Path("/codelist/{codelist}/code/{code}/uri")
	@Produces(MediaType.APPLICATION_JSON)
	public FetchURIresponse fetchURI(@PathParam("codelist") String codelist, @PathParam("code") String code) {
		return service.fetchURI(codelist, code);
	}

}