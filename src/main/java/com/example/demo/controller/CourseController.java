package com.example.demo.controller;

import com.example.demo.Repository.CourseRepository;
import com.example.demo.Repository.ResultRepository;
import com.example.demo.model.Course;
import com.example.demo.model.CourseOutput;
import com.example.demo.model.Result;
import com.example.demo.services.CourseService;
import com.example.demo.services.ResultService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpSession;
import java.util.List;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping("/course")
public class CourseController {
    @Autowired
    CourseService courseService;

    @Autowired
    CourseRepository courseRepository;

    @Autowired
    ResultRepository resultRepository;

    @Autowired
    ResultService resultService;

    @RequestMapping(value="/addcourse",method = RequestMethod.POST)
    public RedirectView addcourse(
            @RequestParam String coursename,
            @RequestParam String subjectid,
            @RequestParam String facultyname,
            @RequestParam String contactnumber,
            @RequestParam String department,
            HttpSession session
    ){
        session.removeAttribute(contactnumber);
        session.removeAttribute(subjectid);

        List<Course> course;
        course=courseService.findAll();

        for (Course c: course) {
            if ((contactnumber).equals(c.getContactnumber()) && (subjectid).equals(c.getSubjectid())) {
                session.setAttribute(contactnumber, c.getContactnumber());
                session.setAttribute(subjectid, c.getSubjectid());
                RedirectView redirectView = new RedirectView();
                redirectView.setContextRelative(true);
                redirectView.setUrl("/failed.jsp");
                return redirectView;
            } else if ((contactnumber).equals(c.getContactnumber())) {
                session.setAttribute(contactnumber, c.getContactnumber());
                RedirectView redirectView = new RedirectView();
                redirectView.setContextRelative(true);
                redirectView.setUrl("/failed.jsp");
                return redirectView;
            } else if ((subjectid).equals(c.getSubjectid())) {
                session.setAttribute(subjectid, c.getSubjectid());
                RedirectView redirectView = new RedirectView();
                redirectView.setContextRelative(true);
                redirectView.setUrl("/failed.jsp");
                return redirectView;
            }
        }

        Course course1=new Course();
        course1.setCoursename(coursename);
        course1.setContactnumber(contactnumber);
        course1.setDepartment(department);
        course1.setFacultyname(facultyname);
        course1.setSubjectid(subjectid);

        courseService.save(course1);
        RedirectView redirectView = new RedirectView();
        redirectView.setContextRelative(true);
        redirectView.setUrl("/admindashboard.jsp");
        return redirectView;
    }

    @GetMapping("/viewcourse")
    public RedirectView getAllCourses(HttpSession session){
        List<Course> courseList = courseService.findAll();
        session.setAttribute("courseList",courseList);
        RedirectView rv= new RedirectView();
        String rurl = "/addedcourses.jsp";
        rv.setUrl(rurl);
        return rv;
    }

    @RequestMapping(value="/viewcoursebyid/{id}",method = RequestMethod.GET)
    public RedirectView getCourseById(@PathVariable(value = "id") long course_id,HttpSession session){
        System.out.println(course_id);
        Course course = courseService.findById(course_id);

        session.setAttribute("coursename",course.getCoursename());
        session.setAttribute("facultyname",course.getFacultyname());
        session.setAttribute("subjectid",course.getSubjectid());
        session.setAttribute("contactnumber",course.getContactnumber());
        session.setAttribute("department",course.getDepartment());

        RedirectView rv = new RedirectView();
        String rurl = "/updatecourse.jsp?id="+Long.toString(course.getCourseId());
        rv.setUrl(rurl);
        return rv;
    }

    @RequestMapping(value = "/updatecourse/{id}",method = RequestMethod.POST)
    public RedirectView updatecourse(
            @PathVariable(value = "id") long course_id,
            @RequestParam String coursename,
            @RequestParam String subjectid,
            @RequestParam String facultyname,
            @RequestParam String contactnumber,
            @RequestParam String department,
            HttpSession session
    ){
            Course course = courseRepository.findById(course_id).orElse(null);
            System.out.println("hellllo thereeeeeeeeeeeeeee");

            course.setCoursename(coursename);
            course.setFacultyname(facultyname);
            course.setSubjectid(subjectid);
            course.setDepartment(department);
            course.setContactnumber(contactnumber);
            courseRepository.save(course);
            session.setAttribute("courseId",course.getCourseId());
            session.setAttribute("coursename",course.getCoursename());
            session.setAttribute("facultyname",course.getFacultyname());
            session.setAttribute("subjectid",course.getSubjectid());
            session.setAttribute("contactnumber",course.getContactnumber());
            session.setAttribute("department",course.getDepartment());
            RedirectView rv = new RedirectView();
            String rurl ="/addedcourses.jsp";
            rv.setUrl(rurl);
            return rv;
    }

    @RequestMapping(value = "/delete/{id}")
    public RedirectView deleteCourse(@PathVariable(value = "id") Long course_id){
        courseService.deleteById(course_id);
        RedirectView redirectView = new RedirectView();
        redirectView.setContextRelative(true);
        redirectView.setUrl("/addedcourses.jsp");
        return redirectView;
    }

    @GetMapping(value="/viewresultbyCourseId/{id}")
    public RedirectView getResultByCourseId(@PathVariable(value = "id") long course_id, HttpSession session){
        Course course = courseService.findById(course_id);
        List<Result> resultList = resultService.findBycname(course.getCoursename());
        session.setAttribute("resultList",resultList);
        RedirectView rv = new RedirectView();
        String rurl = "/resultsbycourse.jsp?id="+Long.toString(course.getCourseId());
        rv.setUrl(rurl);
        return rv;
    }

    @GetMapping(value = "/viewreport/{id}")
    public RedirectView getReport(@PathVariable(value = "id") long course_id,HttpSession session){
        Course course = courseService.findById(course_id);
        List<CourseOutput> result = resultService.findPointsbycname(course.getCoursename());
        session.setAttribute("cname",course.getCoursename());
        session.setAttribute("result",result);
        RedirectView rv = new RedirectView();
        String rurl = "/coursereport.jsp?id="+Long.toString(course.getCourseId());
        rv.setUrl(rurl);
        return rv;
    }

}
