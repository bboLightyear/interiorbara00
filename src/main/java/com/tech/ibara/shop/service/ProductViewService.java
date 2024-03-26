package com.tech.ibara.shop.service;

import java.util.ArrayList;
import java.util.Comparator;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.tech.ibara.shop.dao.ShopDao;
import com.tech.ibara.shop.dto.CategoryDto;
import com.tech.ibara.shop.dto.OptionDto;
import com.tech.ibara.shop.dto.OptionSetDto;
import com.tech.ibara.shop.dto.ProductDto;
import com.tech.ibara.shop.dto.ProductImgDto;

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
		
		// category
		ArrayList<CategoryDto> categories = new ArrayList<CategoryDto>();
		CategoryDto categoryDto = dao.selectCategoryById(productDto.getCategory_id());
		categories.add(categoryDto);
		while (categoryDto.getUp_category_id() != null) {
			categoryDto = dao.selectCategoryById(categoryDto.getUp_category_id());
			categories.add(0, categoryDto);
		}
		
		
		// image
		ArrayList<ProductImgDto> productImgs = dao.selectProductImgsByProduct(product_id);
		
		
		// option
		OptionSetDto optionSetDto = dao.selectOptionSetByProduct(product_id);
		int optionSetId = optionSetDto.getOption_set_id();
		
		ArrayList<OptionDto> optionDtoList = dao.selectOptionsByOptionSetId(optionSetId);
		
<<<<<<< HEAD
		OptionDto nonOptionDto = null;
		OptionSetDto subOptionSetDto = null;
		
		ArrayList<OptionDto> optionDtoList = null;
		
		optionDtoList = dao.selectOptionsBySet(optionSetId);
		
		if (optionDtoList.size() == 1) {
			nonOptionDto = dao.selectJoinOptionBySet(optionSetId);
		} else {
			OptionDto optionDto = optionDtoList.get(0);
			if (optionDto.getSub_option_set_id() == null) {
				optionDtoList = dao.selectJoinOptionsBySet(optionSetId);
			} else {
				subOptionSetDto = dao.selectOptionSetById(optionDto.getSub_option_set_id());
			}
		}
		
		model.addAttribute("product", productDto);
		model.addAttribute("categories", categories);
		model.addAttribute("images", productImgs);
		model.addAttribute("optionSet", optionSetDto);
		model.addAttribute("nonOption", nonOptionDto);
		model.addAttribute("options", optionDtoList);
		model.addAttribute("subOptionSet", subOptionSetDto);
=======
		System.out.println(optionSetDto.getOption_set_id());
		System.out.println(optionSetDto.getName());
		
		model.addAttribute("optionSet1", optionSetDto);
		model.addAttribute("result", product_id);
		model.addAttribute("product", productDto);
>>>>>>> bogeun00
	}

}
