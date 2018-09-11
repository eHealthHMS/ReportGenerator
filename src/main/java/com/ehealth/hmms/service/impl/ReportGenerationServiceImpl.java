package com.ehealth.hmms.service.impl;

import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.ehealth.hmms.service.ReportGenerationService;
import com.ehealth.hmms.util.ReportCreator;

import net.sf.jasperreports.engine.JRException;

@Service
public class ReportGenerationServiceImpl implements ReportGenerationService {

	final static Logger logger = Logger.getLogger(ReportGenerationServiceImpl.class);

	private int getHospitalId(String username) throws SQLException {
		// connection is the data source we used to fetch the data from
		Connection connection = ReportCreator.establishConnection();
		Statement stmnt = connection.createStatement();
		// String loginName="10911167";
		ResultSet resultSet = stmnt.executeQuery("select hospital_id from users where login_name='" + username + "'");
		// String hospitalId;
		int hospitalId = 0;
		while (resultSet.next()) {

			hospitalId = resultSet.getInt(1);

		}
		return hospitalId;
	}

	public ByteArrayOutputStream getPrecheckDoneByNursesReport(String username,String date)  throws JRException, SQLException, FileNotFoundException {

		
		// jasperParameter is a Hashmap contains the parameters
		// passed from application to the jrxml layout
		Map<String, Object> jasperParameter = new HashMap<String,Object>();
		
		
		jasperParameter.put("hospitalId", getHospitalId(username));
		jasperParameter.put("selectedDate",date);
		
		
		
	return	ReportCreator.generateHtmlReport(jasperParameter, "/PrecheckRegister.jrxml");
	}
	}
