package com.kosmo.springapp.config;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.support.TransactionTemplate;

import com.zaxxer.hikari.HikariDataSource;

@MapperScan(value={"com.kosmo.springapp.service.impl"},sqlSessionFactoryRef = "sqlSessionFactory")
@Configuration
public class MyBatisConfig {
	private final ApplicationContext applicationContext;
	public MyBatisConfig(ApplicationContext applicationContext) {
		this.applicationContext=applicationContext;
	}
	@Bean
	public SqlSessionFactory sqlSessionFactory(DataSource dataSource) {		
		SqlSessionFactory factory=null;
		try {
			SqlSessionFactoryBean factoryBean = new SqlSessionFactoryBean();
			factoryBean.setDataSource(dataSource);//데이타 소스로 히카리 전달
			factoryBean.setTypeAliasesPackage("com.example.springapp");//
			factoryBean.setMapperLocations(applicationContext.getResources("classpath:mybatis/mapper/**/*.xml"));
			factory=factoryBean.getObject();
		}
		catch(Exception e) {e.printStackTrace();}
		return factory;		
		  
	}
	@Bean
	public SqlSessionTemplate sqlSessionTemplate(SqlSessionFactory sqlSessionFactory) {
		return new SqlSessionTemplate(sqlSessionFactory);
	}////////////////
}
