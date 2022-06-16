package com.doglife.db.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.doglife.db.dao.BoardDao;
import com.doglife.db.dto.BoardDto;
import com.doglife.db.dto.ListDto;
import com.doglife.db.util.PagingUtil;

import lombok.extern.java.Log;

@Service
@Log
public class BoardService {

	private ModelAndView mv;
	@Autowired
	private BoardDao bDao;
	
	private int listCnt = 10;
	
	// Paging + 
	public ModelAndView getBoardList(ListDto list, HttpSession session) {
		log.info("getBoardList()");
		
		mv = new ModelAndView();
		
		int pageNum = list.getPageNum();
		list.setPageNum((pageNum-1)*listCnt);
		list.setListCnt(listCnt);
		
		
		List<BoardDto> bList = bDao.boardListSelect(list);
		
		log.info("blist()");
		
		mv.addObject("bList", bList);
		
		list.setPageNum(pageNum);
		
		String pageHtml = getPaging(list);
		
		mv.addObject("pageHtml", pageHtml);
		
		session.setAttribute("pageNum", list.getPageNum());
		
		if(list.getColname() != null) {
			session.setAttribute("list", list);
		}
		else {
			session.removeAttribute("list");
		}
		
		mv.setViewName("notice");
		
		return mv;
	}
	
	//Page Html Production algorithm
	public String getPaging(ListDto list) {
		String pageHtml = null;
		
		int maxNum = bDao.boardCountSelect(list);
		
		int pageCnt = 5;
		
		String listName = "showNotice?";
		
		if(list.getColname() != null) {
			listName =  "colname="+ list.getColname()
			+ "&keyword=" + list.getKeyword() + "&";
		}
		PagingUtil paging = new PagingUtil(maxNum, 
				list.getPageNum(),
				listCnt, pageCnt, listName);
		
		pageHtml = paging.makeHtmlcode();
		
		return pageHtml;
	}
	 

//	public Map<String, List<BoardDto>> boardInsert(BoardDto board) {
//		
//		
//		
//		return ;
//	}

}
