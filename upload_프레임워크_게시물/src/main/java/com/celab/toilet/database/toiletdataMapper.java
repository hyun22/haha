package com.celab.toilet.database;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.celab.toilet.info.toilet;



public interface toiletdataMapper {
	public ArrayList<toilet> 화장실들불러오다(@Param("nlat")String nlat, 
			@Param("nlot")String nlot, 
			@Param("slat")String slat, 
			@Param("slot")String slot);
	
}
