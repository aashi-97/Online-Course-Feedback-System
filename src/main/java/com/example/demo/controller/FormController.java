package com.example.demo.controller;

import com.example.demo.Repository.CourseRepository;
import com.example.demo.model.Course;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpSession;
import java.util.List;

@RestController
public class FormController {

    @Autowired
    CourseRepository courseRepository;

    @GetMapping(value = "/fillform/{id}")
    public RedirectView feedbackform(
            @PathVariable("id") Long user_id,
            HttpSession session
    )
    {
        List<Course> courseList =courseRepository.findAll();
        session.setAttribute("courseList",courseList );
        RedirectView rv = new RedirectView();
        System.out.println(session.getAttributeNames());
        String rurl="/feedbackform.jsp?id="+Long.toString(user_id);
        rv.setUrl(rurl);
        return rv;
    }



}
