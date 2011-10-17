package com.radioc.controllers;

import java.beans.PropertyEditorSupport;
import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.validation.Valid;

import org.codehaus.jackson.map.util.JSONPObject;
import org.red5.logging.Red5LoggerFactory;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
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
import com.radioc.utils.Utils;

@Controller
@SessionAttributes({ "emission"})
@RequestMapping({ "/admin/emission" })
public class EmissionController {
	private static Logger log = Red5LoggerFactory.getLogger(
			EmissionController.class, "admin");

	@Autowired
	@Qualifier("emissionService")
	private EmissionService emService;

	@Autowired
	@Qualifier("intervenantService")
	private IntervenantService intervService;

	@InitBinder
	public void binder(WebDataBinder binder) {
		binder.registerCustomEditor(Time.class, "emtime",
				new PropertyEditorSupport() {
					public void setAsText(String value) {
						try {
							setValue(new Time(new SimpleDateFormat("hh:mm")
									.parse(value).getTime()));
						} catch (ParseException e) {
							setValue(null);
						}
					}

					public String getAsText() {
						if (getValue() != null) {
							return new SimpleDateFormat("hh:mm")
									.format((Time) getValue());
						}
						return "";
					}
				});
		binder.registerCustomEditor(Date.class, new PropertyEditorSupport() {
			public void setAsText(String value) {
				try {
					setValue(new SimpleDateFormat("dd/MM/yyyy hh:mm")
							.parse(value));
				} catch (ParseException e) {
					setValue(null);
				}
			}

			public String getAsText() {
				if (getValue() != null) {
					return new SimpleDateFormat("dd/MM/yyyy hh:mm")
							.format((Date) getValue());
				}
				return "";
			}
		});
	}

	@RequestMapping(value = { "/list" }, method = { org.springframework.web.bind.annotation.RequestMethod.GET })
	public String onList(ModelMap model, @ModelAttribute("pagedList") PaginatedListImpl<Emission> pagedList,
						 @RequestParam(value="page", required=false) String page,
						 @RequestParam(value="sort", required=false) String sort,
						 @RequestParam(value="dir", required=false) String dir) throws ServletException {
		log.debug("onList {}", model);
		try {
			pagedList.updateFromRequest(sort, dir, page);
			this.emService.paginatedList(pagedList);
//			List emList = this.emService.list();
//			model.put("list", emList);
			model.put("pagedList", pagedList);
			model.put("paging", Boolean.valueOf(true));
		} catch (Exception e) {
			log.error("Error getting emission", e);
			return "/rc/main/index";
		}
		return "emission/list";
	}

	@RequestMapping(value = { "/save" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST })
	public String onSave(
			@RequestParam(value = "error", required = false) boolean error,
			ModelMap model, @ModelAttribute("emission") @Valid Emission em,
			BindingResult result) throws ServletException {
		log.debug("onSave {}", model);
		if (result.hasErrors())
			return "emission/create";
		try {
			this.emService.create(em);
		} catch (Exception e) {
			log.error("Error creating emission", e);
			e.getLocalizedMessage();
			model.put("errormess", "db.message.create.error");
			return "emission/create";
		}

		return "redirect:/rc/admin/emission/show/" + em.getId();
	}

	@RequestMapping(value = { "/update" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST })
	public String onUpdate(
			@RequestParam(value = "error", required = false) boolean error,
			ModelMap model, @ModelAttribute("emission") @Valid Emission em,
			BindingResult result) throws ServletException {
		log.debug("onUpdate {}", model);
		if (result.hasErrors())
			return "emission/edit";
		try {
			this.emService.update(em);
		} catch (Exception e) {
			log.error("Error updating emission", e);
			e.getLocalizedMessage();
			model.put("errormess", "db.message.edit.error");
			return "emission/edit";
		}

		return "redirect:/rc/admin/emission/show/" + em.getId();
	}

	@RequestMapping(value = { "/create" }, method = { org.springframework.web.bind.annotation.RequestMethod.GET })
	public String onCreate(
			@RequestParam(value = "error", required = false) boolean error,
			ModelMap model, @ModelAttribute("emission") @Valid Emission em,
			BindingResult result) throws ServletException {
		log.debug("onCreate {}", model);
		model.put("emission", Emission.createEmpty());
		return "emission/create";
	}

	@ModelAttribute("emission")
	public Emission populateForm() {
		return Emission.createEmpty();
	}
	
	@ModelAttribute("pagedList")
	public PaginatedListImpl<Emission> populateInit(){
		return new PaginatedListImpl<Emission>(20, "name");
	}
	
