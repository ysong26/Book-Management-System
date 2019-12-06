//why?
package vita500.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import vita500.domain.AdminVO;
import vita500.service.AdminService;

@Controller
@RequestMapping("/admin/*")
public class AdminController {
	
	private static final Logger logger = LoggerFactory.getLogger(BasicController.class);	
	
	@Inject
	AdminService adminService;			
	
	@RequestMapping(value="/nfc_id_regist", method=RequestMethod.GET)
	public void registerGET() {
	}
	
	@RequestMapping(value="/nfc_id_regist", method=RequestMethod.POST)
	public String Admin_main(AdminVO adminVO) throws Exception {
		
		logger.info("nfc_id_regist(POST)");
		logger.info(adminService.toString());
		
		adminService.nfc_id_regist(adminVO);
		
		return "admin/nfc_id_regist";
	}		

}	

