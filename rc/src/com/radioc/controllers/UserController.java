package com.radioc.controllers;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.servlet.ServletException;
import javax.validation.Valid;

import org.red5.logging.Red5LoggerFactory;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.access.prepost.PostAuthorize;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.authentication.dao.SystemWideSaltSource;
import org.springframework.security.core.authority.GrantedAuthorityImpl;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.provisioning.JdbcUserDetailsManager;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.radioc.controllers.services.UserService;
import com.radioc.forms.UserPasswordChangeHolderForm;
import com.radioc.hbeans.Role;
import com.radioc.hbeans.User;
import com.radioc.utils.PasswordGenerator;

@Controller
@RequestMapping({ "/admin/user" })
public class UserController {
	private static Logger log = Red5LoggerFactory.getLogger(
			UserController.class, "admin");
	private static DaoAuthenticationProvider daoAuthenticationProvider;
	private static UserDetailsService userDetailsService;

	@Autowired
	@Qualifier("userService")
	private UserService userService;
	private SystemWideSaltSource saltSource;

	@RequestMapping(value = { "/list" }, method = { RequestMethod.GET })
	@PreAuthorize("hasRole('ROLE_SUPERVISOR')")
	public String onList(ModelMap model) throws ServletException {
		log.debug("onList {}", model);
		try {
			List<User> userList = this.userService.list();
			model.put("paging", Boolean.valueOf(false));
			model.put("list", userList);
		} catch (Exception e) {
			log.error("Error getting users", e);
			return "/rc/main/index";
		}
		return "user/list";
	}

	@RequestMapping(value = { "/save" }, method = { RequestMethod.POST })
	@PreAuthorize("hasRole('ROLE_SUPERVISOR')")
	public String onSave(ModelMap model,
						 @ModelAttribute("user") @Valid com.radioc.hbeans.User user,
						 BindingResult result) throws ServletException {
		log.debug("onSubmit {}", model);

		String username = user.getUserName();
		String password = user.getPassword();

		log.debug("User details: username={} password={}", username, password);
		String salt = this.saltSource.getSystemWideSalt();
		PasswordGenerator passwordGenerator = new PasswordGenerator(password,
				salt);
		String hashedPassword = passwordGenerator.getPassword();
		log.debug("Password hash: {}", hashedPassword);
		if (result.hasErrors())
			return "user/create";
		try {
			if (!((JdbcUserDetailsManager) userDetailsService).userExists(username) && user.getRoles().size() > 0) {
				Collection<GrantedAuthorityImpl> auths = new ArrayList<GrantedAuthorityImpl>();
				auths.add(new GrantedAuthorityImpl(user.getRoles().get(0).getName()));
				org.springframework.security.core.userdetails.User usr = null;
				usr = new org.springframework.security.core.userdetails.User(
						username, hashedPassword, true, true, true, true, auths);
				((JdbcUserDetailsManager) userDetailsService).createUser(usr);

				if (((JdbcUserDetailsManager) userDetailsService)
						.userExists(username)) {
					daoAuthenticationProvider.getUserCache()
							.putUserInCache(usr);
				} else {
					log.warn("User registration failed for: {}", username);
					return "user/create";
				}
				log.warn("User created");
				com.radioc.hbeans.User hUser = this.userService
						.getUserByName(username);
				if (hUser != null) {
					user.setId(hUser.getId());
					this.userService.update(user);
				}
				return "redirect:/rc/admin/user/show/" + hUser.getId();
			}
			log.warn("User {} already exists", username);
			return "user/create";
		} catch (Exception e) {
			log.error("Error during registration", e);
		}

		return "redirect:/rc/admin/user/list";
	}

	@RequestMapping(value = { "/update" }, method = { RequestMethod.POST })
	@PreAuthorize("hasRole('ROLE_SUPERVISOR')")
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

