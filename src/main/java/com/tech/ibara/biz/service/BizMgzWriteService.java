package com.tech.ibara.biz.service;

import java.io.File;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tech.ibara.biz.dao.BizIDao;

@Service
public class BizMgzWriteService implements BizServiceInter {

	private SqlSession sqlSession;
	
	public BizMgzWriteService(SqlSession sqlSession) {
		// TODO Auto-generated constructor stub
		this.sqlSession=sqlSession;
	}

	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub

		System.out.println("service BizMgzWriteService>>>");
		
		Map<String, Object> map=model.asMap();
		MultipartHttpServletRequest mftRequest=(MultipartHttpServletRequest) map.get("mftRequest");
		
		String bm_title=mftRequest.getParameter("bm_title");
		String bm_content=mftRequest.getParameter("bm_content");
		String bm_writer=mftRequest.getParameter("bm_writer");
		String user_idno=mftRequest.getParameter("user_idno");
		
		System.out.println("bm_title: "+bm_title);
		System.out.println("bm_content: "+bm_content);
		System.out.println("bm_writer: "+bm_writer);
		System.out.println("user_idno: "+user_idno);
		
		BizIDao dao=sqlSession.getMapper(BizIDao.class);
		dao.bizMgzWrite(bm_title,bm_content,bm_writer,user_idno);
		
//		최근의 글번호 가져오기
		int bm_no=dao.selBm_no();
		System.out.println("bm_no: "+bm_no);
		
		//show in sys explorer로 열어서 주소복사함
		String path="C:\\23setspring\\springwork23\\interiorbara00\\src\\main\\webapp\\resources\\upload\\biz";
//		MultipartRequest req=
//				new MultipartRequest(mftRequest, path, 1024*1024*10,"utf-8", new DefaultFileRenamePolicy());
//		
		List<MultipartFile> fileList=mftRequest.getFiles("file");

		for (MultipartFile mf : fileList) {
			String originFile=mf.getOriginalFilename();
			System.out.println("오리진 파일 이름: "+originFile);
			long longtime=System.currentTimeMillis();
			String changeFile=longtime+"_"+mf.getOriginalFilename();
			System.out.println("변형된 파일 이름: "+changeFile);
			String pathfile=path+"\\"+changeFile;
			try {
		            if(!originFile.equals("")) {
		               mf.transferTo(new File(pathfile));
		               // setFileUpload() 함수 실행 -> DB에 파일명 INSERT
		               dao.bizMgzImgWrite(bm_no, originFile, changeFile);
		               System.out.println("다중 파일 업로드 성공");
		            }
		         } catch (Exception e) {
		            // TODO: handle exception
		        	 e.printStackTrace();
		         }
		      }

		
	}

}
