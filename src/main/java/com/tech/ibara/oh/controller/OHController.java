package com.tech.ibara.oh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OHController {
	
	@RequestMapping("oh/OHMainView")
	public String OHMainView(Model model) {
		System.out.println("OHMainView Controller");
		return "oh/OHMainView";
	}
	@RequestMapping("oh/OHPhotoWriteView")
	public String OHPhotoWriteView(Model model) {
		System.out.println("OHPhotoWriteView Controller");
		return "oh/OHPhotoWriteView";
	}
	@RequestMapping("oh/OHPhotoView")
	public String OHPhotoView(Model model) {
		System.out.println("OHPhotoView Controller");
		return "oh/OHPhotoView";
	}
	
}
