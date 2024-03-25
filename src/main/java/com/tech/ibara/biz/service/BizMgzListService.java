package com.tech.ibara.biz.service;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.tech.ibara.biz.dao.BizIDao;
import com.tech.ibara.biz.dto.BizMgzDto;
import com.tech.ibara.biz.vo.BizSearchVO;

@Service
public class BizMgzListService implements BizServiceInter {

	private SqlSession sqlSession;

	public BizMgzListService(SqlSession sqlSession) {
		// TODO Auto-generated constructor stub
		this.sqlSession=sqlSession;
	}

	@Override
	public void execute(Model model) {
		
		System.out.println("service BizMgzListService>>>");
		
		Map<String, Object> map=model.asMap();
		
		HttpServletRequest request=(HttpServletRequest) map.get("request");
		BizIDao dao=sqlSession.getMapper(BizIDao.class);
		BizSearchVO searchVO=(BizSearchVO) map.get("searchVO");
		
		String bm_title="";
		String bm_content="";
		
		String[] brdtitle=request.getParameterValues("searchType");
		System.out.println("brdtitle : "+brdtitle);
		
		//체크박스 체크 안 했을 때 null값 오류 방지
		if (brdtitle!=null) {
			for (String str : brdtitle) {
				System.out.println(str);
			}
		}

		if (brdtitle!=null) {
			//위 변수의 체크상태 저장
			for (String var : brdtitle) {
				if (var.equals("bmtitle")) {
					bm_title="bm_title";
					model.addAttribute("bm_title","true");
				}else if (var.equals("bm_content")) {
					bm_content="bm_content";
					model.addAttribute("bm_content","true");
				}
			}
		}
		
		//검색 결과 유지
		String bt=request.getParameter("bm_title");
		String bc=request.getParameter("bm_content");
		if (bt!=null) {
			if (bt.equals("bm_title")) {
				bm_title=bt;
				model.addAttribute("bm_title","true");
			}
		}
		if (bc!=null) {
			if (bc.equals("bm_content")) {
				bm_content=bc;
				model.addAttribute("bm_content","true");
			}
		}
		
		
		
		//sk값 가져오기
		String searchKeyword=request.getParameter("sk");
		if (searchKeyword==null) { //검색문자 null처리
			searchKeyword="";
		}
		model.addAttribute("searchKeyword",searchKeyword);
		System.out.println("searchKeyword : "+searchKeyword); //searchKeyword 확인하는 출력문
		
		
//		페이징
		String strPage=request.getParameter("page");
		//null처리
		if (strPage==null) {
			strPage="1";
		}
		
		int page=Integer.parseInt(strPage);
		searchVO.setPage(page);
		//토탈 글 갯수 
		//검색에 적용
		
		int total=0;
		if (bm_title.equals("bm_title") && bm_content.equals("")) { //제목만 검색
			total=dao.selectBoardTotalCount1(searchKeyword);
		}else if (bm_title.equals("") && bm_content.equals("bm_content")) { //내용만 검색
			total=dao.selectBoardTotalCount2(searchKeyword);
		}else if (bm_title.equals("bm_title") && bm_content.equals("bm_content")) { //둘 다 검색
			total=dao.selectBoardTotalCount3(searchKeyword);
		}else if (bm_title.equals("") && bm_content.equals("")) { //아무것도 체크 안 함
			total=dao.selectBoardTotalCount4(searchKeyword);
		}
		
		System.out.println("total : "+total);
		
//		total count 찍히게
		
		searchVO.pageCalculate(total);
		
		//계산된 값
		System.out.println("total"+total);
		System.out.println("clickpage"+strPage);
		System.out.println("pagestart"+searchVO.getPageStart());
		System.out.println("pageend"+searchVO.getPageEnd());
		System.out.println("rowstart"+searchVO.getRowStart());
		System.out.println("rowend"+searchVO.getRowEnd());
		
		int rowStart=searchVO.getRowStart();
		int rowEnd=searchVO.getRowEnd();
		
		
		ArrayList<BizMgzDto> bizMgzList = null;
		if (bm_title.equals("bm_title") && bm_content.equals("")) { //제목만 검색
//			list = dao.list(rowStart,rowEnd,searchKeyword,"1");
			model.addAttribute("bizMgzList",dao.bizMgzList(rowStart,rowEnd,searchKeyword,"1"));
		}else if (bm_title.equals("") && bm_content.equals("bm_content")) { //내용만 검색
//			list = dao.list(rowStart,rowEnd,searchKeyword,"2");
			model.addAttribute("bizMgzList",dao.bizMgzList(rowStart,rowEnd,searchKeyword,"2"));
		}else if (bm_title.equals("bm_title") && bm_content.equals("bm_content")) { //둘 다 검색
//			list = dao.list(rowStart,rowEnd,searchKeyword,"3");
			model.addAttribute("bizMgzList",dao.bizMgzList(rowStart,rowEnd,searchKeyword,"3"));
		}else if (bm_title.equals("") && bm_content.equals("")) { //아무것도 체크 안 함
			bizMgzList = dao.bizMgzList(rowStart,rowEnd,searchKeyword,"4");
			model.addAttribute("bizMgzList",dao.bizMgzList(rowStart,rowEnd,searchKeyword,"4"));
		}	
				
		
		System.out.println(bizMgzList);
		model.addAttribute("totalRowcnt",total);
		model.addAttribute("searchVo",searchVO);
		
	}

}