package com.admin.service;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.model.DbMapper;
import com.model.MovieInfoDTO;

@Service
public class Bannermovieget implements PageeditService {

	Logger logger = LoggerFactory.getLogger(getClass());

	@Resource
	DbMapper db;
	
	
	
	@Override
	public Object execute(Object obj) {
		// TODO Auto-generated method stub
		
		
		LinkedHashMap<String, String> resultmap= new LinkedHashMap<>();
		
		//db에서 가져오는게 아니라 . 링크드 해시맵으로 영화만 쫙 가져오기 .최신영화 순으로 .
		System.out.println("Bannermovieget");
		List<MovieInfoDTO> result=  db.movielistbanner();

		
		resultmap.put("total", result.size()+"");
		
		
		String movies="";
		int cnt=0;
		for (MovieInfoDTO ff : result) {
			cnt++;
			resultmap.put("영화"+( result.size()-cnt+1), ff.getMovietitle());
			//logger.info(ff.getMovietitle());
		}
	
		
		
		
		return resultmap;
		
		
		
	}

}
