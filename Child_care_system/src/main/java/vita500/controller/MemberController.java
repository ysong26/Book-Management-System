package vita500.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
@RequestMapping("/member/*")
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	MemberService service;
	
		@RequestMapping(value="/About",method=RequestMethod.GET)
		public void About() {
			logger.info("소개페이지");
		}
		
		@RequestMapping("SingUp1")
		public String Sing1() {
			
			return "member/SingUp1";
		}
				
		@RequestMapping(value="/SingUp2",method=RequestMethod.GET)
		public void registerGET() {
		}
		
		@RequestMapping(value="/SingUp2",method=RequestMethod.POST)
		public String registerPOST(MemberVO member, RedirectAttributes rttr) throws Exception {
			logger.info("회원가입(POST)");
			logger.info(member.toString());
			service.regist(member);
			return "member/SingUp3";
		}
		
		
		@RequestMapping("SingUp3")
		public String Sing3() {
			
			return "member/SingUp3";
		}
		
		
		//아이디 중복 확인
		@ResponseBody
		@RequestMapping(value = "/idCheck", method = RequestMethod.POST)
		public int postIdCheck(HttpServletRequest req) throws Exception {
			
			String UserId = req.getParameter("User_ID");
			MemberVO idCheck = service.idCheck(UserId);
			
			int result = 0;
			
			if(idCheck != null) {
				result = 1;
			}
			return result;
		}
		
		
		@RequestMapping(value = "/login", method = RequestMethod.POST)
		public String login(MemberVO vo, HttpSession session, RedirectAttributes rttr) throws Exception {
			logger.info("post login");
			
	
			MemberVO login = service.login(vo);
			
		/* logger.info(login.getUser_ID()); */
			
			if(login == null) {
				session.setAttribute("member", null);
				rttr.addFlashAttribute("msg",false);
			} else {
				session.setAttribute("member", login);
			}
			System.out.print(session.getAttribute("member"));
			
			return "redirect:/";
		}
		
		
		@RequestMapping(value = "/logout", method = RequestMethod.GET)
		public String logout(HttpSession session) throws Exception{
			logger.info("logout");

			session.invalidate();
			
			return "redirect:/";
		}
		
		@RequestMapping("Mypage")
		public String mypage() {
			
			return "member/Mypage";
		}
		
	
		@RequestMapping(value = "/modify_pw", method = RequestMethod.GET)
		public void getModify() throws Exception{
			logger.info("get modify PW");
		}
		
		@RequestMapping(value = "/modify_pw", method = RequestMethod.POST)
		public String postModify(HttpSession session, MemberVO vo, RedirectAttributes rttr) throws Exception {
		 logger.info("post modify PW");
		 
		 service.modify(vo);
		 session.invalidate(); //세션값삭제
		 rttr.addFlashAttribute("msg2", false);
		 return "redirect:/";
		}
		
		
		
		@RequestMapping("delete1")
		public String delete1() {
			
			return "member/delete1";
		}
		
		
		
		@RequestMapping(value = "/delete2", method = RequestMethod.GET)
		public void getdelete2() throws Exception {
		 logger.info("get delete");
		 
		}
		
		@RequestMapping(value = "/delete2", method = RequestMethod.POST)
		public String postWithdrawal(HttpSession session, MemberVO vo, RedirectAttributes rttr) throws Exception {
		 logger.info("post ");
		 
		 MemberVO member = (MemberVO)session.getAttribute("member");
		 
		 String oldPW = member.getUser_PW();
		 String newPW = vo.getUser_PW();
		     
		 if(!(oldPW.equals(newPW))) {
		  rttr.addFlashAttribute("msg1", false);
		  return "redirect:/member/delete2";
		 }
		 
		 service.delete(vo);
		 session.invalidate();
		 rttr.addFlashAttribute("msg1", true);
		 return "redirect:/";
		}
		
		
		
////////////////////////아이디 비밀번호 찾기///////////////////////
		@RequestMapping("find1")
		public String find() {
			
			return "member/find1";
		}
		

		//아이디 찾기
		
		@RequestMapping(value = "/find_id", method = RequestMethod.GET)
		public void find_id() throws Exception {
		 logger.info("get find id");
		}
		


		
		@RequestMapping("find_pw")
		public String findpw() {
			
			return "member/find_pw";
		}
		
		
	}	

