package org.zerock.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/basic/*")
public class BasicController {
 
	private static final Logger logger = LoggerFactory.getLogger(BasicController.class);
	
	
		@RequestMapping(value="/About",method=RequestMethod.GET)
		public void About() {
			logger.info("�Ұ�������");
		}
		
		@RequestMapping("SingUp1")
		public String Sing1() {
			
			return "basic/SingUp1";
		}
		
		@RequestMapping("SingUp2")
		public String Sing2() {
			
			return "basic/SingUp2";
		}
		
		@RequestMapping("SingUp3")
		public String Sing3() {
			
			return "basic/SingUp3";
		}
	}	

