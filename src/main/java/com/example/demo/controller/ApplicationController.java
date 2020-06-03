package com.example.demo.controller;

import com.example.demo.Repository.AdminRepository;
import com.example.demo.Repository.UserRepository;
import com.example.demo.model.Admin;
import com.example.demo.model.Course;
import com.example.demo.model.User;
import com.example.demo.services.AdminService;
import com.example.demo.services.CourseService;
import com.example.demo.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@Controller
public class ApplicationController {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private AdminService adminService;

    @Autowired
    private UserService userService;
    @Autowired
    private CourseService courseService;

    @RequestMapping("/home")
    public String home(){
        return "home";
    }

    @RequestMapping("/register")
    public String register(){
        return "register";
    }

    @PostMapping("/save-user")
    public String registerUser(@ModelAttribute User user, BindingResult bindingResult){
        userService.saveMyUser(user);
        return "home";
    }

    @GetMapping("/show-users")
    public String showRegisteredStudents(HttpServletRequest request){
        request.setAttribute("users",userService.showRegisteredStudents());
        return "registeredStudents";
    }

    @RequestMapping("/delete-user")
    public String deleteUser(HttpServletRequest request,@RequestParam int id){
        userService.deleteMyUser(id);
        request.setAttribute("users",userService.showRegisteredStudents());
        return "registeredStudents";
    }

    @RequestMapping("/edit-user")
    public String editUser(@RequestParam int id,HttpServletRequest request){
        request.setAttribute("user", userService.editUser(id).get());
        return "update";
    }

    @RequestMapping("/login")
    public String login(){
        return "login";
    }

    @RequestMapping("/adminlogin")
    public String adminlogin(){
        return "adminlogin";
    }

    @RequestMapping ("/login-user")
    public String loginUser(@ModelAttribute User user,HttpServletRequest request){
        if(userService.findByUsernameAndPassword(user.getUsername(),user.getPassword())!= null){
            request.setAttribute("feedbackcourses", courseService.showfeedbackCourses());
            return "studentdashboard";
        }else{
            request.setAttribute("error", "Invalid Username or Password");
            return"login";
        }
    }

    @RequestMapping ("/login-admin")
    public String loginAdmin(@ModelAttribute Admin admin, HttpServletRequest request){
        if(adminService.findByEmailAndPassword(admin.getEmail(),admin.getPassword())!= null){
            return "admindashboard";
        }else{
            request.setAttribute("error", "Invalid Username or Password");
            return"adminlogin";
        }
    }
//for course
    @RequestMapping("/addcourse")
    public String course(){
        return "addcourse";
    }

    @PostMapping("/save-course")
    public String addcourse(@ModelAttribute Course course, BindingResult bindingResult){
        courseService.saveMyCourse(course);
        return "admindashboard";
    }

    @GetMapping("/show-courses")
    public String showAddedCourses(HttpServletRequest request) {
        request.setAttribute("courses", courseService.showAddedCourses());
        return "addedcourses";
    }

//    @GetMapping("/login-user")
//    public String showfeedbackCourses(HttpServletRequest request) {
//        request.setAttribute("feedbackcourses", courseService.showfeedbackCourses());
//        return "studentdashboard";
//    }

    @RequestMapping("/delete-course")
    public String deleteCourse(HttpServletRequest request,@RequestParam int id){
        courseService.deleteCourse(id);
        request.setAttribute("courses",courseService.showAddedCourses());
        return "addedcourses";
    }

    @RequestMapping("/edit-course")
    public String editCourse(@RequestParam int id,HttpServletRequest request){
        request.setAttribute("course", courseService.editCourse(id).get());
        return "updatecourse";
    }

    @RequestMapping("/admindashboard")
    public String adminDashboard() {
        return "admindashboard";
    }

    @RequestMapping("/feedback-form")
    public String feedbackForm(){
        return "feedbackform";
    }


//    @RequestMapping("/studentdashboard")
//    public String studentDashboard() {
//        return "studentdashboard";
//    }

    @RequestMapping("/logout")
    public String logout() {
        return "home";
    }
}
