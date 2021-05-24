package com.user.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.model.AlterDTO;
import com.model.DbMapper;
import com.model.MovieAction4;
import com.model.MovieReviewDTO;

@Service
public class MoviereviewinsertReg implements MovieAction4{

	@Resource
	DbMapper mm;
	
	@Override
	public Object execute(MovieReviewDTO dto) {
		//System.out.println("MovieReviewInsertReg 서비스빈. 영화번호"+dto.getCate());
		AlterDTO alt = new AlterDTO();
		alt.setMsg(dto.getUserid()+"님 관람평 작성 완료.");
		alt.setUrl( "moviedetail?sub=review&ind="+dto.getCate());
		
		System.out.println("reg에서 보는 id: "+dto.getUserid());
		if(dto.getUserid()==null) {
			alt.setMsg("로그인이 필요한 기능입니다.");
			alt.setUrl("/member/login/loginForm");
			return alt;
		}

		mm.reviewinsert(dto);
		
		return alt;
	}
	
}