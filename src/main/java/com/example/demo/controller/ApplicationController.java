package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class ApplicationController {

    @RequestMapping("/")
    public String home(){
        return "home.jsp";
    }


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

//    @RequestMapping("/show-results")
//    public List<FeedbackResult> getAllResults(@RequestParam int courseId){
//       return resultService.getAllResults(courseId);
//    }



}
