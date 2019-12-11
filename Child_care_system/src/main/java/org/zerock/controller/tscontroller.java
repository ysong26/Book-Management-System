package org.zerock.controller;

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
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.service.BoardService;


@Controller
@RequestMapping("/board/*")
public class tscontroller {

	private static final Logger logger = LoggerFactory.getLogger(tscontroller.class);

	@Inject
	BoardService service;
	
	
	
	@RequestMapping(value="/mainpage",method=RequestMethod.GET)
	public void listALL(Model model) throws Exception{
		logger.info("게시글 요청");
		model.addAttribute("list",service.listAll());
		//list 값을 찍어봅시다.
		

		
        }

	@RequestMapping("board/pan")
    public String pan() {
        return "board/pan";
		}

	

}

	

