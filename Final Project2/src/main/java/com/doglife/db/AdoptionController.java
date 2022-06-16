package com.doglife.db;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.doglife.db.dto.ListDto;
import com.doglife.db.service.AdoptionService;

import lombok.extern.java.Log;

@Controller
@Log
public class AdoptionController {
	
	private ModelAndView mv;
	
	@Autowired
	private AdoptionService aServ;
	
	@GetMapping("toAdoptionPreTest")
	public String toAdoptionPreTest() {
		log.info("toAdoptionPreTest()");
		String view = null;
		
		view = "AdoptionPreTest";
		
		return view;
	}
	
	@PostMapping(value="/testResult", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public ModelAndView testResult(HttpSession session) {
		log.info("testResult()");
		
		mv = aServ.testResult(session);
		
		
		return mv;
	}
	
	
	@GetMapping("/addAdoptionResult")
	public ModelAndView addAdoptionResult(HttpSession session, RedirectAttributes rttr) {
		log.info("addAdoptionResult");
		
		mv = aServ.addAdoptionResult(session, rttr); //Save Test Result in session
		
		return mv;
	}
	
	@GetMapping("/toBreedRecommend")
	public String toBreedRecommend(HttpSession session) {
		log.info("toBreedRecommend");
		
		String view = "BreedRecommend";
		
		return view;
	}
	
	@GetMapping("/showBreedRecommend")
	public ModelAndView showBreedRecommend(ListDto List, HttpSession session) {
		log.info("showBreedRecommend()");
		
		mv = aServ.showBreedRecommend(List, session);
		
		return mv;
	}
	
	@GetMapping("/toAdoption")
	public String toAdoption(HttpSession session) {
		log.info("toAdoption()");
		
		String view = "redirect:/adoptionlist";
		
		return view;
	}
	
	@GetMapping("/adoptionlist")
	public ModelAndView showAdoptionlist(ListDto list, HttpSession session) {
		log.info("showAdoptionlist()");
		
		mv = aServ.showAdoptionlist(list, session);
		
		return mv;
	}
	
	@GetMapping("/toAdoptionReview")
	public String toAdoptionReview(HttpSession session) {
		log.info("toAdoptionReview()");
		
		String view = "redirect:/adoptionReview";
		
		return view;
	}
	
	@GetMapping("/adoptionReview")
	public ModelAndView showAdoptionReview(ListDto list, HttpSession session) {
		log.info("showAdoptionReview()");
		
		mv = aServ.showAdoptionReview(list, session);
		
		return mv;
	}
	
	@GetMapping("/adoptionReviewWrite")
	public String toAdoptionReviewWrite(HttpSession session) {
		log.info("toAdoptionReveiwWrite()");
		
		String view = "adoptionReviewWrite";
		
		return view;
	}
	
	@PostMapping("/adoptionReviewRegister")
	public String adoptionReviewRegister(MultipartHttpServletRequest multi, HttpSession session, RedirectAttributes rttr) {
		log.info("adoptionReviewRegister()");
		
		String view = aServ.adoptionReviewRegister(multi, session, rttr);
		
		return view;
	}
	
	@GetMapping("/home2")
	public String home2(HttpSession session) {
		return "centermap";
	}
}
