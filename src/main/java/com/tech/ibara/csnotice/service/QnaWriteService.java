package com.tech.ibara.csnotice.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.tech.ibara.csnotice.dao.QnaBoardIDao;
import com.tech.ibara.csnotice.dto.QnaDto;

public class QnaWriteService implements QnaServiceInter{

	private SqlSession sqlSession;
	
	public QnaWriteService(SqlSession sqlSession) {
		this.sqlSession=sqlSession;
	}
	
	@Override
	public void execute(Model model)  {
		
		System.out.println("QnaWriteService");
		Map<String, Object> map=model.asMap();
		HttpServletRequest request=(HttpServletRequest) map.get("request");
		
		String path="C:\\23setspring\\springwork23\\interiorbara\\src\\main\\webapp\\resources\\img\\csimg";
		MultipartRequest req;
		String nbtitle="",nbcontent="",nbwriter="",nbfile="";
		try {
			req = new MultipartRequest(request, path,1024*1024*10,"utf-8",new DefaultFileRenamePolicy());
			nbtitle=req.getParameter("nbtitle");
			nbcontent=req.getParameter("nbcontent");
			nbwriter=req.getParameter("nbwriter");
			nbfile=req.getFilesystemName("nbfile");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		System.out.println("nbtitle :"+nbtitle);
		System.out.println("nbcontent :"+nbcontent);
		System.out.println("nbwriter :"+nbwriter);
		System.out.println("nbfile :"+nbfile);
		
		
		QnaBoardIDao dao=sqlSession.getMapper(QnaBoardIDao.class);
		dao.qnaWrite(nbtitle,nbcontent,nbwriter,nbfile);
		
	}

}
