package com.frank.entity;

import java.util.Arrays;
import java.util.List;
import org.apache.shiro.SecurityUtils;

public class Myresource {
	
	private static final List<String> books = Arrays.asList("star","cloud","man");
	private static final String drink = "water";
	
	public List<String> getBooks(){
		if(SecurityUtils.getSubject().isPermitted("books:read")){
			return books;
		}
		return null;
	}
	
	public String getDrink(){
		if(SecurityUtils.getSubject().isPermitted("drink:read")){
			return drink;
		}
		return null;
	}
}