	@RequestMapping(value = { "/edit" }, method = {
			org.springframework.web.bind.annotation.RequestMethod.GET,
			org.springframework.web.bind.annotation.RequestMethod.POST })
	public String onEdit(
			@RequestParam(value = "error", required = false) boolean error,
			ModelMap model, @ModelAttribute("emission") @Valid Emission em,
			BindingResult result) throws ServletException {
		log.debug("onEdit {}", model);

		return "emission/edit";
	}

	@RequestMapping(value = { "/edit/{id}" }, method = {
			org.springframework.web.bind.annotation.RequestMethod.GET,
			org.springframework.web.bind.annotation.RequestMethod.POST })
	public String onEditWithParam(
			@RequestParam(value = "error", required = false) boolean error,
			ModelMap model, @ModelAttribute("emission") @Valid Emission em,
			BindingResult result, @PathVariable("id") Long id)
			throws ServletException {
		log.debug("onEdit {}", model);
		try {
			Emission loaded = this.emService.load(id);
			model.put("emission", loaded);
		} catch (Exception e) {
			log.error("Error updating emission", e);
			e.getLocalizedMessage();
			model.put("errormess", "db.message.edit.error");
			return "emission/create";
		}
		return "emission/edit";
	}

	@RequestMapping(value = { "/show/{id}" }, method = { org.springframework.web.bind.annotation.RequestMethod.GET })
	public String onShow(
			@RequestParam(value = "error", required = false) boolean error,
			ModelMap model, @PathVariable("id") Long id)
			throws ServletException {
		Emission em = null;
		log.debug("onShow {}", model);
		try {
			em = this.emService.load(id);
			if (em == null)
				return "redirect:/rc/admin/emission/list";
		} catch (Exception e) {
			log.error("Error getting emission", e);
			return "redirect:/rc/admin/emission/list";
		}
		model.put("emission", em);
		return "emission/show";
	}

	@RequestMapping(value = { "/delete" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST })
	public String onDelete(ModelMap model,
			@ModelAttribute("emission") Emission em) throws ServletException {
		log.debug("onDelete {}", model);
		try {
			this.emService.delete(em);
		} catch (Exception e) {
			log.error("Error getting emission", e);
			return "redirect:/rc/admin/emission/list";
		}
		return "redirect:/rc/admin/emission/list";
	}

	@RequestMapping(value = { "/index" }, method = {
			org.springframework.web.bind.annotation.RequestMethod.GET,
			org.springframework.web.bind.annotation.RequestMethod.POST })
	public String onIndex(ModelMap model,
			@ModelAttribute("emission") Emission em) throws ServletException {
		log.debug("onIndex {}", model);
		return "redirect:/rc/admin/emission/list";
	}

	@RequestMapping(value = { "/ajax.json" }, method = { org.springframework.web.bind.annotation.RequestMethod.GET })
	@ResponseBody
	public JSONPObject onAjaxGetIntervenant(
			@RequestParam(value = "name_startsWith", required = true) String term,
			@RequestParam(value = "callback", required = true) String callback) {
		List termSearch = this.emService.termSearch(term);
		return new JSONPObject(callback, termSearch);
	}

	@RequestMapping({ "/addIm/{im}" })
	public String addEm(ModelMap model,
			@ModelAttribute("emission") Emission emission,
			BindingResult result, @PathVariable("im") Long imId) {
		emission.getIntervenants().add(this.intervService.load(imId));
		return "emission/intervenant";
	}

	@RequestMapping({ "/delIm/{im}" })
	public String delIm(ModelMap model,
			@ModelAttribute("emission") Emission emission,
			BindingResult result, @PathVariable("im") Long imId) {
		emission.getIntervenants().remove(
				emission.getIntervenants().indexOf(new Intervenant(imId)));
		return "emission/intervenant";
	}

	@RequestMapping({ "/addSp/{im}" })
	public String addSupp(ModelMap model,
			@ModelAttribute("emission") Emission emission,
			BindingResult result, @PathVariable("im") Long imId) {
		emission.getSuppleants().add(this.intervService.load(imId));
		return "emission/suppleants";
	}

	@RequestMapping({ "/delSp/{im}" })
	public String delSupp(ModelMap model,
			@ModelAttribute("emission") Emission emission,
			BindingResult result, @PathVariable("im") Long imId) {
		emission.getSuppleants().remove(
				emission.getSuppleants().indexOf(new Intervenant(imId)));
		return "emission/suppleants";
	}
}