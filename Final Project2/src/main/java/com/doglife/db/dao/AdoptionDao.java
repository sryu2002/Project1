package com.doglife.db.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.doglife.db.dto.BoardDto;
import com.doglife.db.dto.ListDto;


public interface AdoptionDao {

	public void addAdoptionResult(int resulta, String customerId);

	public List<BoardDto> getBreedRecommend(ListDto list);

	public int boardCountSelect(ListDto list);
	
	
}
