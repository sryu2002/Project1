package com.doglife.db.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.doglife.db.dao.AdoptionDao;
import com.doglife.db.dto.BoardDto;
import com.doglife.db.dto.ListDto;
import com.doglife.db.util.PagingUtil;

import lombok.extern.java.Log;

@Service
@Log
public class AdoptionService {

	private ModelAndView mv;

	private AdoptionDao aDao;


	int listCnt = 5;

	public ModelAndView addAdoptionResult(HttpSession session, RedirectAttributes rttr) {
		log.info("serv.addAdoptionResult()");

		int result = (int) session.getAttribute("testResult");

		String customerid = (String)session.getAttribute("customerId");

		int a = 0;

		if(result > 70) {
			a = 1;
		}else {
			a = 0;
		}


		try {
			aDao.addAdoptionResult(a, customerid);

			mv.setViewName("home");
			rttr.addFlashAttribute("msg", "강아지를 입양할 자격이 있습니다.");
		}catch(Exception e) {

			mv.setViewName("home");
			rttr.addFlashAttribute("msg", "강아지를 입양할 자격이 없습니다.");
		}


		mv.setViewName("AdoptionResult");

		return mv;
	}

	// Have to finish!!!
	public ModelAndView testResult(HttpSession session) {

		return null;
	}





	public ModelAndView showBreedRecommend(ListDto list, HttpSession session) {
		log.info("serv.showBreedRecommend");
		mv = new ModelAndView();

		int pageNum = list.getPageNum();
		list.setPageNum((pageNum-1)*listCnt);
		list.setListCnt(listCnt);

		List<BoardDto> breedList = aDao.getBreedRecommend(list);

		mv.addObject("breedList", breedList);

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

		mv.setViewName("breedList");

		return mv;
	}

	//Page Html Production algorithm
	public String getPaging(ListDto list) {
		log.info("serv.getPaging()");
		
		String pageHtml = null;

		int maxNum = aDao.boardCountSelect(list);

		int pageCnt = 5;

		String listName = "showBreed?";

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

	public ModelAndView showAdoptionlist(ListDto list, HttpSession session) {
		log.info("serv.showAdoption()");
		mv = new ModelAndView();

		int pageNum = list.getPageNum();
		list.setPageNum((pageNum-1)*listCnt);
		list.setListCnt(listCnt);



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

		mv.setViewName("adoptionlist");

		return mv;
	}

	public ModelAndView showAdoptionReview(ListDto list, HttpSession session) {
		log.info("serv.showAdoptionReview()");
		
		mv = new ModelAndView();

		int pageNum = list.getPageNum();
		list.setPageNum((pageNum-1)*listCnt);
		list.setListCnt(listCnt);

		List<BoardDto> reviewList = aDao.getBreedRecommend(list);

		mv.addObject("reviewList", reviewList);

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

		mv.setViewName("adoptionReview");

		return mv;
	}

	public String adoptionReviewRegister(MultipartHttpServletRequest multi, HttpSession session,
			RedirectAttributes rttr) {
		log.info("serv.adoptionReviewRegister()");
		
		String view = null;
		String msg = null;
		
		String id = multi.getParameter("id");
		String date = multi.getParameter("date");
		String title = multi.getParameter("title");
		String contents = multi.getParameter("contents");
		String fileCheck = multi.getParameter("fileCheck");
		
		contents = contents.trim();
		
		BoardDto board = new BoardDto();
		board.setB_id(id);
		board.setB_title(title);
		board.setB_contents(contents);
		
		
		
		return view;
	}

	

}
