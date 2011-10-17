package com.radioc.controllers;

import java.util.ArrayList;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.validation.Valid;

import org.red5.logging.Red5LoggerFactory;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.authentication.dao.SystemWideSaltSource;
import org.springframework.security.core.authority.GrantedAuthorityImpl;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.provisioning.JdbcUserDetailsManager;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.radioc.beans.UserDetails;
import com.radioc.forms.UserForm;
import com.radioc.utils.PasswordGenerator;

@Controller
@RequestMapping({ "/register" })
public class RegisterUserController {
	private static Logger log = Red5LoggerFactory.getLogger(
			RegisterUserController.class, "admin");
	private static DaoAuthenticationProvider daoAuthenticationProvider;
	private UserDetailsService userDetailsService;
	private SystemWideSaltSource saltSource;

	@RequestMapping(value = { "/submit" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST })
	public String onSubmit(
			@RequestParam(value = "error", required = false) boolean error,
			ModelMap model, @ModelAttribute @Valid UserForm user,
			BindingResult result) throws ServletException {
		log.debug("onSubmit {}", model);

		String salt = this.saltSource.getSystemWideSalt();
		String username = user.getUsername();
		String password = user.getPassword();

		if (error) {
			model.put("error",
					"You have entered an invalid username or password!");
		} else
			model.put("error", "");

		log.debug("User details: username={} password={}", username, password);
		PasswordGenerator passwordGenerator = new PasswordGenerator(password,
				salt);
		String hashedPassword = passwordGenerator.getPassword();
		log.debug("Password hash: {}", hashedPassword);
		try {
			if (!((JdbcUserDetailsManager) userDetailsService)
					.userExists(username)) {
				Collection<GrantedAuthorityImpl> auths = new ArrayList<GrantedAuthorityImpl>();
				if (username.equals("admin"))
					auths.add(new GrantedAuthorityImpl("ROLE_SUPERVISOR"));
				else {
					auths.add(new GrantedAuthorityImpl("ROLE_USER"));
				}
				User usr = new User(username, hashedPassword, true, true, true,
						true, auths);
				((JdbcUserDetailsManager) userDetailsService).createUser(usr);

				if (((JdbcUserDetailsManager) userDetailsService)
						.userExists(username)) {
					daoAuthenticationProvider.getUserCache()
							.putUserInCache(usr);
				} else
					log.warn("User registration failed for: {}", username);
			} else {
				log.warn("User {} already exists", username);
				return "register";
			}
		} catch (Exception e) {
			log.error("Error during registration", e);
		}

		return "login";
	}

	@RequestMapping(value = { "/", "" }, method = { org.springframework.web.bind.annotation.RequestMethod.GET })
	public String getRegistration(
			@RequestParam(value = "error", required = false) boolean error,
			ModelMap model) throws ServletException {
		if (error) {
			model.put("error",
					"You have entered an invalid username or password!");
		} else
			model.put("error", "");

		model.put("user", new UserDetails());
		return "register";
	}

	@Autowired
	public void setDaoAuthenticationProvider(
			@Qualifier("daoAuthenticationProvider") DaoAuthenticationProvider value) {
		daoAuthenticationProvider = value;
	}

	@Autowired
	public void setSaltSource(
			@Qualifier("saltSource") SystemWideSaltSource saltSource) {
		this.saltSource = saltSource;
	}

	@Autowired
	public void setUserDetailsService(
			@Qualifier("userDetailsService") UserDetailsService userDetailsService) {
		this.userDetailsService = userDetailsService;
	}
}