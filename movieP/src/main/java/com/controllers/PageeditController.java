package com.controllers;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.admin.service.PageeditService;
import com.admin.service.Provider;
import com.model.BannerDTO;
import com.model.InitData;
import com.model.Menu;
import com.model.MinfoPageDTO;
import com.model.MovieInfoDTO;
import com.model.PPPData;
import com.model.ServiceFullDTO;
import com.model.ServiceNoticePageDTO;


@Controller
@RequestMapping("admin/pageedit/{service}") // member/  ddd
public class PageeditController {
	
	@Resource
	Provider pr;
	
	@ModelAttribute("data")
	Object data(@PathVariable String service,HttpServletRequest request,HttpServletResponse response, 
					MovieInfoDTO mdto,
				MinfoPageDTO pdto,BannerDTO banDTO
				, ServiceFullDTO sfDTO,ServiceNoticePageDTO npDTO
			) {
		System.out.println("pageedit-"+service+"실행");
		//System.out.println("Mdto:"+mdto);

		PageeditService sr = pr.getContext().getBean("pageedit"+service,PageeditService.class);		
	
		Map<String, Object> obj= new HashMap<String, Object>();
		obj.put("service", service);
		obj.put("mdto", mdto);
		obj.put("request", request);
		obj.put("response", response);
		obj.put("pdto", pdto);
		obj.put("banDTO", banDTO);
		obj.put("sfDTO", sfDTO);
		obj.put("npDTO", npDTO);
		
		//
		
		return sr.execute(obj);	// has > servie,mdto,req, imgnames,pdto	
	}
	
	@ModelAttribute("bodyurl")
	String bodypageUrl(@PathVariable String service) {
		
		return "pageedit/"+service;
	}
	
	@ModelAttribute("submenu")
	ArrayList<Menu> subMenu( ) {
		return InitData.getSubmenusbyCateName("pageedit");
	}	
	@ModelAttribute("ppp")
	PPPData servicename(@PathVariable String service ) {
		PPPData aa= new PPPData();
		aa.setService(service);
		return aa;
	}	
	@RequestMapping
	String view(@PathVariable String service) {	
		if(service.endsWith("Reg")) {
			return "admin/page/alter";
			}
	
		return "admin/index";
	}
	
}
