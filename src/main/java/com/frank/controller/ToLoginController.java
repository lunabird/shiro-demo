package com.frank.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by liyan on 2016/2/27.
 */
@Controller
public class ToLoginController {
    @RequestMapping("/login")
    public String toLogin(){
        return "login";
    }
}
