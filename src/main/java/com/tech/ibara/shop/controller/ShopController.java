package com.tech.ibara.shop.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tech.ibara.shop.service.ProductListService;
import com.tech.ibara.shop.service.ShopService;

@Controller
public class ShopController {

	@Autowired
	private SqlSession sqlSession;
	
	private ShopService shopService;
	
	@RequestMapping("shopProductList")
	public String shopProductList(HttpServletRequest request, Model model) {
		
		model.addAttribute("request", request);
		
		shopService = new ProductListService(sqlSession);
		shopService.execute(model);
		
		return "shop/shopProductList";
	}
}
