package com.tech.ibara.oh.controller;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tech.ibara.oh.dao.OHInterfaceDao;
import com.tech.ibara.oh.dto.OHPhotoBoard;

@Controller
public class OHController {
	
	@Autowired
	private SqlSession sqlSession;
	
	// ---------- OHMainView.jsp ---------- 
	@RequestMapping("oh/OHMainView")
	public String OHMainView(Model model) {
		// Console 출력
		System.out.println("OHMainView Controller");
		return "oh/OHMainView";
	}
	// ---------- OHPhotoView.jsp ---------- 
	@RequestMapping("oh/OHPhotoView")
	public String OHPhotoView(Model model) {
		// Console 출력
		System.out.println("OHPhotoView Controller");
		// OHInterfaceDao, SqlSession 연결
		OHInterfaceDao dao = sqlSession.getMapper(OHInterfaceDao.class);
		// ohPhotoView() 함수 실행
		ArrayList<OHPhotoBoard> dtoList = dao.ohPhotoView();
		// model 값 전달
		model.addAttribute("ohPhotoView", dtoList);		
		return "oh/OHPhotoView";
	}
	// ---------- OHPhotoWriteView.jsp ---------- 
	@RequestMapping("oh/OHPhotoWriteView")
	public String OHPhotoWriteView(Model model) {
		// Console 출력
		System.out.println("OHPhotoWriteView Controller");
		return "oh/OHPhotoWriteView";
	}
	// ---------- OHPhotoWriteExecute ---------- 
	@RequestMapping("oh/OHPhotoWriteExecute")
	public String OHPhotoWriteExecute(MultipartHttpServletRequest mftRequest, Model model) {
		// Console 출력
		System.out.println("OHPhotoWriteExecute Controller");
		// 변수 선언, 값 저장
		String pb_title = mftRequest.getParameter("pb_title");
		String pb_content = mftRequest.getParameter("pb_content");
		String pb_category = mftRequest.getParameter("pb_category");
		String pb_residence = mftRequest.getParameter("pb_residence");
		String pb_room = mftRequest.getParameter("pb_room");
		String pb_style = mftRequest.getParameter("pb_style");
		String pb_skill = mftRequest.getParameter("pb_skill");		
		// 변수 값 출력
		System.out.println("pb_title: " + pb_title);
		System.out.println("pb_content: " + pb_content);
		System.out.println("pb_category: " + pb_category);
		System.out.println("pb_residence: " + pb_residence);
		System.out.println("pb_room: " + pb_room);
		System.out.println("pb_style: " + pb_style);
		System.out.println("pb_skill: " + pb_skill);
		// OHInterfaceDao, SqlSession 연결
		OHInterfaceDao dao = sqlSession.getMapper(OHInterfaceDao.class);
		// ohPhotoWriteExecute() 함수 실행
		dao.ohPhotoWriteExecute(pb_title, pb_content, pb_category,
								pb_residence, pb_room, pb_style, pb_skill);
		
		
		// /interiorbara
		
		// pa_attach
		
		
		return "redirect:OHPhotoView";
	}	
}
