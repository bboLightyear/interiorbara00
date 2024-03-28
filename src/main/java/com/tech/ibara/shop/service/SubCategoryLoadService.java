package com.tech.ibara.shop.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.tech.ibara.shop.dao.ShopDao;
import com.tech.ibara.shop.dto.CategoryDto;

public class SubCategoryLoadService implements ShopRestService<ArrayList<CategoryDto>> {

	private SqlSession sqlSession;
	
	private ArrayList<CategoryDto> subCategories;
	
	public SubCategoryLoadService(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public void execute(Model model) {
		HttpServletRequest request = (HttpServletRequest) model.asMap().get("request");
		ShopDao dao = sqlSession.getMapper(ShopDao.class);

		int category_id = Integer.parseInt(request.getParameter("category_id"));
		
		subCategories = dao.selectCategoriesByUp(category_id);
				
		model.addAttribute("subCategories", subCategories);
	}

	@Override
	public ArrayList<CategoryDto> getData() {
		return subCategories;
	}

}
