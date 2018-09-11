package com.ehealth.hmms.util;

import java.io.ByteArrayOutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Map;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JRExporter;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.export.HtmlExporter;
import net.sf.jasperreports.engine.export.JRPdfExporter;
import net.sf.jasperreports.export.SimpleExporterInput;
import net.sf.jasperreports.export.SimpleHtmlExporterOutput;
import net.sf.jasperreports.export.SimpleOutputStreamExporterOutput;

public  class ReportCreator {

	
	public static Connection establishConnection()
	{
		
	String jdbcUrl = "jdbc:postgresql://localhost:5432/ehealthdb";//ehealthdb_sdc";
    String username = "postgres";
    String password = "postgres";

    Connection conn = null;
   // stmt = null;
   // rs = null;

    try {
      // Step 1 - Load driver
      Class.forName("org.postgresql.Driver"); // Class.forName() is not needed since JDBC 4.0

      // Step 2 - Open connection
      conn = DriverManager.getConnection(jdbcUrl, username, password);
      } catch (Exception e) {
    	  e.printStackTrace();
    	  
      }
    
    return conn;
	}
	
	public static ByteArrayOutputStream  generateHtmlReport(Map<String, Object> jasperParameter,String jrxmlFilePath) throws JRException {
		/* JasperReport is the object
		that holds our compiled jrxml file */
		JasperReport jasperReport;
		/* JasperPrint is the object contains
		report after result filling process */
		JasperPrint jasperPrint;
		Connection connection = establishConnection();
		// jrxml compiling process
		jasperReport = JasperCompileManager.compileReport(ReportCreator.class.getResourceAsStream(jrxmlFilePath));
		// filling report with data from data source

		jasperPrint = JasperFillManager.fillReport(jasperReport,jasperParameter, connection);
		ByteArrayOutputStream baos = new ByteArrayOutputStream();

		JRExporter exporter = new HtmlExporter();
		//JRHtmlExporter exporter = new JRHtmlExporter();
		exporter.setExporterInput(new SimpleExporterInput(jasperPrint));
		
		exporter.setExporterOutput(new SimpleHtmlExporterOutput(baos));
		exporter.exportReport();
		
		return baos;//.toString();
	}
	public static ByteArrayOutputStream  generatePdfReport(Map<String, Object> jasperParameter,String jrxmlFilePath) throws JRException {
	//public ByteArrayOutputStream getPrecheckDoneByNursesReport(String username)  throws JRException, SQLException, FileNotFoundException {
		JasperReport jasperReport;
		JasperPrint jasperPrint;
		Connection connection = establishConnection(); 
		jasperReport = JasperCompileManager.compileReport(ReportCreator.class.getResourceAsStream(jrxmlFilePath));
		// filling report with data from data source

		jasperPrint = JasperFillManager.fillReport(jasperReport,jasperParameter, connection);
		// exporting process
//		// 1- export to PDF
		JasperExportManager.exportReportToPdfFile(jasperPrint, "./PrecheckRegister.pdf");
		
		//ByteArrayOutputStream baos = new ByteArrayOutputStream();

		JRPdfExporter pdfExporter = new JRPdfExporter();
		
		 pdfExporter.setExporterInput(new SimpleExporterInput(jasperPrint));
         ByteArrayOutputStream pdfReportStream = new ByteArrayOutputStream();
         pdfExporter.setExporterOutput(new SimpleOutputStreamExporterOutput(pdfReportStream));
         pdfExporter.exportReport();

		//JRHtmlExporter exporter = new JRHtmlExporter();
	//	exporter.setExporterInput(new SimpleExporterInput(jasperPrint));
		
//		exporter.setParameter(JRHtmlExporterParameter.IS_WHITE_PAGE_BACKGROUND, Boolean.TRUE);
//		exporter.setParameter(JRHtmlExporterParameter.IS_USING_IMAGES_TO_ALIGN, Boolean.TRUE);
//		exporter.setParameter(JRHtmlExporterParameter.IS_OUTPUT_IMAGES_TO_DIR, Boolean.TRUE);
//		exporter.setParameter(JRHtmlExporterParameter.IS_REMOVE_EMPTY_SPACE_BETWEEN_ROWS, Boolean.TRUE);

		
		
		//exporter.setExporterOutput(new SimpleOutputStreamExporterOutput(baos)); 
		//exporter.setExporterOutput(new SimpleHtmlExporterOutput(baos));
		//exporter.exportReport();
		
		return pdfReportStream;//.toString();
		}
}
