package com.example.demo.model;

import java.io.Serializable;

public class Output2 implements Serializable {

    private String bestdeptname;
    private float dept_highest_score;

    public Output2(){

    }

    public Output2(String bestdeptname, float dept_highest_score) {
        this.bestdeptname = bestdeptname;
        this.dept_highest_score = dept_highest_score;
    }

    public String getBestdeptname() {
        return bestdeptname;
    }

    public void setBestdeptname(String bestdeptname) {
        this.bestdeptname = bestdeptname;
    }

    public float getDept_highest_score() {
        return dept_highest_score;
    }

    public void setDept_highest_score(float dept_highest_score) {
        this.dept_highest_score = dept_highest_score;
    }
}
