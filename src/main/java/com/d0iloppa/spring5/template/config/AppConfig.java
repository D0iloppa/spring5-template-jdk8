/**
 * 
 */
package com.d0iloppa.spring5.template.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;

import org.springframework.core.env.Environment;

import org.springframework.stereotype.Component;

@Component
public class AppConfig {
	
	@Autowired
	private Environment env;
	
	public String get(String key) {
		return get(key, String.class);
	}
	
	public String get(String key, String defaultValue) {
		return get(key, defaultValue, String.class);
	}


	public <T> T get(String key, Class<T> type) {
	    return env.getProperty(key, type);
	}
	
	public <T> T get(String key, T defaultValue, Class<T> type) {
		T value = env.getProperty(key, type);
		if(value == null) value = defaultValue;
	    return value;
	}
	
	
	
	@Value("${config.test}")
	private String configTest;

	public String getConfigTest() {
		return configTest;
	}
	

}
