package com.frank.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.frank.entity.Myresource;

@Controller
public class PermissionController {
    @RequestMapping(value="/create.html")
    public String create(){
        return "/permission/create";
    }@RequestMapping(value="/delete.html")
     public String delete(){
        return "/permission/delete";
    }@RequestMapping(value="/query.html")
     public String query(){
        return "/permission/query";
    }@RequestMapping(value="/update.html")
     public String update(){
        return "/permission/update";
    }
    
    @RequestMapping(value="/myResource.html")
    public String readBooks(@ModelAttribute("model") ModelMap model){
    	Myresource mr = new Myresource();
    	model.addAttribute("bookList", mr.getBooks()==null?"对不起，您没有访问Books的权限":mr.getBooks());
    	model.addAttribute("drink", mr.getDrink()==null?"对不起，您没有访问drink的权限":mr.getDrink());
        return "/permission/my";
   }

}
