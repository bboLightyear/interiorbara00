package com.tech.ibara.shop.service;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.tech.ibara.shop.dao.ShopDao;
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
		
		ProductDto dto = dao.selectProductById(product_id);
		
		model.addAttribute("result", product_id);
		model.addAttribute("product", dto);
	}

}
