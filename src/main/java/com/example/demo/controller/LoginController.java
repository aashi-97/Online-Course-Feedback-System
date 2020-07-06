package com.example.demo.controller;

import com.example.demo.Repository.AdminRepository;
import com.example.demo.Repository.UserRepository;
import com.example.demo.model.Admin;
import com.example.demo.model.Department;
import com.example.demo.model.User;
import com.example.demo.services.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/login")
public class LoginController {

    @Autowired
    UserRepository userRepository;

    @Autowired
    AdminRepository adminRepository;

    @Autowired
    DepartmentService departmentService;

    @RequestMapping(value="/verifyuser" , method= RequestMethod.GET)
    public RedirectView create(@RequestParam("rollnumber") String rollnumber,
                               @RequestParam("password") String password ,
                               RedirectAttributes redirectAttrs,
                               HttpSession session

    ){
        List<User> user = new ArrayList<User>();
        user = userRepository.findAll();

        for(User u: user){
            if((password).equals(u.getPassword()) && (rollnumber).equals(u.getRollnumber())){
                session.setAttribute("userId", u.getUserId());
                session.setAttribute("username", u.getUsername());
                session.setAttribute("rollnumber", u.getRollnumber());
                session.setAttribute("password", u.getPassword());
                session.setAttribute("department", u.getDepartment());
                session.setAttribute("programme", u.getProgramme());
//                session.setAttribute("semester", u.getSemester());
                session.setAttribute("email",u.getEmail());

                RedirectView rv = new RedirectView();
                String rurl="/studentdashboard.jsp?id="+Long.toString(u.getUserId());
                rv.setUrl(rurl);
                return rv;

            }

        }
        RedirectView rv = new RedirectView();
        session.setAttribute("error","Invalid rollnumber or password");
        String failLogin = "/login.jsp";
        rv.setUrl(failLogin);

        return rv;
    }

    @RequestMapping(value="/verifyadmin" , method= RequestMethod.GET)
    public RedirectView createadmin(@RequestParam("email") String email,
                                    @RequestParam("password") String password ,
                                    RedirectAttributes redirectAttrs,
                                    HttpSession session

    ){
        List<Admin> admin = new ArrayList<Admin>();
        admin = adminRepository.findAll();

        for (Admin a: admin){
            if((password.equals(a.getPassword())) && (email).equals(a.getEmail())){
                session.setAttribute("password",a.getPassword());
                session.setAttribute("email",a.getEmail());
                List<Department> departments = departmentService.findAll();
                session.setAttribute("departments",departments);
                RedirectView rv = new RedirectView();
                String rurl="/admindashboard.jsp";
                rv.setUrl(rurl);
                return rv;
            }
        }
        RedirectView rv = new RedirectView();
        session.setAttribute("error","Invalid email or password");
        String failLogin = "/adminlogin.jsp";
        rv.setUrl(failLogin);

        return rv;
    }

}
