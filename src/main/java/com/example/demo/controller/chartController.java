package com.example.demo.controller;

import com.example.demo.Repository.ResultRepository;
import com.example.demo.model.Output;
import com.example.demo.model.Output2;
import com.example.demo.model.Output3;
import com.example.demo.model.Output4;
import com.example.demo.services.ResultService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
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

    @RequestMapping("/piechart")
    public ResponseEntity<?> getPieChart(){
        List<Output> outputList = resultRepository.groupBy();
        return new ResponseEntity<>(outputList, HttpStatus.OK);
    }

    @GetMapping("/overall-report")
    public RedirectView getAllCourses(HttpSession session){
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