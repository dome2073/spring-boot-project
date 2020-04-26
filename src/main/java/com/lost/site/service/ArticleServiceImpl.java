package com.lost.site.service;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lost.site.dao.ArticleDao;
import com.lost.site.dto.Article;
import com.lost.site.dto.ArticleList;

@Service
public class ArticleServiceImpl implements ArticleService {
	
	@Autowired
	ArticleDao articleDao;
	
	private static final int MESSAGE_COUNT_PER_PAGE = 10;
	
	public ArticleList getList(String atc_type, int pageNum){
		
		int currentPageNumber = 1;
		
		if (pageNum > 0) {
			currentPageNumber = pageNum;
		}
		
		int articleTotalCount = articleDao.selectCount(atc_type);
		
		List<Article> articleList = null;
		int firstRow = 0;
		int endRow = 0;
		
		//전체 게시물 수가 1개이상이면 (게시물이 있다면)  
		if (articleTotalCount > 0) { 
					
					//<ORACLE>
//					//currentPageNumber : 사용자가 클릭한 페이지
//					//1페이지는 1-3, 2페이지는 4-6, 3페이지는 6-9 를 표현하기 위해 만든 변수들
//					firstRow = (currentPageNumber - 1) * MESSAGE_COUNT_PER_PAGE + 1;
//					endRow = firstRow + MESSAGE_COUNT_PER_PAGE - 1;
//					//해당하는 페이지에 방명록을 보여주는 selectList메서드 호출
//					messageList = MessageDao.selectList(firstRow, endRow);
					
					//mysql사용으로 변경 0번째 부터 사용할것이므로
					//firstRow = (currentPageNumber - 1) * USER_COUNT_PER_PAGE + 1;
					
					
					firstRow = (currentPageNumber - 1) * MESSAGE_COUNT_PER_PAGE;
					//endRow = firstRow + USER_COUNT_PER_PAGE - 1;
					
					//DB에서 클릭한 페이지수 (1)= 0부터 5개를 보여줌, (2) = 5~10 
					articleList = articleDao.selectList(atc_type,firstRow,MESSAGE_COUNT_PER_PAGE);
				} else {
					//게시물이 없다면
					currentPageNumber = 0;
					//게시물이 없다는것을 알림
					articleList = Collections.emptyList();
				}
				//messageList : selectList(DAO)에서 반환한 결과를 리스트에 담음 
				//messageTotalCount : 전체 게시물수
				//currentPageNumber : 사용자가 클릭한 페이지
				//MESSAGE_COUNT_PER_PAGE : 한 페이지당 보여줄 방명록 수
				//== MessageListView(생성자)초기화하고 전체 페이지 수를 구하는 메서드를 호출한다.
				
				return new ArticleList(articleList, articleTotalCount,currentPageNumber, MESSAGE_COUNT_PER_PAGE,firstRow, endRow);
		
	}
	
	
	@Override
	public Article getOne(String atc_num) {
		// TODO Auto-generated method stub
		return articleDao.getOne(atc_num);
	}

	@Override
	public void hitUp(String atc_num) {
		articleDao.hitUp(atc_num);
		
	}
	
	
	
	
}
