package com.example.demo.controller;

import com.example.demo.Repository.ResultRepository;
import com.example.demo.Repository.UserRepository;
import com.example.demo.model.Course;
import com.example.demo.model.Result;
import com.example.demo.model.User;
import com.example.demo.services.CourseService;
import com.example.demo.services.ResultService;
import com.example.demo.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@RestController
@RequestMapping("/results")
public class ResultController {

    @Autowired
    ResultRepository resultRepository;

    @Autowired
    UserRepository userRepository;

    @Autowired
    CourseService courseService;

    @Autowired
    ResultService resultService;

    @Autowired
    UserService userService;



    @RequestMapping(value= "/add/{id}" , method= RequestMethod.POST)
    public RedirectView addResult(@PathVariable(value = "id") long user_id,
                                  @RequestParam String dname,
                                  @RequestParam String session,
                                  @RequestParam String cclass,
                                  @RequestParam int sem,
                                  @RequestParam String cname,
                                  @RequestParam String tname,
                                  @RequestParam int totallec,
                                  @RequestParam int lecattended,
                                  @RequestParam int ques1,
                                  @RequestParam int ques2,
                                  @RequestParam int ques3,
                                  @RequestParam int ques4,
                                  @RequestParam int ques5,
                                  @RequestParam int ques6,
                                  @RequestParam int ques7,
                                  @RequestParam int ques8,
                                  @RequestParam int ques9,
                                  @RequestParam int ques10,
                                  @RequestParam int ques11,
                                  @RequestParam int ques12,
                                  @RequestParam int ques13,
                                  @RequestParam int ques14,
                                  @RequestParam int ques15,
                                  @RequestParam int ques16,
                                  @RequestParam int ques17,
                                  @RequestParam int ques18,
                                  @RequestParam int ques19,
                                  @RequestParam int ques20,
                                  @RequestParam int ques21,
                                  @RequestParam int ques22,
                                  @RequestParam int ques23,
                                  @RequestParam int ques24,
                                  @RequestParam int ques25) throws IOException {
        System.out.println("in controller");
        Result result = new Result();
        result.setDname(dname);
        result.setSession(session);
        result.setCclass(cclass);
        result.setSem(sem);
        result.setCname(cname);
        result.setTname(tname);
        result.setTotallec(totallec);
        result.setLecattended(lecattended);
        result.setQues1(ques1);
        result.setQues2(ques2);
        result.setQues3(ques3);
        result.setQues4(ques4);
        result.setQues5(ques5);
        result.setQues6(ques6);
        result.setQues7(ques7);
        result.setQues8(ques8);
        result.setQues9(ques9);
        result.setQues10(ques10);
        result.setQues11(ques11);
        result.setQues12(ques12);
        result.setQues13(ques13);
        result.setQues14(ques14);
        result.setQues15(ques15);
        result.setQues16(ques16);
        result.setQues17(ques17);
        result.setQues18(ques18);
        result.setQues19(ques19);
        result.setQues20(ques20);
        result.setQues21(ques21);
        result.setQues22(ques22);
        result.setQues23(ques23);
        result.setQues24(ques24);
        result.setQues25(ques25);

        User user = userService.findById(user_id);
        result.setUser(user);
        resultService.save(result);
        RedirectView rv = new RedirectView();
        String rurl= "/studentdashboard.jsp?id="+Long.toString(user_id);
        rv.setUrl(rurl);
        return rv;
    }

    @RequestMapping(value = "/viewresultbyResultId/{id}", method = RequestMethod.GET)
    public RedirectView getResultByUserId(@PathVariable(value="id") long result_id,HttpSession session){
        Result result = resultService.findById(result_id);

        session.setAttribute("dname",result.getDname());
        session.setAttribute("cname",result.getCname());
        session.setAttribute("cclass",result.getCclass());
        session.setAttribute("totallec",result.getCclass());
        session.setAttribute("lecattended",result.getLecattended());
        session.setAttribute("tname",result.getTname());
        session.setAttribute("session",result.getSession());
        session.setAttribute("sem",result.getSem());
        session.setAttribute("ques1",result.getQues1());
        session.setAttribute("ques2",result.getQues2());
        session.setAttribute("ques3",result.getQues3());
        session.setAttribute("ques4",result.getQues4());
        session.setAttribute("ques5",result.getQues5());
        session.setAttribute("ques6",result.getQues6());
        session.setAttribute("ques7",result.getQues7());
        session.setAttribute("ques8",result.getQues8());
        session.setAttribute("ques9",result.getQues9());
        session.setAttribute("ques10",result.getQues10());
        session.setAttribute("ques11",result.getQues11());
        session.setAttribute("ques12",result.getQues12());
        session.setAttribute("ques13",result.getQues13());
        session.setAttribute("ques14",result.getQues14());
        session.setAttribute("ques15",result.getQues15());
        session.setAttribute("ques16",result.getQues16());
        session.setAttribute("ques17",result.getQues17());
        session.setAttribute("ques18",result.getQues18());
        session.setAttribute("ques19",result.getQues19());
        session.setAttribute("ques20",result.getQues20());
        session.setAttribute("ques21",result.getQues21());
        session.setAttribute("ques22",result.getQues22());
        session.setAttribute("ques23",result.getQues23());
        session.setAttribute("ques24",result.getQues24());
        session.setAttribute("ques25",result.getQues25());

        RedirectView rv = new RedirectView();
        String rurl = "/printresponse.jsp?id="+Long.toString(result.getResultId());
        rv.setUrl(rurl);
        return rv;
    }




}
