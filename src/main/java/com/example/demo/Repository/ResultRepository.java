package com.example.demo.Repository;

import com.example.demo.model.*;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ResultRepository extends JpaRepository<Result, Long> {

    @Query(value = "select new com.example.demo.model.Output(r.cname as coursename,r.dname as deptname,avg(r.average) as overallaverage) from Result r group by r.cname,r.dname")
    public List<Output> groupBy();

    @Query(value = "select new com.example.demo.model.CourseOutput(r.cname as coursename,avg(r.ques1) as q1,avg(r.ques2) as q2,avg(r.ques3) as ques3,avg(r.ques4) as ques4, avg(r.ques5) as ques5,avg(r.ques6) as q6,avg(r.ques7) as q7,avg(r.ques8) as q8,avg(r.ques9) as q9,avg(r.ques10) as q10,avg(r.ques11) as q11,avg(r.ques12) as q12,avg(r.ques13) as q13,avg(r.ques14) as q14,avg(r.ques15) as q15,avg(r.ques16) as q16,avg(r.ques17) as q17,avg(r.ques18) as q18,avg(r.ques19) as q19,avg(r.ques20) as q20,avg(r.ques21) as q21,avg(r.ques22) as q22,avg(r.ques23) as q23,avg(r.ques24) as q24,avg(r.ques25) as q25) from Result r where r.cname=?1 group by r.cname")
    List<CourseOutput> findPointsbycname(@Param("cname") String cname);

    @Query(value="select new com.example.demo.model.Output2(r.dname as bestdeptname,r.average as dept_highest_score) from Result r where r.average=(select max(r.average) from Result r) group by r.dname")
    List<Output2> bestscoreindept();

    @Query(value="select new com.example.demo.model.Output3(r.dname as deptname,r.average as dept_lowest_score) from Result r where r.average=(select min(r.average) from Result r) group by r.dname")
    List<Output3> Lowestscoreindept();

    @Query(value="select new com.example.demo.model.Output4(r.cname as bestcoursename,r.average as univ_best_score) from Result r where r.average=(select max(r.average) from Result r) group by r.cname")
    List<Output4> bestscoreinuniv();

    List<Result> findByUser_UserId(long user_id);

    Result findByResultId(long resultId);
    Result findByUser(long userId);

    List<Result> findByCname(String cname);

}
