package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class adminController {

    @RequestMapping("/admin")
    public String adminPage(){
        return "admin";
    }
}
