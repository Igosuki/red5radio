package com.radioc.controllers;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping({ "/main" })
public class MainController {
	protected static Logger logger = Logger.getLogger("controller");

	@RequestMapping(value = { "/index" }, method = { org.springframework.web.bind.annotation.RequestMethod.GET })
	public String getCommonPage() {
		logger.debug("Received request to show common page");
		return "index";
	}

	@RequestMapping(value = { "/contact" }, method = { org.springframework.web.bind.annotation.RequestMethod.GET })
	public String getContacts() {
		logger.debug("Received request to show common page");
		return "contact";
	}

	@RequestMapping(value = { "/admin" }, method = { org.springframework.web.bind.annotation.RequestMethod.GET })
	public String getAdminPage() {
		logger.debug("Received request to show admin page");

		return "admin";
	}
	
	@RequestMapping(value = { "/nf" }, method = { org.springframework.web.bind.annotation.RequestMethod.GET })
	public String get404() {
		logger.debug("Received request to show 404 page");
		return "pagenotfound";
	}
	
	@RequestMapping(value = { "/error" }, method = { org.springframework.web.bind.annotation.RequestMethod.GET })
	public String get505() {
		logger.debug("Received request to show 505 page");
		return "pageerror";
	}
	
	@RequestMapping(value = { "/exc" }, method = { org.springframework.web.bind.annotation.RequestMethod.GET })
	public String getException() {
		logger.debug("Received request to show exception page");
		return "exception";
	}
	
}