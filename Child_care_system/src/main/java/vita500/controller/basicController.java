package vita500.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import vita500.domain.MemberVO;
import vita500.service.MemberService;

@Controller
@RequestMapping("/basic/*")
public class basicController {
 
	private static final Logger logger = LoggerFactory.getLogger(basicController.class);
	
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
			logger.info("회원가입(POST)");
			logger.info(member.toString());
			service.regist(member);
			return "basic/SingUp3";
		}
		
		
		@ResponseBody
		@RequestMapping(value = "/idChck", method=RequestMethod.POST)
		public int postIdCheck(HttpServletRequest req) throws Exception{
			String user_ID = req.getParameter("user_ID");
			MemberVO idCheck = service.idCheck(user_ID);
			
			int result = 0;
			
			if(idCheck != null) {
				result = 1;
			}
			
			return result;
		}
		
		
		
		@RequestMapping("SingUp3")
		public String Sing3() {
			
			return "basic/SingUp3";
		}
	}	

