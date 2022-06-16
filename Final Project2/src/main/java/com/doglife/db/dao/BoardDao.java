package com.doglife.db.dao;

import java.util.List;

import com.doglife.db.dto.BoardDto;
import com.doglife.db.dto.ListDto;

public interface BoardDao {

	public List<BoardDto> boardListSelect(ListDto list);

	public int boardCountSelect(ListDto list);
	
	
}
