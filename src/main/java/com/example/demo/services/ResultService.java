package com.example.demo.services;

import com.example.demo.Repository.ResultRepository;
import com.example.demo.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class ResultService {
    @Autowired
    ResultRepository resultRepository;

    public void save(Result result) throws IOException {
        resultRepository.save(result);
    }

    public Result findById(long result_id){
        Result result = resultRepository.findById(result_id).orElse(null);
        return result;
    }

    public void deleteById(long result_id){
        resultRepository.deleteById(result_id);
    }

    public List<Result> findByUser_Id(long user_id){
        List<Result> resultList=resultRepository.findByUser_UserId(user_id);
        return resultList;
    }

    public List<Output> groupBy(){
        return resultRepository.groupBy();
    }

    public List<Result> findBycname(String cname){
        return resultRepository.findByCname(cname);
    }

    public List<CourseOutput> findPointsbycname(String cname){
        return resultRepository.findPointsbycname(cname);

    }

    public List<Output2> bestscoreindept(){
        return resultRepository.bestscoreindept();
    }

    public List<Output3> lowestscoreindept(){
        return resultRepository.Lowestscoreindept();
    }

    public List<Output4> bestscoreinuniv(){
        return resultRepository.bestscoreinuniv();
    }

}
