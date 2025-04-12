/**
 * 
 */
package com.d0iloppa.spring5.template.config;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;

import org.springframework.stereotype.Component;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Component
@PropertySource("classpath:config/app.properties")
public class AppConfig {
	
	private static final Logger log = LoggerFactory.getLogger(AppConfig.class);
	
	
	@Autowired
	private Environment env;
	
	@PostConstruct
	public void init() {
	    // log.info("✅ DB URL: {}", env.getProperty("db.url"));
	}
	

	
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
