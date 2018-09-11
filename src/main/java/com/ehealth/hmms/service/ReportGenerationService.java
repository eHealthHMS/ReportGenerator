package com.ehealth.hmms.service;

import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.sql.SQLException;

import net.sf.jasperreports.engine.JRException;


public interface ReportGenerationService {

	ByteArrayOutputStream getPrecheckDoneByNursesReport(String userName,String date)  throws JRException, SQLException, FileNotFoundException ;
	
}
