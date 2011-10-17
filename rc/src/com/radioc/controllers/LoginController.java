package com.radioc.controllers;

import org.red5.logging.Red5LoggerFactory;
import org.slf4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping({ "/login" })
public class LoginController {
	private static Logger log = Red5LoggerFactory.getLogger(
			LoginController.class, "admin");

	@RequestMapping(value = { "/", "/login" }, method = { org.springframework.web.bind.annotation.RequestMethod.GET })
	public String getLoginPage(
			@RequestParam(value = "error", required = false) boolean error,
			ModelMap model) {
		log.debug("Received request to show login page");

		if (error) {
			model.put("error", "Mot de passe ou nom d'utilisateur erroné !");
		} else
			model.put("error", "");

		return "login";
	}

	@RequestMapping(value = { "/login-alert" }, method = { org.springframework.web.bind.annotation.RequestMethod.GET })
	public String getLoginALertPage(ModelMap model) {
		log.debug("Received request to show login alert page");

		model.put(
				"error",
				"You can only log-in once! Either you wait for you session to expire or clear your browser's cache or manually log-out!");

		return "login-alert-page";
	}

	@RequestMapping(value = { "/denied" }, method = { org.springframework.web.bind.annotation.RequestMethod.GET })
	public String getDeniedPage() {
		log.debug("Received request to show denied page");

		return "deniedpage";
	}
}