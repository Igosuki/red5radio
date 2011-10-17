package com.radioc.controllers;

import java.util.List;

import javax.servlet.ServletException;
import javax.validation.Valid;

import org.apache.commons.lang.StringUtils;
import org.codehaus.jackson.map.util.JSONPObject;
import org.red5.logging.Red5LoggerFactory;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.radioc.beans.PaginatedListImpl;
import com.radioc.controllers.services.EmissionService;
import com.radioc.controllers.services.IntervenantService;
import com.radioc.hbeans.Emission;
import com.radioc.hbeans.Intervenant;

@Controller
@SessionAttributes({ "intervenant" })
@RequestMapping({ "/admin/intervenant" })
public class IntervenantController {
	private static Logger log = Red5LoggerFactory.getLogger(
			IntervenantController.class, "admin");

	@Autowired
	@Qualifier("intervenantService")
	private IntervenantService intervService;

	@Autowired
	@Qualifier("emissionService")
	private EmissionService emService;

	@RequestMapping(value = { "/list" }, method = { org.springframework.web.bind.annotation.RequestMethod.GET })
	public String onList(ModelMap model, @ModelAttribute("pagedList") PaginatedListImpl<Intervenant> pagedList,
			 				@RequestParam(value="page", required=false) String page,
							 @RequestParam(value="sort", required=false) String sort,
							 @RequestParam(value="dir", required=false) String dir) throws ServletException {
		log.debug("onList {}", model);
		try {
			pagedList.updateFromRequest(sort, dir, page);
			this.intervService.paginatedList(pagedList);
			model.put("pagedList", pagedList);
			model.put("paging", Boolean.valueOf(true));
		} catch (Exception e) {
			log.error("Error getting intervenant", e);
			return "/rc/main/index";
		}
		return "intervenant/list";
		
	}

	@RequestMapping(value = { "/save" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST })
	public String onSave(
			@RequestParam(value = "error", required = false) boolean error,
			ModelMap model,
			@ModelAttribute("intervenant") @Valid Intervenant interv,
			BindingResult result) throws ServletException {
		log.debug("onSave {}", model);
		if (result.hasErrors())
			return "intervenant/create";
		try {
			this.intervService.create(interv);
		} catch (Exception e) {
			log.error("Error creating intervenant", e);
			e.getLocalizedMessage();
			model.put("errormess", "db.message.create.error");
			return "intervenant/create";
		}

		return "redirect:/rc/admin/intervenant/show/" + interv.getId();
	}

	@RequestMapping(value = { "/update" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST })
	public String onUpdate(
			@RequestParam(value = "error", required = false) boolean error,
			ModelMap model,
			@ModelAttribute("intervenant") @Valid Intervenant interv,
			BindingResult result) throws ServletException {
		log.debug("onUpdate {}", model);
		if (result.hasErrors())
			return "intervenant/edit";
		try {
			this.intervService.update(interv);
		} catch (Exception e) {
			log.error("Error updating intervenant", e);
			e.getLocalizedMessage();
			model.put("errormess", "db.message.edit.error");
			return "intervenant/edit";
		}

		return "redirect:/rc/admin/intervenant/show/" + interv.getId();
	}

	@RequestMapping(value = { "/create" }, method = { org.springframework.web.bind.annotation.RequestMethod.GET })
	public String onCreate(
			@RequestParam(value = "error", required = false) boolean error,
			ModelMap model,
			@ModelAttribute("intervenant") @Valid Intervenant interv,
			BindingResult result) throws ServletException {
		log.debug("onCreate {}", model);
		model.put("intervenant", Intervenant.createEmpty());
		return "intervenant/create";
	}

	@ModelAttribute("intervenant")
	public Intervenant populateForm() {
		return Intervenant.createEmpty();
	}

	@ModelAttribute("pagedList")
	public PaginatedListImpl<Intervenant> populateInit(){
		return new PaginatedListImpl<Intervenant>(20, "name");
	}
	
