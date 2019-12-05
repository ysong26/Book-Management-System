package org.zerock.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.MemberVO;
import org.zerock.service.MemberService;

@Controller
@RequestMapping("/basic/*")
public class BasicController {
 
	private static final Logger logger = LoggerFactory.getLogger(BasicController.class);
	
	@Inject
	MemberService service;
	
		@RequestMapping(value="/About",method=RequestMethod.GET)
		public void About() {
			logger.info("소개페이지");
		}
		
		@RequestMapping("SingUp1")
		public String Sing1() {
			
			return "basic/SingUp1";
		}
				
		@RequestMapping(value="/SingUp2",method=RequestMethod.GET)
		public void registerGET() {
		}
		@RequestMapping(value="/SingUp2",method=RequestMethod.POST)
		public String registerPOST(MemberVO member, RedirectAttributes rttr) throws Exception {
			service.regist(member);
			rttr.addFlashAttribute("result", "success");
			return "redirect:/basic/SingUp3";
		}
		
		
		@RequestMapping("SingUp3")
		public String Sing3() {
			
			return "basic/SingUp3";
		}
	}	

