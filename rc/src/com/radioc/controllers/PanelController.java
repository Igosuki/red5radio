package com.radioc.controllers;

import java.io.IOException;

import javax.servlet.ServletException;

import org.red5.logging.Red5LoggerFactory;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.provisioning.JdbcUserDetailsManager;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping({ "/admin" })
public class PanelController {
	private static Logger log = Red5LoggerFactory.getLogger(
			PanelController.class, "admin");
	
	private UserDetailsService userDetailsService;

	@RequestMapping(value = { "/panel" }, method = {
			org.springframework.web.bind.annotation.RequestMethod.GET,
			org.springframework.web.bind.annotation.RequestMethod.POST })
	public String getPanel(ModelMap model) throws ServletException, IOException {
		if (((JdbcUserDetailsManager) userDetailsService).userExists("admin")) {
			log.debug("Creating adminPanel");
			return "panel";
		}

		log.debug("Redirecting to register with user details");
		return "register";
	}

	@Autowired
	public void setUserDetailsService(
			@Qualifier("userDetailsService") UserDetailsService userDetailsService) {
		this.userDetailsService = userDetailsService;
	}
	
	
}