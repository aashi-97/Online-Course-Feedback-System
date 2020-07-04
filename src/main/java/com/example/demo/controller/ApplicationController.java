package com.example.demo.controller;

import com.example.demo.Repository.UserRepository;
import com.example.demo.model.Admin;
import com.example.demo.model.Course;
import com.example.demo.model.User;
import com.example.demo.services.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@Controller
public class ApplicationController {

    @RequestMapping("/")
    public String home(){
        return "home.jsp";
    }

//    @RequestMapping("/register")
//    public String register(){
//        return "register";
//    }
//
//    @PostMapping("/save-user")
//    public String registerUser(@ModelAttribute User user, BindingResult bindingResult){
//        userService.saveMyUser(user);
//        return "home";
//    }
//
//    @GetMapping("/show-users")
//    public String showRegisteredStudents(HttpServletRequest request){
//        request.setAttribute("users",userService.showRegisteredStudents());
//        return "registeredStudents";
//    }
//
//    @RequestMapping("/delete-user")
//    public String deleteUser(HttpServletRequest request,@RequestParam int id){
//        userService.deleteMyUser(id);
//        request.setAttribute("users",userService.showRegisteredStudents());
//        return "registeredStudents";
//    }
//
//    @RequestMapping("/edit-user")
//    public String editUser(@RequestParam int id,HttpServletRequest request){
//        request.setAttribute("user", userService.editUser(id).get());
//        return "update";
//    }
//
//    @RequestMapping("/login")
//    public String login(){
//        return "login.jsp";
//    }
//
//    @RequestMapping("/adminlogin")
//    public String adminlogin(){
//        return "adminlogin.jsp";
//    }

//    @RequestMapping ("/login-user")
//    public String loginUser(@ModelAttribute User user,HttpServletRequest request){
//        if(userService.findByRollnumberAndPassword(user.getRollnumber(),user.getPassword())!= null){
////            request.setAttribute("feedbackcourses", courseService.showfeedbackCourses());
//            return "studentdashboard.jsp";
//        }else{
//            request.setAttribute("error", "Invalid Username or Password");
//            return"login.jsp";
//        }
//    }

//    @RequestMapping ("/login-admin")
//    public String loginAdmin(@ModelAttribute Admin admin, HttpServletRequest request){
//        if(adminService.findByEmailAndPassword(admin.getEmail(),admin.getPassword())!= null){
//            return "admindashboard.jsp";
//        }else{
//            request.setAttribute("error", "Invalid Username or Password");
//            return"adminlogin.jsp";
//        }
//    }
//for course
//    @RequestMapping("/addcourse")
//    public String course(){
//        return "addcourse.jsp";
//    }
//
//    @PostMapping("/save-course")
//    public String addcourse(@ModelAttribute Course course, BindingResult bindingResult){
//        courseService.saveMyCourse(course);
//        return "admindashboard";
//    }
//
//    @GetMapping("/show-courses")
//    public String showAddedCourses(HttpServletRequest request) {
//        request.setAttribute("courses", courseService.showAddedCourses());
//        return "addedcourses";
//    }
//
//    @RequestMapping("/delete-course")
//    public String deleteCourse(HttpServletRequest request,@RequestParam int id){
//        courseService.deleteCourse(id);
//        request.setAttribute("courses",courseService.showAddedCourses());
//        return "addedcourses";
//    }
//
//    @RequestMapping("/edit-course")
//    public String editCourse(@RequestParam int id,HttpServletRequest request){
//        request.setAttribute("course", courseService.editCourse(id).get());
//        return "updatecourse";
//    }

//    @RequestMapping("/admindashboard")
//    public String adminDashboard() {
//        return "admindashboard.jsp";
//    }
//
//    @RequestMapping("/feedback-form")
//    public String feedbackForm(){
//        return "feedbackform";
//    }

//    @PostMapping("/save-result")
//    public String saveresult(@ModelAttribute FeedbackResult feedbackResult,BindingResult bindingResult){
//        resultService.savefeedback(feedbackResult);
//        return "studentdashboard";
//    }

//    @RequestMapping("/show-results")
//    public List<FeedbackResult> getAllResults(@RequestParam int courseId){
//       return resultService.getAllResults(courseId);
//    }

//    @RequestMapping("/form-user")
//    public String printResult(@RequestParam int id,HttpServletRequest request){
//        request.setAttribute("results", resultService.printResult(id).get());
//        return "printResult";
//    }

}
