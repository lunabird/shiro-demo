package com.frank.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.frank.entity.ProtectedService;


@Controller
public class HomeController {
	@RequestMapping(value="home")
	public String home(HttpServletRequest req, HttpServletResponse response, Model model){
//		System.out.println("access to home controller.");
		String username = (String)SecurityUtils.getSubject().getPrincipal();
//		System.out.println("username:"+username);
		model.addAttribute("username", username);
		String method = req.getParameter("method");
//		System.out.println("method:"+method);
		

		ProtectedService protectedService = new ProtectedService();
		
		try {
			if ("getUsers".equals(method)) {
				model.addAttribute("users", protectedService.getUsers());
			} else if ("getRoles".equals(method)) {
				model.addAttribute("roles", protectedService.getRoles());
			} else if ("getSystemTime".equals(method)) {
				model.addAttribute("systemTime", protectedService.getSystemTime());
			} else if ("sum".equals(method)) {
				int a = Integer.parseInt(req.getParameter("a"));
				int b = Integer.parseInt(req.getParameter("b"));
				model.addAttribute("sum",protectedService.sum(a, b));
			} else if ("diff".equals(method)) {
				int a = Integer.parseInt(req.getParameter("a"));
				int b = Integer.parseInt(req.getParameter("b"));
				model.addAttribute("diff",protectedService.diff(a, b));
			} else if ("getHomeFiles".equals(method)) {
				model.addAttribute("homeFiles",protectedService.getHomeFiles());
			} else if ("getGreetingMessage".equals(method)) {
				String name = req.getParameter("name");
				model.addAttribute("greetingMessage",protectedService.getGreetingMessage(name));
			}
		} catch(AuthenticationException e) {
			System.out.println("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\nerrorMessage"+ e.getMessage());
			model.addAttribute("errorMessage", "catch AuthenticationException");
		}
		
		return "home";
	}
}
