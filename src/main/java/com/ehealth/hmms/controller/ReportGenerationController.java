package com.ehealth.hmms.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ehealth.hmms.service.ReportGenerationService;




@RestController
@RequestMapping("/dailyReport")
public class ReportGenerationController {

	final static Logger logger = Logger.getLogger(ReportGenerationController.class);

	@Autowired
	private ReportGenerationService reportGenerationService  ;//= new AuthenticationServiceImpl() ;

	public void setReportGenerationService(ReportGenerationService reportGenerationService) {
		this.reportGenerationService = reportGenerationService;
	} 
	
	// @RequestParam(value="param1", required=true) String param1,
    //@RequestParam(value="param2", required=false) String param2)
	//@RequestMapping(value = "/precheck/{username}", method = RequestMethod.GET, headers = "Accept=application/json")
//	public String getPrecheckDoneByNursesReport(@PathVariable("username") String username) throws Exception {
	@RequestMapping(value = "/precheck", method = RequestMethod.GET, headers = "Accept=application/json")
	public String getPrecheckDoneByNursesReport(@RequestParam(value="username", required=true) String username,
			@RequestParam(value="date", required=true) String date) throws Exception {
		logger.info("Entered ReportGenerationController: generateReport");
	//	BigInteger hospitalId = 
		return reportGenerationService.getPrecheckDoneByNursesReport(username.trim(),date).toString();//(user);
	//	logger.info("Exited ReportGenerationController: generateReport");
	//	return new BigInteger("1");
	}
//}
}
