package com.example.demo.controller;

import com.example.demo.Repository.ResultRepository;
import com.example.demo.model.*;
import com.example.demo.services.DepartmentService;
import com.example.demo.services.ResultService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpSession;
import java.util.List;

@RestController
public class chartController {

    @Autowired
    ResultRepository resultRepository;

    @Autowired
    ResultService resultService;

    @Autowired
    DepartmentService departmentService;

    @RequestMapping("/piechart/{id}")
    public ResponseEntity<?> getPieChart(@PathVariable(value = "id") long dept_id){
        Department department = departmentService.findById(dept_id);
        List<Output> outputList = resultRepository.groupBy(department.getDeptname());
        return new ResponseEntity<>(outputList, HttpStatus.OK);
    }

    @GetMapping("/department-report/{id}")
    public RedirectView getReportByDept(@PathVariable (value = "id") long dept_id, HttpSession session){
        Department department = departmentService.findById(dept_id);
        List<DeptReport> result = resultService.bestcourseindept(department.getDeptname());
        session.setAttribute("dname",department.getDeptname());
        session.setAttribute("deptId",department.getDeptId());
        session.setAttribute("result",result);
        RedirectView rv= new RedirectView();
        String rurl = "/chart.jsp?id="+Long.toString(department.getDeptId());
        rv.setUrl(rurl);
        return rv;
    }

    @GetMapping("/overall-report")
    public RedirectView overallReport(HttpSession session){
        List<Output2> result = resultService.bestscoreindept();
        List<Output3> result1 = resultService.lowestscoreindept();
        List<Output4> result2 = resultService.bestscoreinuniv();
        session.setAttribute("result",result);
        session.setAttribute("result1",result1);
        session.setAttribute("result2",result2);
        RedirectView rv= new RedirectView();
        String rurl = "/report.jsp";
        rv.setUrl(rurl);
        return rv;
    }

}