package com.tech.ibara.csnotice.service;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.tech.ibara.csnotice.dao.NoticeBoardIDao;
import com.tech.ibara.csnotice.dto.QnaDto;

public class NoticeListService implements NoticeServiceInter{

	private SqlSession sqlSession;
	
	public NoticeListService(SqlSession sqlSession) {
		this.sqlSession=sqlSession;
	}
	
	@Override
	public void execute(Model model) {
		
		Map<String, Object> map=model.asMap();
		HttpServletRequest request=(HttpServletRequest) map.get("request");
		
		NoticeBoardIDao dao=sqlSession.getMapper(NoticeBoardIDao.class);
		
		ArrayList<QnaDto> list = dao.noticelist();
		
		model.addAttribute("list",list);
		
	}

}
