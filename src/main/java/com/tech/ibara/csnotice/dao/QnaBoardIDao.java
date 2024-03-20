package com.tech.ibara.csnotice.dao;

import java.util.ArrayList;

import com.tech.ibara.csnotice.dto.QnaDto;

public interface QnaBoardIDao {

	public ArrayList<QnaDto> Qnalist();

	public QnaDto qnacontentView(String nbno);

	public void qnauphit(String nbno);
	
}
