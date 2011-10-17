package com.radioc.controllers;

import java.beans.PropertyEditorSupport;
import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.validation.Valid;

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

import com.radioc.beans.PaginatedListImpl;
import com.radioc.controllers.services.EmissionService;
import com.radioc.controllers.services.MediaItemService;
import com.radioc.hbeans.MediaItem;

@Controller
@RequestMapping({ "/admin/media" })
public class MediaItemsController {
	private static Logger log = Red5LoggerFactory.getLogger(
			MediaItemsController.class, "admin");

	@Autowired
	@Qualifier("mediaItemsService")
	private MediaItemService miService;

	@Autowired
	@Qualifier("emissionService")
	private EmissionService emService;

	@InitBinder
	public void binder(WebDataBinder binder) {
		binder.registerCustomEditor(Time.class, "duration",
			new PropertyEditorSupport() {
				public void setAsText(String value) {
					try {
						setValue(new Time(new SimpleDateFormat("hh:mm:ss")
								.parse(value).getTime()));
					} catch (ParseException e) {
						setValue(null);
					}
				}

				public String getAsText() {
					if (getValue() != null) {
						return new SimpleDateFormat("hh:mm:ss")
								.format((Time) getValue());
					}
					return "";
				}
			}
		);
		binder.registerCustomEditor(Date.class, "pubDate",
			new PropertyEditorSupport() {
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
			}
		);
	}

	@RequestMapping(value = { "/list" }, method = { org.springframework.web.bind.annotation.RequestMethod.GET })
	public String onList(ModelMap model, @ModelAttribute("pagedList") PaginatedListImpl<MediaItem> pagedList,
						 @RequestParam(value="page", required=false) String page,
						 @RequestParam(value="sort", required=false) String sort,
						 @RequestParam(value="dir", required=false) String dir) throws ServletException {
		log.debug("onList {}", model);
		try {
			pagedList.updateFromRequest(sort, dir, page);
			this.miService.paginatedList(pagedList);
			//List emList = this.miService.list();
			model.put("paging", Boolean.valueOf(true));
			model.put("pagedList", pagedList);
		} catch (Exception e) {
			log.error("Error getting mediaItem", e);
			return "/rc/main/index";
		}
		return "mediaitem/list";
	}

	@RequestMapping(value = { "/save" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST })
	public String onSave(
			@RequestParam(value = "error", required = false) boolean error,
			ModelMap model, @ModelAttribute("mediaItem")  @Valid MediaItem mi,
			BindingResult result) throws ServletException {
		
		log.debug("onSave {}", model);
		if(mi.getEmission() != null && mi.getEmission().getId() != null){
			mi.setEmission(this.emService.load(mi.getEmission().getId()));
		}
		if (result.hasErrors())
			return "mediaitem/create";
		try {
			this.miService.create(mi);
		} catch (Exception e) {
			log.error("Error creating mediaItem", e);
			e.getLocalizedMessage();
			model.put("errormess", "db.message.create.error");
			return "mediaitem/create";
		}

		return "redirect:/rc/admin/media/show/" + mi.getId();
	}

	@RequestMapping(value = { "/update" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST })
	public String onUpdate(
			@RequestParam(value = "error", required = false) boolean error,
			ModelMap model, @ModelAttribute("mediaItem") @Valid MediaItem mi,
			BindingResult result) throws ServletException {
		log.debug("onUpdate {}", model);
		if (result.hasErrors())
			return "mediaitem/edit";
		try {
			this.miService.update(mi);
		} catch (Exception e) {
			log.error("Error updating mediaItem", e);
			e.getLocalizedMessage();
			model.put("errormess", "db.message.edit.error");
			return "mediaitem/edit";
		}

		return "redirect:/rc/admin/media/show/" + mi.getId();
	}

	@RequestMapping(value = { "/create" }, method = { org.springframework.web.bind.annotation.RequestMethod.GET })
	public String onCreate(
			@RequestParam(value = "error", required = false) boolean error,
			ModelMap model, @ModelAttribute("mediaItem") @Valid MediaItem mi,
			BindingResult result) throws ServletException {
		log.debug("onCreate {}", model);
		model.put("mediaItem", MediaItem.createEmpty());
		return "mediaitem/create";
	}

	@ModelAttribute("mediaItem")
	public MediaItem populateForm() {
		return MediaItem.createEmpty();
	}

	@ModelAttribute("pagedList")
	public PaginatedListImpl<MediaItem> populateInit(){
		return new PaginatedListImpl<MediaItem>(20, "title");
	}
	
	@RequestMapping(value = { "/edit" }, method = {
			org.springframework.web.bind.annotation.RequestMethod.GET,
			org.springframework.web.bind.annotation.RequestMethod.POST })
	public String onEdit(
			@RequestParam(value = "error", required = false) boolean error,
			ModelMap model, @ModelAttribute("mediaItem") @Valid MediaItem mi,
			BindingResult result) throws ServletException {
		log.debug("onEdit {}", model);
		try {
			if (mi != null)
				log.debug("Editing media item : " + mi.getId());
		} catch (Exception e) {
			log.error("Error updating mediaItem", e);
			e.getLocalizedMessage();
			model.put("errormess", "db.message.edit.error");
			return "mediaitem/create";
		}
		return "mediaitem/edit";
	}

	@RequestMapping(value = { "/edit/{id}" }, method = {
			org.springframework.web.bind.annotation.RequestMethod.GET,
			org.springframework.web.bind.annotation.RequestMethod.POST })
	public String onEditWithParam(
			@RequestParam(value = "error", required = false) boolean error,
			ModelMap model, @ModelAttribute("mediaItem") @Valid MediaItem mi,
			BindingResult result, @PathVariable("id") Long id)
			throws ServletException {
		log.debug("onEdit {}", model);
		try {
			MediaItem loaded = this.miService.load(id);
			model.put("mediaItem", loaded);
		} catch (Exception e) {
			log.error("Error updating mediaItem", e);
			e.getLocalizedMessage();
			model.put("errormess", "db.message.edit.error");
			return "mediaitem/create";
		}
		return "mediaitem/edit";
	}

	@RequestMapping(value = { "/show/{id}" }, method = { org.springframework.web.bind.annotation.RequestMethod.GET })
	public String onShow(
			@RequestParam(value = "error", required = false) boolean error,
			ModelMap model, @PathVariable("id") Long id)
			throws ServletException {
		MediaItem mi = null;
		log.debug("onShow {}", model);
		try {
			mi = this.miService.load(id);
			if (mi == null)
				return "redirect:/rc/admin/media/list";
		} catch (Exception e) {
			log.error("Error getting mediaItem", e);
			return "redirect:/rc/admin/media/list";
		}
		model.put("mediaItem", mi);
		return "mediaitem/show";
	}

	@RequestMapping(value = { "/delete" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST })
	public String onDelete(ModelMap model,
			@ModelAttribute("mediaItem") MediaItem mi) throws ServletException {
		log.debug("onDelete {}", model);
		try {
			this.miService.delete(mi);
		} catch (Exception e) {
			log.error("Error getting mediaItem", e);
			return "redirect:/rc/admin/media/list";
		}
		return "redirect:/rc/admin/media/list";
	}

	@RequestMapping(value = { "/index" }, method = {
			org.springframework.web.bind.annotation.RequestMethod.GET,
			org.springframework.web.bind.annotation.RequestMethod.POST })
	public String onIndex(ModelMap model,
			@ModelAttribute("mediaItem") MediaItem mi) throws ServletException {
		log.debug("onIndex {}", model);
		return "redirect:/rc/admin/media/list";
	}
}