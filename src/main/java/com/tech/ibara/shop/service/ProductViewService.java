package com.tech.ibara.shop.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.tech.ibara.shop.dao.ShopDao;
import com.tech.ibara.shop.dto.OptionDto;
import com.tech.ibara.shop.dto.OptionSetDto;
import com.tech.ibara.shop.dto.ProductDto;

public class ProductViewService implements ShopService {

	private SqlSession sqlSession;
	
	public ProductViewService(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public void execute(Model model) {
		HttpServletRequest request = (HttpServletRequest) model.asMap().get("request");
		ShopDao dao = sqlSession.getMapper(ShopDao.class);
		
		String product_idStr = request.getParameter("product_id");
		int product_id = -1;
		if (product_idStr != null) {
			product_id = Integer.parseInt(product_idStr);
		}
		
		ProductDto productDto = dao.selectProductById(product_id);
		OptionSetDto optionSetDto = dao.selectOptionSetByProductId(product_id);
		
		int optionSetId = optionSetDto.getOption_set_id();
		
		ArrayList<OptionDto> optionDtoList = dao.selectOptionsByOptionSetId(optionSetId);
		OptionDto optionDto = optionDtoList.get(0);
		OptionSetDto subOptionSetDto = null;
		if (optionDto.getSub_option_set_id() != null) {
			subOptionSetDto = dao.selectOptionSetById(optionDto.getSub_option_set_id());
		}
		
		
		model.addAttribute("subOptionSet", subOptionSetDto);
		model.addAttribute("options", optionDtoList);
		model.addAttribute("optionSet1", optionSetDto);
		model.addAttribute("result", product_id);
		model.addAttribute("product", productDto);
	}

}
