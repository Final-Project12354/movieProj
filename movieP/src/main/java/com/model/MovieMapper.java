package com.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

//DAO역할을 하는 곳.
@Mapper
public interface MovieMapper {
	List<MovieInfoDTO> movielist();
}
