package com.tech.ibara.shop.service;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.tech.ibara.shop.dao.ShopDao;
import com.tech.ibara.shop.dto.OptionDto;
import com.tech.ibara.shop.dto.OptionSetDto;
import com.tech.ibara.shop.dto.ProductDataDto;
import com.tech.ibara.shop.dto.ProductDto;
import com.tech.ibara.shop.util.ShopUtil;

public class ProductRegService implements ShopService {

	private SqlSession sqlSession;
	
	public ProductRegService(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public void execute(Model model) {
		HttpServletRequest request = (HttpServletRequest) model.asMap().get("request");
		ShopDao dao = sqlSession.getMapper(ShopDao.class);
		
		String product_name = request.getParameter("productName");
		int seller_id = Integer.parseInt(request.getParameter("sellerId"));
		int category_id = request.getParameter("lv4Category") == null ? 
				Integer.parseInt(request.getParameter("lv3Category")) :
				Integer.parseInt(request.getParameter("lv4Category"));
		int optionType = Integer.parseInt(request.getParameter("optionType"));
		
		switch (optionType) {
		case 0:
			ProductDataDto productDataDto = new ProductDataDto(
					Integer.parseInt(request.getParameter("optionStock")),
					Integer.parseInt(request.getParameter("optionPrice")),
					ShopUtil.parseInt(request.getParameter("optionDPrice")));
			dao.insertProductData(productDataDto);
			
			System.out.println(productDataDto.getProduct_data_id());
			
			
			
			OptionSetDto optionSetDto = new OptionSetDto(null);
			dao.insertOptionSet(optionSetDto);
			
			
			OptionDto optionDto = new OptionDto(
					optionSetDto.getOption_set_id(),
					null,
					productDataDto.getProduct_data_id(),
					request.getParameter("optionName"));
			dao.insertOption(optionDto);
			
			
			ProductDto productDto = new ProductDto(
					seller_id,
					category_id,
					optionSetDto.getOption_set_id(),
					1,
					product_name);
			dao.insertProduct(productDto);
			break;
		
		case 1:
			break;
			
		case 2:
			break;
		}
	}

}