	@RequestMapping(value = { "/edit/{id}" }, method = {
			org.springframework.web.bind.annotation.RequestMethod.GET,
			org.springframework.web.bind.annotation.RequestMethod.POST })
	public String onEditWithParam(
			@RequestParam(value = "error", required = false) boolean error,
			ModelMap model,
			@ModelAttribute("intervenant") @Valid Intervenant interv,
			BindingResult result, @PathVariable("id") String id)
			throws ServletException {
		log.debug("onEdit {}", model);
		try {
			if (!StringUtils.isBlank(id)) {
				Intervenant loaded = this.intervService.load(Long.valueOf(id));
				model.put("intervenant", loaded);
			}
		} catch (Exception e) {
			log.error("Error updating intervenant", e);
			e.getLocalizedMessage();
			model.put("errormess", "db.message.edit.error");
			return "intervenant/create";
		}
		return "intervenant/edit";
	}

	@RequestMapping(value = { "/edit" }, method = {
			org.springframework.web.bind.annotation.RequestMethod.GET,
			org.springframework.web.bind.annotation.RequestMethod.POST })
	public String onEdit(
			@RequestParam(value = "error", required = false) boolean error,
			ModelMap model,
			@ModelAttribute("intervenant") @Valid Intervenant interv,
			BindingResult result) throws ServletException {
		log.debug("onEdit {}", model);

		return "intervenant/edit";
	}

	@RequestMapping(value = { "/show/{id}" }, method = { org.springframework.web.bind.annotation.RequestMethod.GET })
	public String onShow(
			@RequestParam(value = "error", required = false) boolean error,
			ModelMap model, @PathVariable("id") Long id)
			throws ServletException {
		Intervenant interv = null;
		log.debug("onShow {}", model);
		try {
			interv = this.intervService.load(id);
			if (interv == null)
				return "redirect:/rc/admin/intervenant/list";
		} catch (Exception e) {
			log.error("Error getting intervenant", e);
			return "redirect:/rc/admin/intervenant/list";
		}
		model.put("intervenant", interv);
		return "intervenant/show";
	}

	@RequestMapping(value = { "/delete" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST })
	public String onDelete(ModelMap model,
			@ModelAttribute("intervenant") Intervenant interv)
			throws ServletException {
		log.debug("onDelete {}", model);
		try {
			this.intervService.delete(interv);
		} catch (Exception e) {
			log.error("Error getting intervenant", e);
			return "redirect:/rc/admin/intervenant/list";
		}
		return "redirect:/rc/admin/intervenant/list";
	}

	@RequestMapping(value = { "/index" }, method = {
			org.springframework.web.bind.annotation.RequestMethod.GET,
			org.springframework.web.bind.annotation.RequestMethod.POST })
	public String onIndex(ModelMap model,
			@ModelAttribute("intervenant") Intervenant interv)
			throws ServletException {
		log.debug("onIndex {}", model);
		return "redirect:/rc/admin/intervenant/list";
	}

	@RequestMapping(value = { "/ajax.json" }, method = { org.springframework.web.bind.annotation.RequestMethod.GET })
	@ResponseBody
	public JSONPObject onAjaxGetIntervenant(
			@RequestParam(value = "name_startsWith", required = true) String term,
			@RequestParam(value = "callback", required = true) String callback) {
		List termSearch = this.intervService.termSearch(term);
		return new JSONPObject(callback, termSearch);
	}

	@RequestMapping({ "/addEm/{em}" })
	public String addEm(ModelMap model,
			@ModelAttribute("intervenant") Intervenant intervenant,
			BindingResult result, @PathVariable("em") Long emId) {
		intervenant.getEmissions().add(this.emService.load(emId));
		return "intervenant/emission";
	}

	@RequestMapping({ "/delEm/{em}" })
	public String delEm(ModelMap model,
			@ModelAttribute("intervenant") Intervenant intervenant,
			BindingResult result, @PathVariable("em") Long emId) {
		intervenant.getEmissions().remove(
				intervenant.getEmissions().indexOf(new Emission(emId)));
		return "intervenant/emission";
	}
}