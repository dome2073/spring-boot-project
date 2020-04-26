package com.lost.site.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data //?
@AllArgsConstructor //? 
@NoArgsConstructor //?

public class User {
	private long user_num;
	private String user_id;
	private String user_pw;
	private String user_email;
	private String user_name;
	private String user_nikname;
	private String user_phone;
	private String user_address;
	private String user_date;
	
}
 