package org.zerock.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/basic/*")
public class TestController {

	private static final Logger logger = LoggerFactory.getLogger(TestController.class);
	
	
		@RequestMapping(value="/About",method=RequestMethod.GET)
		public void About() {
			logger.info("소개페이지");
		}
		
		@RequestMapping("SingUp1")
		public String Sing() {
			
			return "basic/SingUp1";
		}
	}	

