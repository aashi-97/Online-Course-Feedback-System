package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class adminController {

    @RequestMapping("/admin")
    public String adminPage(){
        return "admin";
    }
}
