package com.tech.ibara.biz.dao;

import java.util.ArrayList;

import com.tech.ibara.biz.dto.BizMgzDto;
import com.tech.ibara.biz.dto.BizMgzImgDto;

public interface BizIDao {

	public ArrayList<BizMgzDto> bizMgzList(int rowStart, int rowEnd, String searchKeyword, String string);

	public BizMgzDto bizMgzContentView(String bm_no);

	public void bizMgzUpHit(String bm_no);

	public void bizMgzMod(String bm_no, String bm_title, String bm_content);

	public void bizMgzDelView(String bm_no);
	
	public void bizMgzDel(String bm_no);

	public void bizMgzWrite(String bm_title, String bm_content, String bm_writer, String user_idno);

	public int selectBoardTotalCount1(String searchKeyword);

	public int selectBoardTotalCount2(String searchKeyword);

	public int selectBoardTotalCount3(String searchKeyword);

	public int selectBoardTotalCount4(String searchKeyword);

	public int selBm_no();
	
	public void bizMgzImgWrite(int bm_no, String originFile, String changeFile);

	public ArrayList<BizMgzImgDto> selectBizMgzImg(String bm_no);

	
}
