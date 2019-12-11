
package vita500.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import vita500.domain.AdminVO;
import vita500.service.AdminService;

@Controller
@RequestMapping("/admin/*")
public class AdminController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);	
	
	@Inject
	AdminService adminService;
	
	
	@RequestMapping(value="/User_list", method=RequestMethod.GET)	
	public void member_list_GET(Model model) throws Exception {
		logger.info("/User_list(GET)");
		model.addAttribute("User_list", adminService.user_list());		
	}
	
	@RequestMapping(value="/User_list", method=RequestMethod.POST)	
	public void member_list_POST() {
	}
	

	
	@RequestMapping(value="/NFC_ID_list", method=RequestMethod.GET)	
	public void nfc_id_list_GET(Model model) throws Exception {
		logger.info("/NFC_ID_list(GET)");
		model.addAttribute("NFC_ID_list", adminService.nfc_id_list());
	}
	
	@RequestMapping(value="/NFC_ID_list", method=RequestMethod.POST)	
	public void nfc_id_list_() {
		logger.info("/NFC_ID_list(POST)");		
	}	
	
	
	@RequestMapping(value="/NFC_ID_regist", method=RequestMethod.GET)
	public void registerGET() throws Exception  {
	}
	
	@RequestMapping(value="/NFC_ID_regist", method=RequestMethod.POST)		
	public String Admin_main(AdminVO adminVO) throws Exception {		
		logger.info("/NFC_ID_regist(POST)");
		logger.info(adminService.toString());		
		adminService.nfc_id_regist(adminVO);		
		return "admin/NFC_ID_regist";
	}	
	
	
	@RequestMapping(value="/Time_list", method=RequestMethod.GET)	
	public void time_list_GET(Model model) throws Exception {
		logger.info("/Time_list(GET)");		
		model.addAttribute("Time_list", adminService.time_list());
		model.addAttribute("nfc_id", adminService.nfc_id());
	}
	
	
	@RequestMapping(value="/Time_chart", method=RequestMethod.GET)	
	public void time_chart_GET(Model model) throws Exception {
		logger.info("/Time_chart(GET)");
		model.addAttribute("Time_chart", adminService.time_chart());
	}
	
	
	
	


}	

