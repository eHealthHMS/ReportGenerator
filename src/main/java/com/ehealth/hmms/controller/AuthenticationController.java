package com.ehealth.hmms.controller;

import java.math.BigInteger;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.ehealth.hmms.pojo.Users;
import com.ehealth.hmms.service.AuthenticationService;
import com.ehealth.hmms.service.impl.AuthenticationServiceImpl;


@RestController
@RequestMapping("/hmms")
public class AuthenticationController {

	final static Logger logger = Logger.getLogger(AuthenticationController.class);

	@Autowired
	private AuthenticationService authenticationService ;//= new AuthenticationServiceImpl() ;

	public void setAuthenticationService(AuthenticationService authenticationService) {
		this.authenticationService = authenticationService;
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST, headers = "Accept=application/json")
	public Integer authenticateUserForDataEntry(@RequestBody Users user) throws Exception {
		logger.info("Entered AuthenticationController:authenticateUserForDataEntry");
		Integer hospitalId = authenticationService.authenticate(user);
		logger.info("Exited AuthenticationController:authenticateUserForDataEntry");
		return hospitalId;
	}
}
