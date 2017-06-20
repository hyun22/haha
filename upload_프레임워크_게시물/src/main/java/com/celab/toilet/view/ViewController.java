package com.celab.toilet.view;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.celab.toilet.info.toilet;
import com.celab.toilet.service.toiletService;


@Controller
public class ViewController {
@Autowired
toiletService toiletService;
	
	@RequestMapping("지도")
	public ModelAndView 지도(){
		ModelAndView ModelAndView =new ModelAndView();
		ModelAndView.setViewName("게시물목록");
		return ModelAndView;
	}
	
	@RequestMapping("화장실표시")
	public@ResponseBody ArrayList<toilet> 화장실표시(
			@RequestParam("Nlatitude") double Nlatitude,@RequestParam("Nlongitude") double Nlongitude,
			@RequestParam("Slatitude") double Slatitude,@RequestParam("Slongitude") double Slongitude){
	
	
		ArrayList<toilet> 화장실정보들= toiletService.화장실들불러오다(Nlatitude,Nlongitude,Slatitude,Slongitude);

		
		return 화장실정보들;
	}	
	
	@RequestMapping("화장실정보받다")
	public@ResponseBody toilet 화장실정보받다(@RequestParam("no") long no){
		toilet 화장실1 =new toilet();	
		화장실1.setNo(1);
		화장실1.setTitle("왕십리황소곱창화장실");
	
		화장실1.setLatitude(37.566056407918865);
		화장실1.setLongitude(127.03026118764767);
		
		toilet 화장실2 =new toilet();	
		화장실2.setNo(2);
		화장실2.setTitle("도로화장실");
		
		화장실2.setLatitude(37.56487608575024);
		화장실2.setLongitude(127.03032862276235);
	
		toilet 화장실3 =new toilet();	
	
		화장실3.setNo(3);
		화장실3.setTitle("우체국화장실");
		화장실3.setLatitude(37.56643452460645);
		화장실3.setLongitude(127.03141587835236);
		
		ArrayList<toilet> 화장실정보들=new ArrayList<toilet>();
		화장실정보들.add(화장실1);
		화장실정보들.add(화장실2);
		화장실정보들.add(화장실3);
		
		toilet 화장실=화장실정보들.get((int)no-1);
		
		return 화장실;
	}

}






