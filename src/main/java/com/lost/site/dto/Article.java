package com.lost.site.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data //?
@AllArgsConstructor //? 
@NoArgsConstructor //?

public class Article {
	
	private String atc_num; //물품관리번호
	private String atc_type; // 물품종류
	private String atc_name; // 물품명
	private String atc_username; // 분실자명
	private String atc_place; // 습득장소/분실장소
	private String atc_placedt; //습득보관장소 / 분실장소상세
	private String atc_area; //분실지역
	private String atc_Date; //습득날짜/ 분실날짜
	private String atc_thing; //습득, 분실정보 상세
	private String atc_thing_type;  //습득,분실정보 상세정보공개여부
	private String atc_image; //이미지
	private String atc_status; //보관상태
	private String atc_time; //습득시간
	private long atc_hit; // 조회
	private String cate; // 분류명
	private String kp_num; //기관 고유번호
	private String kp_id; //기관명
	private String tel; //전화번호
}
