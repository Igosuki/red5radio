package com.radioc.controllers;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.red5.logging.Red5LoggerFactory;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.support.ByteArrayMultipartFileEditor;

import com.radioc.forms.FileUploadForm;

@Controller
@RequestMapping({ "/admin" })
public class FileUploadController {
	private static Logger log = Red5LoggerFactory.getLogger(
			FileUploadController.class, "uploadTest");

	@Value("${webapp.uploadPath}")
	private String uploadPath;

	@RequestMapping(value = { "/upload/submit" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST })
	protected String submit(ModelMap model, @Valid FileUploadForm fileUploadForm)
			throws ServletException, IOException {
		MultipartFile mf = fileUploadForm.getFile();

		String sep = System.getProperty("file.separator");

		File dest = new File(this.uploadPath, mf.getOriginalFilename());
		mf.transferTo(dest);
		log.info("FileUploadController -- uploading to: " + this.uploadPath
				+ sep + mf.getOriginalFilename());

		return "upload";
	}

	@RequestMapping(value = { "/upload" }, method = { org.springframework.web.bind.annotation.RequestMethod.GET })
	protected String getUpload(ModelMap model) {
		model.put("fileUploadForm", new FileUploadForm());
		return "upload";
	}

	protected void initBinder(HttpServletRequest request,
			ServletRequestDataBinder binder) throws ServletException {
		binder.registerCustomEditor(MultipartFile.class,
				new ByteArrayMultipartFileEditor());
	}

	public void setUploadPath(String path) {
		this.uploadPath = path;
	}
}