package com.example.demo.controller;


import com.example.demo.Repository.UserRepository;
import com.example.demo.model.Course;
import com.example.demo.model.User;
import com.example.demo.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpSession;
import java.util.List;

@RestController
@RequestMapping("/student")
public class UserController {

    @Autowired
    UserService userService;

    @Autowired
    UserRepository userRepository;

    @RequestMapping(value = "/adduser", method = RequestMethod.POST)
    public RedirectView adduser(
            @RequestParam String username,
            @RequestParam String rollnumber,
            @RequestParam String programme,
            @RequestParam String department,
            @RequestParam String email,
            @RequestParam String semester,
            @RequestParam String password,
            HttpSession session
    ){
        session.removeAttribute("rollnumber");
        session.removeAttribute("email");

        List<User> user;
        user=userService.findAll();

        for (User u: user) {
            if ((rollnumber).equals(u.getRollnumber()) && (email).equals(u.getEmail())) {
                session.setAttribute(rollnumber, u.getRollnumber());
                session.setAttribute(email, u.getEmail());
                RedirectView redirectView = new RedirectView();
                redirectView.setContextRelative(true);
                redirectView.setUrl("/failed.jsp");
                return redirectView;
            } else if ((rollnumber).equals(u.getRollnumber())) {
                session.setAttribute(rollnumber, u.getRollnumber());
                RedirectView redirectView = new RedirectView();
                redirectView.setContextRelative(true);
                redirectView.setUrl("/failed.jsp");
                return redirectView;
            } else if ((email).equals(u.getEmail())) {
                session.setAttribute(email, u.getEmail());
                RedirectView redirectView = new RedirectView();
                redirectView.setContextRelative(true);
                redirectView.setUrl("/failed.jsp");
                return redirectView;
            }
        }
        User user1 = new User();
        user1.setUsername(username);
        user1.setRollnumber(rollnumber);
        user1.setDepartment(department);
        user1.setEmail(email);
        user1.setProgramme(programme);
        user1.setPassword(password);
        user1.setSemester(semester);

        userService.save(user1);
        RedirectView redirectView = new RedirectView();
        redirectView.setContextRelative(true);
        redirectView.setUrl("/home.jsp");
        return redirectView;
    }

    @RequestMapping(value = "/updatepassword/{id}",method = RequestMethod.POST)
    public RedirectView updatepassword(
            @PathVariable(value = "id") long user_id,
            @RequestParam String password,
            HttpSession session
    ){
        User user = userRepository.findById(user_id).orElse(null);
        System.out.println("hellllo thereeeeeeeeeeeeeee");

        user.setPassword(password);
        userRepository.save(user);
        session.setAttribute("password",user.getPassword());
        RedirectView rv = new RedirectView();
        String rurl="/studentdashboard.jsp?id="+Long.toString(user.getUserId());
        rv.setUrl(rurl);
        return rv;
    }

}
