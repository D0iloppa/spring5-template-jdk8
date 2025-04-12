/**
 * 
 */
package com.d0iloppa.spring5.template.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.d0iloppa.spring5.template.dao.HomeDAO;

@Service
public class HomeService {
	
	
	
	@Autowired
    private HomeDAO homeDAO;
	
	
	

	/**
	 * 1. 메소드명 : getCurrentTime
	 * 2. 작성일: 2025. 4. 12.
	 * 3. 작성자: doil
	 * 4. 설명: 
	 * 5. 수정일: doil
	 */
	public String getCurrentTime() {
		// TODO Auto-generated method stub
		
		
		return homeDAO.selectOne("HomeMapper.selectNow");
	}

}
