package com.tech.ibara.csnotice;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tech.ibara.csnotice.service.NoticeListService;
import com.tech.ibara.csnotice.service.NoticeServiceInter;


@Controller
public class CsNoticeController {
	
	//서비스 선언
	NoticeServiceInter noticeServiceInter;
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/cshome")
	public String cshome() {
		
		return "csnotice/cshome";
	}
	
	@RequestMapping("/qnalist") //리스트 컨트롤러 
	public String qnalist(HttpServletRequest request,Model model) {
		System.out.println("qmaList()");	
		
		model.addAttribute("request",request);

		noticeServiceInter=new NoticeListService(sqlSession);
		noticeServiceInter.execute(model);
		
		return "csnotice/qnalist";
	}
	
	@RequestMapping("/noticelist")
	public String noticelist() {
		
		return "csnotice/noticelist";
	}
	
	@RequestMapping("/chat")
	public String chat() {
		
		return "csnotice/chat";
	}
}
