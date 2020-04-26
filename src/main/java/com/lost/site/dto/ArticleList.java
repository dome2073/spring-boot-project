package com.lost.site.dto;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data //?
@AllArgsConstructor //? 
@NoArgsConstructor //?
public class ArticleList {

	private int ArticleTotalCount; //messageTotalCount = 작성된 게시물 개수
	private int currentPageNumber; 
	private List<Article> articleList;
	private int pageTotalCount; // pageTotalCount = 페이지 수
	private int articleCountPerPage; // messageCountPerPage = 한 페이지에 들어가는 게시물 수 (상수)
	private int firstRow;
	private int endRow;
	
	
	public ArticleList(List<Article> articleList, int ArticleTotalCount, int currentPageNumber,
			int articleCountPerPage, int startRow, int endRow) {
		this.articleList = articleList;
		this.ArticleTotalCount = ArticleTotalCount;
		this.currentPageNumber = currentPageNumber;
		this.articleCountPerPage = articleCountPerPage;
		this.firstRow = startRow;
		this.endRow = endRow;
		calculatePageTotalCount();
	}
	
	//전체페이지수를 구하는 메서드
			private void calculatePageTotalCount() {
				if (ArticleTotalCount == 0) { //messageTotalCount = 작성된 게시물 개수
					pageTotalCount = 0; // pageTotalCount = 페이지 수  //게시물 개수가 0 이면 페이지수 0
				} else { //게시물 개수가 0 이 아닐경우
					//페이지 수 = 작성된 게시물 수 /  한 페이지에 들어가는 게시물 수 (상수)
					// 페이지 수  = 작성된 게시물 수(10) / 한페이지에 방명록이 3개씩 = 3(페이지 수)...나머지 1
					pageTotalCount = ArticleTotalCount / articleCountPerPage;
					// 몫이 1이상 남았을 경우 페이지수+1
					if (ArticleTotalCount % articleCountPerPage > 0) {
						pageTotalCount++;
					}
				}
			}
			
			
	public boolean isEmpty() {
		return ArticleTotalCount == 0;
	}
}
