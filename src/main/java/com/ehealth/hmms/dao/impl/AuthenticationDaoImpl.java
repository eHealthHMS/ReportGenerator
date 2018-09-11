package com.ehealth.hmms.dao.impl;

import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Iterator;

import org.apache.log4j.Logger;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ehealth.hmms.dao.AuthenticationDao;
import com.ehealth.hmms.pojo.Users;

@Repository
@Transactional
public class AuthenticationDaoImpl implements AuthenticationDao {
	@Autowired
	private SessionFactory sessionFactory;
	final static Logger logger = Logger.getLogger(AuthenticationDaoImpl.class);

	public Integer authenticate(Users user) throws Exception {

		Session session = this.sessionFactory.getCurrentSession();
		Integer hospitalId = null;
		try {
			logger.info("Entered AuthenticationDaoImpl:authenticate");
			
		//	String sql = "select hospital_id from users where login_name=:loginName ";//and password=:password";
			String sql = "select password,hospital_id from users where login_name=:loginName";
			Query query = session.createSQLQuery(sql);
			query.setParameter("loginName", user.getLoginName().trim());
			//query.setParameter("password", user.getPassword());
		//	Object userDetails = query.list();//uniqueResult();
			
			
			
			Iterator iterator = query.list().iterator();
			
			
			while (iterator.hasNext()) {
				Object[] row = (Object[]) iterator.next();
				String password = (String)row[0];
				if(password!=null && validatePassword(password, user.getPassword())) {
						hospitalId =((Integer)row[1]);
						break;
					}
				}
				
				
			//}
//			if(userDetails != null)
//			{
//				
//				
//				
//				hospitalId = (BigInteger) userDetails;
//			}
			
		} catch (HibernateException e) {
			throw new HibernateException("Hibernate Exception : " + e.getMessage());
		} catch (Exception e) {
			throw new Exception("Exception : " + e.getMessage());
		}
		logger.info("Exited AuthenticationDaoImpl:authenticate");
		return hospitalId;
	}
	
	private  boolean validatePassword(String passwordFromDB,
			String passwordFromRequest) {

		byte[] bMessageDigest = null;
		byte[] byteArrayFromDatabase = null;
		byte[] byteArrayFromRequest = null;
		MessageDigest md = null;
		boolean bool = false;
		try {
			md = MessageDigest.getInstance("MD5");
			bMessageDigest = passwordFromRequest.getBytes("UTF8");
			md.update(bMessageDigest);
			byteArrayFromRequest = md.digest();
			byteArrayFromDatabase = new sun.misc.BASE64Decoder()
					.decodeBuffer(passwordFromDB);
			bool = MessageDigest.isEqual(byteArrayFromRequest,
					byteArrayFromDatabase);

		} 
//		catch (NoSuchAlgorithmException e) {
//
//			e.printStackTrace();
//		} 
		catch (IOException e) {

			e.printStackTrace();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return bool;
	}

}
