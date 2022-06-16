package com.doglife.db.util;

import lombok.AllArgsConstructor;

@AllArgsConstructor
public class PagingUtil {
	private int maxNumber; // All post number
	private int pageNumber; // Current page number
	private int listNumber; // Number of post Numbers that will be shown on one page
	private int pageNumbers; // Number of Page numbers that will be shown on one page
	private String listName;

	public String makeHtmlcode() {
		String page = null;
		StringBuffer stringbuffer = new StringBuffer();

		//Number of pages needed
		int totalpage = (maxNumber % listNumber) > 0 ? maxNumber / listNumber + 1 : maxNumber / listNumber;
		
		//current Page Number Group 
		int currentGroup = (pageNumber % listNumber) > 0 ? pageNumber / pageNumbers + 1 : pageNumber / pageNumbers;
		
		//start number of group
		int start = (currentGroup *pageNumbers)-(pageNumbers - 1);
		
		//end number of group
		int end = (currentGroup * pageNumbers) - totalpage >= 0 ? totalpage : currentGroup * pageNumbers;
		
		if(start != 1) {
			stringbuffer.append("<a class='pageNo' href='./" + listName 
					+ "pageNum=" + (start - 1) + "'>");
			stringbuffer.append("&nbsp;이전&nbsp;</a>");
		}
		
		for(int i = start; i <= end; i++) {
			if(pageNumber != i) {//현재 페이지가 아닌 페이지 번호
				stringbuffer.append("<li class=\"page-item\"><a class='page-link' href='./" + listName
						+ "pageNum=" + i + "'>");
				stringbuffer.append("&nbsp;" + i + "&nbsp;</a></li>");
			}
			else {
				stringbuffer.append("<li class=\"page-item\"><font class='page-link' style='color: red;'>");
				stringbuffer.append("&nbsp;" + i + "&nbsp;</font></li>");
			}
		}
		
		if(end != totalpage) {
			stringbuffer.append("<li class=\"page-item\"><a class='page-link' href='./" + listName
					+ "pageNum=" + (end + 1) + "'>");
			stringbuffer.append("&nbsp;다음&nbsp;</a></li>");
		}

		page = stringbuffer.toString();
		
		return page;
	}
}
