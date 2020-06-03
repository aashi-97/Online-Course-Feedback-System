package com.example.demo.controller;

import com.example.demo.Repository.CourseRepository;
import com.example.demo.Repository.UserRepository;
import com.example.demo.model.Course;
import com.example.demo.model.User;
import com.example.demo.services.CourseService;
import com.example.demo.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@org.springframework.web.bind.annotation.RestController
public class RestController {
    
    @Autowired
    private UserRepository userRepository;

    @Autowired
    private UserService userService;

    @Autowired
    private CourseService courseService;

    @GetMapping("/")
    public String home()
    {
        return "this is home page";
    }

    @GetMapping("/saveuser")
    public String saveUser(@RequestParam String username, @RequestParam int rollnumber, @RequestParam String password){
        User user = new User(username,rollnumber,password);
        userService.saveMyUser(user);
        return "saved";
    }

    @GetMapping("/savecourse")
    public String saveCourse(@RequestParam String coursename , @RequestParam String courseid, @RequestParam String facultyname,@RequestParam int contactnumber,@RequestParam String department,@RequestParam String university){
        Course course = new Course(coursename,courseid,facultyname,contactnumber,department,university);
        courseService.saveMyCourse(course);
        return "saved";
    }

}