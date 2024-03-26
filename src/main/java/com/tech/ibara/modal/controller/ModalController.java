package com.tech.ibara.modal.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.tech.ibara.modal.service.ModalService;
@Controller
public class ModalController {
	@Autowired
	private SqlSession sqlSession;
	@Autowired
	private ModalService modalService;

	@RequestMapping("/modal/mMain")
	public String mMain(Model model) {
		
		return "/modal/mMain";
	}
	
	/*
	 * @RequestMapping("/modal/mStandard") public String
	 * mStandard(@RequestParam("selectedSize") String
	 * selectedSize, @RequestParam("selectedService") String selectedService, Model
	 * model) { modalService.processModalData(selectedSize, selectedService);
	 * model.addAttribute("selectedSize", selectedSize);
	 * model.addAttribute("selectedService", selectedService); return
	 * "modal/mStandard"; }
	 */
	@RequestMapping("/modal/mSize")
	public String mSize(Model model) {
		
		return "/modal/mSize";
	}
	
}
