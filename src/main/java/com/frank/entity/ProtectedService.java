package com.frank.entity;

import java.io.File;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authz.annotation.RequiresPermissions;

public class ProtectedService {
	private static final List<String> USERS = Arrays.asList("huangpeng","lee");
	
	private static final List<String> ROLES = Arrays.asList("admin","user");
	
	@RequiresPermissions("user-roles:*")
	public List<String> getUsers() {
		if(SecurityUtils.getSubject().isPermitted("user-roles:*")){
			return USERS;
		}
		throw new AuthenticationException();
	}
	
	@RequiresPermissions("user-roles:*")
	public List<String> getRoles() {
		if(SecurityUtils.getSubject().isPermitted("user-roles:*")){
			return ROLES;
		}
		throw new AuthenticationException();
	}
	
	@RequiresPermissions("system:read:time")
	public Date getSystemTime() {
		if(SecurityUtils.getSubject().isPermitted("system:read:time")){
			return Calendar.getInstance().getTime();
		}
		throw new AuthenticationException();
	}
	
	@RequiresPermissions("calculator:add")
	public int sum(int a, int b) {
		if(SecurityUtils.getSubject().isPermitted("calculator:add")){
			return a+b;
		}
		throw new AuthenticationException();
	}
	
	@RequiresPermissions("calculator:subtract")
	public int diff(int a, int b) {
		if(SecurityUtils.getSubject().isPermitted("calculator:subtract")){
			return a-b;
		}
		throw new AuthenticationException();
	}
	
	@RequiresPermissions("filesystem:read:home")
	public List<String> getHomeFiles() {
		File homeDir = new File(System.getProperty("user.home"));
		if(SecurityUtils.getSubject().isPermitted("filesystem:read:home")){
			return Arrays.asList(homeDir.list());
		}
		throw new AuthenticationException();
	}

	public String getGreetingMessage(String name) {
		return String.format("Hello %s",name);
	}
}
