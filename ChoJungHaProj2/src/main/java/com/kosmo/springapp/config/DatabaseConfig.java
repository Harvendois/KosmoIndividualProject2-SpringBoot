package com.kosmo.springapp.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

@Configuration
public class DatabaseConfig {
	
	@Value("${driver-class-name}")
	private String driverClassName;
	@Value("${oracle-url}")
	private String url;
	@Value("${user}")
	private String username;
	@Value("${password}")
	private String password;
	
	@Bean
	public DataSource dataSource() {
		HikariConfig hikariConfig = new HikariConfig();
		hikariConfig.setDriverClassName(driverClassName);
		hikariConfig.setJdbcUrl(url);
		hikariConfig.setUsername(username);
		hikariConfig.setPassword(password);
		hikariConfig.setAutoCommit(true);
		hikariConfig.setConnectionTimeout(30000);
		hikariConfig.setMaximumPoolSize(20);
		return new HikariDataSource(hikariConfig);
	}
}
