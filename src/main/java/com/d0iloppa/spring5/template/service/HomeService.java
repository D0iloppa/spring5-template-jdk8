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
	
	
	public String getCurrentTime() {
		// TODO Auto-generated method stub
		
		
		return homeDAO.selectOne("HomeMapper.selectNow");
	}

}
