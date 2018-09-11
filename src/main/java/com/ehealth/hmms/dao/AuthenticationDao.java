package com.ehealth.hmms.dao;

import java.math.BigInteger;

import com.ehealth.hmms.pojo.Users;

public interface AuthenticationDao {

	Integer authenticate(Users user) throws Exception;

}
