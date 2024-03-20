package com.tech.ibara.csnotice;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tech.ibara.csnotice.service.QnaContentService;
import com.tech.ibara.csnotice.service.QnaListService;
import com.tech.ibara.csnotice.service.QnaServiceInter;


@Controller
public class CsQnaController {
	
	//서비스 선언
	QnaServiceInter qnaServiceInter;
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/qnalist") //리스트 컨트롤러 
	public String qnalist(HttpServletRequest request,Model model) {
		System.out.println("qnaList()controller");	
		
		model.addAttribute("request",request);

		qnaServiceInter=new QnaListService(sqlSession);
		qnaServiceInter.execute(model);
		
		return "csnotice/qnalist";
	}

	@RequestMapping("/qnacontent") //리스트 컨트롤러 
	public String qnacontent(HttpServletRequest request,Model model) {
		System.out.println("qnacontent()controller");	
		
		model.addAttribute("request",request);

		qnaServiceInter=new QnaContentService(sqlSession);
		qnaServiceInter.execute(model);
		
		return "csnotice/qnacontent";
	}
	
	
}
