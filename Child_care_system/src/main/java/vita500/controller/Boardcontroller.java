package vita500.controller;

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
import vita500.service.BoardService;


@Controller
@RequestMapping("/board/*")
public class Boardcontroller {

	private static final Logger logger = LoggerFactory.getLogger(Boardcontroller.class);

	@Inject
	BoardService service;
	
	
	
	@RequestMapping(value="/Board",method=RequestMethod.GET)
	public void listALL(Model model) throws Exception{
		logger.info("게시글 요청");
		model.addAttribute("list",service.listAll());
		//list 값을 찍어봅시다.
		

		
        }
	
	
	@RequestMapping("Board")
	public String Sing1() {
		
		return "board/Board";
	}
		

}

	

