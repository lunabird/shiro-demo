package com.frank.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
public class LoginController {
	@RequestMapping(value="login", method=RequestMethod.GET)
	public String login(HttpServletRequest req){
		if (SecurityUtils.getSubject().isAuthenticated()) {
			return "redirect:/home";
		} else {
			return "login";
		}
	}

	@RequestMapping(value="login", method=RequestMethod.POST)
	public String login(HttpServletRequest req,RedirectAttributes redirectAttributes,Model model) {
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		System.out.println("access to login");
		System.out.println(username+","+password);
		UsernamePasswordToken token = new UsernamePasswordToken(username, password);
		String errorMessage = null;
		try {
			SecurityUtils.getSubject().login(token);
		} catch (AuthenticationException e) {
			errorMessage = "user name doesn't exist or wrong password";
		}
		if(null == errorMessage) {
			redirectAttributes.addAttribute("username", username);
			return "redirect:/home";
		} else {
			System.out.println(errorMessage);
			req.setAttribute("errorMessage",errorMessage);
			return "login";
		}
	}
	
	@RequestMapping(value="logout")
	public String logout(HttpServletRequest req){
		SecurityUtils.getSubject().logout();
		return "redirect:/login";
	}
	
	
}
