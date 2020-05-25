package com.example.demo;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class homeController {

    @RequestMapping("/")
    public String home()
    {
        return "home";
    }
}
