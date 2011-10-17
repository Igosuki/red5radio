package com.radioc.controllers;

import java.io.IOException;

import javax.servlet.ServletException;

import org.red5.logging.Red5LoggerFactory;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.ImportResource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.radioc.controllers.services.MediaListingService;

@Controller
@RequestMapping({ "/admin" })
@ImportResource({ "classpath*:*/red5-web.properties" })
public class FileListingController {
	private static Logger log = Red5LoggerFactory.getLogger(
			FileListingController.class, "radioc");
	private static MediaListingService mediaService;

	@Value("#{propsfile['webapp.uploadPath']}")
	private String uploadPath;

	@RequestMapping(value = { "/explore" }, method = { org.springframework.web.bind.annotation.RequestMethod.GET })
	public String getList(ModelMap model) throws ServletException, IOException {
		log.debug("handle request");

		model.put("ctxpath", this.uploadPath);
		return "filepanel";
	}

	@RequestMapping(value = { "/medias/list" }, method = { org.springframework.web.bind.annotation.RequestMethod.GET })
	public String getMediaList(ModelMap model) throws ServletException,
			IOException {
		log.debug("handle request");

		model.put("ctxpath", this.uploadPath);
		return "mediaitems";
	}

	@Autowired
	public void setMediaService(
			@Qualifier("mediaListingService") MediaListingService mediaService) {
		mediaService = mediaService;
	}
}