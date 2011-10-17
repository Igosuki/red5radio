package com.radioc.ws;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.radioc.controllers.services.MediaItemService;
import com.radioc.hbeans.MediaItem;

@Path("/media")
@Component
@Scope("request")
public class MediaResource {
	
	@Autowired
	@Qualifier("mediaItemsService")
	MediaItemService mediaService;
//
//	@GET
//	@Produces(MediaType.TEXT_PLAIN)
//	@Path("/{id}")
//	public String getHello (@PathVariable String id){
//		return "Hello" + id;
//	}
//	
//	@GET
//	@Produces(MediaType.TEXT_XML)
//	@Path("/{id}")
//	public String getHelloXML (@PathVariable String id){
//		return "<?xml version=\"1.0\"?>"+ "<hello>You said hello, Mr" + id +"</hello>";
//	}
//	
//	@GET
//	@Produces(MediaType.TEXT_HTML)
//	@Path("/{id}")
//	public String getHelloHTML (@PathVariable String id){
//		return "<html> " + "<title>" + "Hello Jersey" + "</title>"
//				+ "<body><h1>" + "Hello Jersey" + "</body></h1>" + "</html> ";
//	}
	
	@GET
	@Produces({MediaType.APPLICATION_JSON}) 
	@Path("json/{id}")
	public MediaItem getMediaJSON (@PathParam("id") String id) {
		return mediaService.get(Long.valueOf(id));
	}
	
	@GET
	@Produces({MediaType.APPLICATION_XML}) 
	@Path("xml/{id}")
	public MediaItem getMediaXML (@PathParam("id") String id){
		return mediaService.get(Long.valueOf(id));
	}
	
}
