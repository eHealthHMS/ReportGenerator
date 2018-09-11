package com.ehealth.hmms.service;

import java.math.BigInteger;

import com.ehealth.hmms.pojo.Users;


public interface AuthenticationService {

	Integer authenticate(Users user) throws Exception;
	
}
