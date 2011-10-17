package com.radioc.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.red5.logging.Red5LoggerFactory;
import org.slf4j.Logger;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class ConfirmController implements Controller {
	private static Logger log = Red5LoggerFactory.getLogger(
			ConfirmController.class, "uploadTest");

	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		log.debug("handle request");

		return new ModelAndView("confirm");
	}

	public ModelAndView doRequest(HttpServletRequest request,
			HttpServletResponse response) {
		return new ModelAndView();
	}
}