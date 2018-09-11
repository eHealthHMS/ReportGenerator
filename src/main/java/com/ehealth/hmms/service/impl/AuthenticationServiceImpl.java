package com.ehealth.hmms.service.impl;

import java.math.BigInteger;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ehealth.hmms.dao.AuthenticationDao;
import com.ehealth.hmms.pojo.Users;
import com.ehealth.hmms.service.AuthenticationService;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {

	final static Logger logger = Logger.getLogger(AuthenticationServiceImpl.class);
	
	@Autowired
	private AuthenticationDao authenticationDao;// = new AuthenticationDaoImpl();

	public void setAuthenticationDao(AuthenticationDao authenticationDao) {
		this.authenticationDao = authenticationDao;
	}

	public Integer authenticate(Users user) throws Exception {
		Integer hospitalId = 0;//new BigInteger("0");
		try {
			logger.info("Entered AuthenticationServiceImpl:authenticate");

			Integer userResult = authenticationDao.authenticate(user);
			if (userResult != null) {
				hospitalId = userResult ;
			} 
		} catch (Exception e) {
			logger.error(e);
		}
		logger.info("Exited AuthenticationServiceImpl:authenticate");
		return hospitalId;
	}
}
