package vita500.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import vita500.domain.BoardVO;
import vita500.domain.Criteria;
import vita500.domain.MemberVO;
import vita500.domain.PageMaker;
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
	
	@RequestMapping(value="/detail",method=RequestMethod.GET)
	public void read(@RequestParam("board_No") int board_No, Model model) throws Exception {
		model.addAttribute(service.read(board_No));
	}
	
	
	@RequestMapping(value="/remove",method=RequestMethod.POST) //삭제
	public String remove(@RequestParam("board_No")int board_No,
			RedirectAttributes rttr) throws Exception {
		logger.info("삭제요청");
		service.remove(board_No);
		rttr.addFlashAttribute("msg", "success"); //addFlashAttribute임시데이터라 한번만 뜸
		
		
		/*
		 * rttr.addAttribute("page",cri.getPage());
		 * rttr.addAttribute("perPageNum",cri.getPerPageNum());
		 */
		return "redirect:/board/Board";
	}

	
	@RequestMapping(value="/modify",method=RequestMethod.GET) //수정
	public void modifyGET(@RequestParam("board_No") int board_No, Model model) throws Exception {
		model.addAttribute(service.read(board_No));
	}
	
	
	@RequestMapping(value="/listPage",method=RequestMethod.GET)
	public void listPage(Criteria cri, Model model) throws Exception{
		logger.info("하단 페이지바 까지 보기 요청");
		model.addAttribute("list",service.listCriteria(cri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.listCountCriteria(cri));
		//pageMaker.setTotalCount(131);
		model.addAttribute("pageMaker",pageMaker);
	}
	
	
//	@RequestMapping("detail")
//	public void Sing1(int board_No) throws Exception {
//
//			
//			System.out.println(board_No);
//			}
//	
	
	
	@RequestMapping("pan")
	public String Sing3() {
		
		return "board/pan";
	}
	

	
}

	