		return "redirect:/rc/admin/user/show/" + user.getId();
	}

	@RequestMapping(value = { "/create" }, method = { RequestMethod.GET })
	@PreAuthorize("hasRole('ROLE_SUPERVISOR')")
	public String onCreate(
			@RequestParam(value = "error", required = false) boolean error,
			ModelMap model,
			@ModelAttribute("user") @Valid com.radioc.hbeans.User user,
			BindingResult result) throws ServletException {
		log.debug("onCreate {}", model);
		model.put("user", com.radioc.hbeans.User.createEmpty());
		model.put("roleValues", this.userService.roleList());
		return "user/create";
	}

	@ModelAttribute("user")
	public com.radioc.hbeans.User populateForm() {
		return com.radioc.hbeans.User.createEmpty();
	}
	
	@ModelAttribute("userform")
	public UserPasswordChangeHolderForm populateUserForm() {
		return UserPasswordChangeHolderForm.createEmpty();
	}

	@RequestMapping(value = { "/edit" }, method = {
			RequestMethod.GET,
			RequestMethod.POST })
	@PostAuthorize("hasRole('ROLE_SUPERVISOR')")
	public String onEdit(
			@RequestParam(value = "error", required = false) boolean error,
			ModelMap model,
			@ModelAttribute("user") @Valid com.radioc.hbeans.User user,
			BindingResult result) throws ServletException {
		log.debug("onEdit {}", model);
		try {
			com.radioc.hbeans.User loaded = this.userService.get(user.getId());
			model.put("user", loaded);
			model.put("roleValues", this.userService.roleList());
		} catch (Exception e) {
			log.error("Error updating user", e);
			e.getLocalizedMessage();
			model.put("errormess", "db.message.edit.error");
			return "user/create";
		}
		return "user/edit";
	}

	@RequestMapping(value = { "/edit/{id}" }, method = {
			RequestMethod.GET,
			RequestMethod.POST })
	@PostAuthorize("hasRole('ROLE_SUPERVISOR')")
	public String onEditWithParam(
			@RequestParam(value = "error", required = false) boolean error,
			ModelMap model,
			@ModelAttribute("user") @Valid com.radioc.hbeans.User user,
			BindingResult result, @PathVariable("id") Long id)
			throws ServletException {
		log.debug("onEdit {}", model);
		try {
			com.radioc.hbeans.User loaded = this.userService.get(id);
			model.put("user", loaded);
			model.put("roleValues", this.userService.roleList());
		} catch (Exception e) {
			log.error("Error updating user", e);
			e.getLocalizedMessage();
			model.put("errormess", "db.message.edit.error");
			return "user/create";
		}
		return "user/edit";
	}

	@RequestMapping(value = { "/show/{id}" }, method = { RequestMethod.GET })
	@PostAuthorize("hasRole('ROLE_SUPERVISOR')")
	public String onShow(
			@RequestParam(value = "error", required = false) boolean error,
			ModelMap model, @PathVariable("id") Long id)
			throws ServletException {
		com.radioc.hbeans.User em = null;
		log.debug("onShow {}", model);
		try {
			em = this.userService.get(id);
			if (em == null)
				return "redirect:/rc/admin/user/list";
		} catch (Exception e) {
			log.error("Error getting user", e);
			return "redirect:/rc/admin/user/list";
		}
		model.put("user", em);
		return "user/show";
	}

	@RequestMapping(value = { "/delete" }, method = { RequestMethod.POST })
	@PreAuthorize("hasRole('ROLE_SUPERVISOR')")
	public String onDelete(ModelMap model,
			@ModelAttribute("user") com.radioc.hbeans.User user)
			throws ServletException {
		log.debug("onDelete {}", model);
		try {
			this.userService.delete(user);
		} catch (Exception e) {
			log.error("Error getting user", e);
			return "redirect:/rc/admin/user/list";
		}
		return "redirect:/rc/admin/user/list";
	}

	@RequestMapping(value = { "/index" }, method = {
			RequestMethod.GET,
			RequestMethod.POST })
	public String onIndex(ModelMap model,
			@ModelAttribute("user") com.radioc.hbeans.User user)
			throws ServletException {
		log.debug("onIndex {}", model);
		return "redirect:/rc/admin/user/list";
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

	@RequestMapping(value = { "/pwdsave" }, method = { RequestMethod.POST })
	@PostAuthorize("hasRole('ROLE_SUPERVISOR')")
	public String onPwdSave(@RequestParam(value = "error", required = false) boolean error,
							ModelMap model, @ModelAttribute("userform") @Valid UserPasswordChangeHolderForm userform,  BindingResult result)
							throws ServletException {
		log.debug("onUpdate {}", model);
		if (result.hasErrors()){
			return "user/apasswordchange";
		}
		try {
			com.radioc.hbeans.User user = null;
			String salt = this.saltSource.getSystemWideSalt();
			PasswordGenerator passwordGenerator = new PasswordGenerator(
					userform.getPassword1(), salt);
			String hashedPassword = passwordGenerator.getPassword();
			user = this.userService.get(Long.valueOf(userform.getUserId()));
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
			return "user/apasswordchange";
		}

		return "redirect:/rc/user/profile";
	}

	@RequestMapping(value = { "/pwdchange/{id}" }, method = { RequestMethod.GET })
	@PostAuthorize("hasRole('ROLE_SUPERVISOR')")
	public String onPwdEdit(@RequestParam(value = "error", required = false) boolean error,
							ModelMap model, @ModelAttribute("userform") UserPasswordChangeHolderForm userform,
							UsernamePasswordAuthenticationToken authentication,
							@PathVariable String id) throws ServletException {
		userform.setUserId(id);
		log.debug("onUpdate {}", model);
		return "user/apasswordchange";
	}
}