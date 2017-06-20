package com.celab.toilet.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.celab.toilet.database.toiletdata;
import com.celab.toilet.info.toilet;

@Service
public class toiletService {
@Autowired
toiletdata toiletdata;

	public ArrayList<toilet> 화장실들불러오다(double nlatitude, double nlongitude, double slatitude, double slongitude){
		return toiletdata.화장실들불러오다(nlatitude,nlongitude,slatitude,slongitude);
		

	}

}
