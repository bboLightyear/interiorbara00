package com.tech.ibara.csnotice;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CsNoticeController {
	
	@RequestMapping("/cshome")
	public String cshome() {
		
		return "csnotice/cshome";
	}
}
