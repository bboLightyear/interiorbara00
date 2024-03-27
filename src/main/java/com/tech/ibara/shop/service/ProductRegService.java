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
		case 0: {
			OptionSetDto optionSetDto = new OptionSetDto(null);
			dao.insertOptionSet(optionSetDto);
			
			ProductDataDto productDataDto = new ProductDataDto(
					Integer.parseInt(request.getParameter("optionStock")),
					Integer.parseInt(request.getParameter("optionPrice")),
					ShopUtil.parseInt(request.getParameter("optionDPrice")));
			dao.insertProductData(productDataDto);

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
		}
		
		case 1: {
			int setNum = 1;
			int optionNum = 1;
			
			String setKey = String.format("set%d", setNum);
			String setNameKey = setKey + "Name";
			
			OptionSetDto optionSetDto = new OptionSetDto(request.getParameter(setNameKey));
			dao.insertOptionSet(optionSetDto);
			
			while (true) {
				String optionKey = String.format("Option%d", optionNum);
				
				String optionNameKey = setKey + optionKey + "Name";

				String optionName = request.getParameter(optionNameKey);
				if (optionName == null) {
					break;
				}
				
				String optionStockKey = setKey + optionKey + "Stock";
				String optionPriceKey = setKey + optionKey + "Price";
				String optionDPriceKey = setKey + optionKey + "DPrice";
				
				ProductDataDto productDataDto = new ProductDataDto(
						Integer.parseInt(request.getParameter(optionStockKey)),
						Integer.parseInt(request.getParameter(optionPriceKey)),
						ShopUtil.parseInt(request.getParameter(optionDPriceKey)));
				dao.insertProductData(productDataDto);

				OptionDto optionDto = new OptionDto(
						optionSetDto.getOption_set_id(),
						null,
						productDataDto.getProduct_data_id(),
						optionName);
				dao.insertOption(optionDto);
				
				++optionNum;
			}
			
			ProductDto productDto = new ProductDto(
					seller_id,
					category_id,
					optionSetDto.getOption_set_id(),
					1,
					product_name);
			dao.insertProduct(productDto);
			
			break;
		}
			
		case 2: {
			String upSetName = request.getParameter("upSetName");
			
			OptionSetDto upOptionSetDto = new OptionSetDto(upSetName);
			dao.insertOptionSet(upOptionSetDto);
			
			int setNum = 1;
			
			while (true) {
				int optionNum = 1;
				
				String upOptionNameKey = String.format("upOption%dName", setNum);
				String upOptionName = request.getParameter(upOptionNameKey);
				
				if (upOptionName == null) {
					break;
				}
				
				String setKey = String.format("set%d", setNum);
				String setNameKey = setKey + "Name";
				
				OptionSetDto optionSetDto = new OptionSetDto(request.getParameter(setNameKey));
				dao.insertOptionSet(optionSetDto);
				
				OptionDto upOptionDto = new OptionDto(
						upOptionSetDto.getOption_set_id(),
						optionSetDto.getOption_set_id(),
						null,
						upOptionName);
				dao.insertOption(upOptionDto);
				
				while (true) {
					String optionKey = String.format("Option%d", optionNum);
					
					String optionNameKey = setKey + optionKey + "Name";
	
					String optionName = request.getParameter(optionNameKey);
					if (optionName == null) {
						break;
					}
					
					String optionStockKey = setKey + optionKey + "Stock";
					String optionPriceKey = setKey + optionKey + "Price";
					String optionDPriceKey = setKey + optionKey + "DPrice";
					
					ProductDataDto productDataDto = new ProductDataDto(
							Integer.parseInt(request.getParameter(optionStockKey)),
							Integer.parseInt(request.getParameter(optionPriceKey)),
							ShopUtil.parseInt(request.getParameter(optionDPriceKey)));
					dao.insertProductData(productDataDto);
	
					OptionDto optionDto = new OptionDto(
							optionSetDto.getOption_set_id(),
							null,
							productDataDto.getProduct_data_id(),
							optionName);
					dao.insertOption(optionDto);
					
					++optionNum;
				}
				
				++setNum;
			}
			
			ProductDto productDto = new ProductDto(
					seller_id,
					category_id,
					upOptionSetDto.getOption_set_id(),
					1,
					product_name);
			dao.insertProduct(productDto);
			break;
		}
		}
	}

}
