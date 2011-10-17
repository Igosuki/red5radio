package com.radioc.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.radioc.controllers.services.EmissionService;
import com.radioc.hbeans.Emission;
import com.radioc.xml.beans.Rss;
import com.radioc.xml.converters.ModelToRssConverter;

@Controller
@RequestMapping({ "/itunesfeed" })
public class AppleRSSController {

	@Autowired
	@Qualifier("emissionService")
	EmissionService emService;

	@RequestMapping(value = { "/{emission}" }, method = { org.springframework.web.bind.annotation.RequestMethod.GET })
	public String getItunesFeed(ModelMap model,
			@PathVariable("emission") String em) {
		Emission loadedEm = this.emService.load(Long.valueOf(em));
		Rss feed = ModelToRssConverter.getRss();
		if ((loadedEm != null) && (!loadedEm.getPodcastable().booleanValue())) {
			feed.setChannel(ModelToRssConverter.emissionToRssChannel(loadedEm));
		}
		model.addAttribute("model", feed);
		return "xml";
	}
}