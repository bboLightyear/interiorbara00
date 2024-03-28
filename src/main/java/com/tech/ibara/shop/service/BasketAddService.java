package com.tech.ibara.shop.service;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.tech.ibara.shop.dao.ShopDao;

public class BasketAddService extends SqlSessionBase implements ShopService {

	public BasketAddService(SqlSession sqlSession) {
		super(sqlSession);
	}

	@Override
	public void execute(Model model) {
		HttpServletRequest request = (HttpServletRequest) model.asMap().get("request");
		ShopDao dao = sqlSession.getMapper(ShopDao.class);
		
		
	}

}
