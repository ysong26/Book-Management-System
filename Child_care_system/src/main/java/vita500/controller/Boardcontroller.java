package vita500.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import vita500.domain.BoardVO;
import vita500.domain.Criteria;
import vita500.domain.MemberVO;
import vita500.service.BoardService;


@Controller
@RequestMapping("/board/*")
public class Boardcontroller {

	private static final Logger logger = LoggerFactory.getLogger(Boardcontroller.class);

	@Inject
	BoardService service;
	
	
	
	@RequestMapping(value="/Board",method=RequestMethod.GET)
	public void listALL(Model model) throws Exception{
		/*
		 * List<BoardVO> aaa = service.listAll(); for(BoardVO bb: aaa){
		 * System.out.println(bb.getUser_ID()); }
		 */	
		///////////////////////////
		logger.info("게시글 요청");
		model.addAttribute("list",service.listAll());
	
        }
	

	
	@RequestMapping("detail")
	public void Sing1(int board_No) throws Exception {

			
			System.out.println(board_No);
			}
	
		
	
	
	
	
	@RequestMapping("pan")
	public String Sing3() {
		
		return "board/pan";
	}
	

	
}

	

