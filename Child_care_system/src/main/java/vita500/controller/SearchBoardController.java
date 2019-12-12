package vita500.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import vita500.domain.BoardVO;
import vita500.domain.PageMaker;
import vita500.domain.SearchCriteria;
import vita500.service.BoardService;

@Controller
@RequestMapping("/sboard/*")
public class SearchBoardController {

	@Inject
	private BoardService service;
	
	@RequestMapping("list")
	public void listPage(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		//model.addAttribute("list",service.listCriteria(cri));
		model.addAttribute("list",service.listSearchCriteria(cri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		//pageMaker.setTotalCount(service.listCountCriteria(cri));
		pageMaker.setTotalCount(service.listSearchCount(cri));
		model.addAttribute("pageMaker", pageMaker);
	}
	
	@RequestMapping(value="/readPage",method=RequestMethod.GET) //���
	public void readPage(int board_No, @ModelAttribute("cri") SearchCriteria cri,Model model) throws Exception { //�̸� ���Ƽ� request����
		model.addAttribute(service.read(board_No)); 
	}
	
	@RequestMapping(value="/removePage",method=RequestMethod.POST) //����
	public String remove(int board_No,SearchCriteria cri,RedirectAttributes rttr) throws Exception {
		service.remove(board_No);
		rttr.addFlashAttribute("msg", "success"); //addFlashAttribute�ӽõ����Ͷ� �ѹ��� ��
		rttr.addAttribute("page",cri.getPage());
		rttr.addAttribute("perPageNum",cri.getPerPageNum());
		rttr.addAttribute("searchType",cri.getSearchType());
		rttr.addAttribute("keyword",cri.getKeyword());
		return "redirect:/sboard/list";
	}
	
	@RequestMapping(value="/modifyPage",method=RequestMethod.GET) //����
	public void modifyGET(int board_No,SearchCriteria cri, Model model) throws Exception {
		model.addAttribute(service.read(board_No));
		model.addAttribute("cri",cri); //cri �����������
	}
	
	@RequestMapping(value="/modifyPage",method=RequestMethod.POST) //����
	public String modifyPOST(BoardVO board, SearchCriteria cri, RedirectAttributes rttr) throws Exception{
		service.modify(board);
		rttr.addFlashAttribute("result", "success"); //addFlashAttribute�ӽõ����Ͷ� �ѹ��� ��
		rttr.addAttribute("page",cri.getPage());
		rttr.addAttribute("perPageNum",cri.getPerPageNum());
		rttr.addAttribute("searchType",cri.getSearchType());
		rttr.addAttribute("keyword",cri.getKeyword());
		return "redirect:/sboard/list";
	}
	
	@RequestMapping(value="/register",method=RequestMethod.GET)
	public void registerGET() {
	}
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String registerPOST(BoardVO board, RedirectAttributes rttr) throws Exception {
		service.regist(board);
		rttr.addFlashAttribute("result", "success");
		return "redirect:/sboard/list"; ///////////
	}
	
}