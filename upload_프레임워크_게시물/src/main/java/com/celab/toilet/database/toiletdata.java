package com.celab.toilet.database;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.celab.DBInfo.DBInfo;
import com.celab.toilet.info.toilet;


@Repository
public class toiletdata {
	@Autowired
	private toiletdataMapper toiletdataMapper; 

	public ArrayList<toilet> 화장실들불러오다(double nlatitude, double nlongitude, double slatitude, double slongitude) {
		ArrayList<toilet> 화장실들=new ArrayList<toilet>();
		System.out.println(nlatitude);
		try {
			
	         String DB명령문 = String.format("select * from totilet where latitude between %f And %f And longitude between %f And %f",slongitude,nlongitude,slatitude, nlatitude);
	         System.out.println(DB명령문);
	         Class.forName("com.mysql.jdbc.Driver");
	         Connection 연결자 = DriverManager.getConnection(DBInfo.DB연결, DBInfo.DBId, DBInfo.DBpassword);
	         Statement 명령전달자 = 연결자.createStatement();
	         ResultSet 발생된게시물 = 명령전달자.executeQuery(DB명령문);
	         while (발생된게시물.next()) {
	        
	        	 long No  = 발생된게시물.getLong("No");
	        	 String title = 발생된게시물.getString("title");
	        	 double latitude = 발생된게시물.getDouble("latitude");
	        	 double longitude = 발생된게시물.getDouble("longitude");
	        	 long disabled  = 발생된게시물.getLong("disabled");
	        	 long Infant  = 발생된게시물.getLong("Infant");
	        	 toilet toilet =new toilet();
	        	 toilet.setNo(No);
	        	 toilet.setTitle(title);
	        	 toilet.setLatitude(latitude);
	        	 toilet.setLongitude(longitude);
	        	 toilet.setDisabled(disabled);
	        	 toilet.setInfant(Infant);
	        	 
	        	 화장실들.add(toilet);
	        	 
		          
		         
		          
	              
	             
	         }
	      
	         
	      } catch (Exception e) {
	         System.out.println(e.getMessage());
	      }
		return 화장실들;
}	
	
		
	} 
	

