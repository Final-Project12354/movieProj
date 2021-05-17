package com.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface DbMapper {

	List<MovieTimeDTO> movieTime();
	List<MovieInfoDTO> movieInfo();
	List<MovieInfoDTO> movieInfoBefore();
	List<MovieInfoDTO> movieInfoAfter();
	
	
	MovieInfoDTO movieDetail(Integer m_index);

	void insertMovieTime(MovieTimeDTO dto);

	MovieInfoDTO findMovie(String movietitle);
	List<MovieTimeDTO> findMovieTime(String movietitle);
	List<MovieInfoDTO> movielist();
	
	
	
	//게시판 page 이동.
	int totalCnt(HashMap<String, Object> map);
	
	//영화정보 list 
	List<MovieInfoDTO> movieinfolist(HashMap<String,Object> map);
	
	// 영화 제목으로 인덱스 Integer뽑아오기.
	Integer getIndexByTitle(String movietitle);
	
	//영화정보insert
		List<ActorDTO> findactor(String actorname);	
	void movieinfoinsert(MovieInfoDTO dto);
	void actormovieinsert(ActorDTO dto);
	void catemovieinsert(CateDTO dto);
	void movieimgin(MimgDTO dto);
	
	
	MovieInfoDTO pullmovieinfo(String movietitle);	
	
	List<ActorDTO> pullactor(Integer m_index);
	List<CateDTO> pullcate(Integer m_index);
	List<MimgDTO> pullimg(Integer m_index);
	
	void memjoin(MemberDTO mdto);
	MemberDTO memlogin(MemberDTO mdto);
	
	
}
