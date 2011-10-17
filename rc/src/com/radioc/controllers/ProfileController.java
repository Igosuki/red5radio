package com.radioc.controllers;

import javax.servlet.ServletException;
import javax.validation.Valid;

import org.red5.logging.Red5LoggerFactory;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.access.prepost.PostAuthorize;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.authentication.dao.SystemWideSaltSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.radioc.controllers.services.UserService;
import com.radioc.forms.UserPasswordChangeHolderForm;
import com.radioc.hbeans.User;
import com.radioc.utils.PasswordGenerator;

@Controller
@RequestMapping({ "/user" })
@SessionAttributes("user")
public class ProfileController {
	private static Logger log = Red5LoggerFactory.getLogger(
			ProfileController.class, "admin");

	@Autowired
	@Qualifier("userService")
	private UserService userService;
	private SystemWideSaltSource saltSource;

	@RequestMapping(value = { "/profile" }, method = { org.springframework.web.bind.annotation.RequestMethod.GET })
	@PreAuthorize("isAuthenticated()")
	public String onShow(
			@RequestParam(value = "error", required = false) boolean error,
			ModelMap model, @ModelAttribute User user,
			UsernamePasswordAuthenticationToken authentication)
			throws ServletException {
		log.debug("onShow {}", model);
		try {
			user = this.userService.getUserByName(authentication.getName());
			if (user == null)
				return "redirect:/rc/main/index";
		} catch (Exception e) {
			log.error("Error getting user", e);
			return "redirect:/rc/main/index";
		}
		model.put("user", user);
		return "user/show";
	}

	@RequestMapping(value = { "/edit" }, method = {
			RequestMethod.GET })
	@PostAuthorize("isAuthenticated()")
	public String onEdit(ModelMap model,
						 UsernamePasswordAuthenticationToken authentication) throws ServletException {
		log.debug("onEdit {}", model);
		try {
			com.radioc.hbeans.User loaded = this.userService.getUserByName(authentication.getName());
			model.put("user", loaded);
		} catch (Exception e) {
			log.error("Error updating user", e);
			e.getLocalizedMessage();
			model.put("errormess", "db.message.edit.error");
			return "user/edit";
		}
		return "user/edit";
	}
	
	
	@RequestMapping(value = { "/update" }, method = { RequestMethod.POST })
	@PreAuthorize("isAuthenticated()")
	public String onUpdate(
			@RequestParam(value = "error", required = false) boolean error,
			ModelMap model,
			@ModelAttribute("user") @Valid com.radioc.hbeans.User user,
			BindingResult result) throws ServletException {
		log.debug("onUpdate {}", model);
		if (result.hasErrors())
			return "user/edit";
		try {
			User user2 = this.userService.get(user.getId());
			user.setPassword(user2.getPassword());
			this.userService.update(user);
		} catch (Exception e) {
			log.error("Error updating user", e);
			e.getLocalizedMessage();
			model.put("errormess", "db.message.edit.error");
			return "user/edit";
		}

		return "redirect:/rc/user/profile";
	}
	
	@ModelAttribute("userform")
	public UserPasswordChangeHolderForm populateUserForm() {
		return UserPasswordChangeHolderForm.createEmpty();
	}
	
	@ModelAttribute("user")
	public User populateUser() {
		return User.createEmpty();
	}
	
	@Autowired
	public void setSaltSource(
			@Qualifier("saltSource") SystemWideSaltSource saltSource) {
		this.saltSource = saltSource;
	}
	
	@RequestMapping(value = { "/pwdsave" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST })
	@PreAuthorize("isAuthenticated()")
	public String onPwdSave(@RequestParam(value = "error", required = false) boolean error,
							ModelMap model, @ModelAttribute("userform") @Valid UserPasswordChangeHolderForm userform, BindingResult result,
							UsernamePasswordAuthenticationToken authentication)
			throws ServletException {
		log.debug("onUpdate {}", model);
		if ((result.hasErrors()))
			return "user/passwordchange";
		try {
			User user = null;
			String salt = this.saltSource.getSystemWideSalt();
			PasswordGenerator passwordGenerator = new PasswordGenerator(
					userform.getPassword1(), salt);
			String hashedPassword = passwordGenerator.getPassword();
			user = this.userService.getUserByName(authentication.getName());
			if (user == null) {
				return "redirect:/rc/main/index";
			}
			user.setPassword(hashedPassword);
			log.debug("Password hash: {}", hashedPassword);
			this.userService.update(user);
		} catch (Exception e) {
			log.error("Error updating user", e);
			e.getLocalizedMessage();
			model.put("errormess", "db.message.edit.error");
			return "user/passwordchange";
		}

		return "redirect:/rc/user/profile";
	}

	@RequestMapping(value = { "/pwdchange" }, method = { org.springframework.web.bind.annotation.RequestMethod.GET })
	@PreAuthorize("isAuthenticated()")
	public String onPwdEdit(@RequestParam(value = "error", required = false) boolean error,
							ModelMap model, @ModelAttribute("userform") UserPasswordChangeHolderForm userform,
							UsernamePasswordAuthenticationToken authentication) throws ServletException {
		log.debug("onUpdate {}", model);
		User user = this.userService.getUserByName(authentication.getName());
		userform.setUserId(user.getId().toString());
		return "user/passwordchange";
	}
}