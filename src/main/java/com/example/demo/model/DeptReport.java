package com.example.demo.model;

import java.io.Serializable;

public class DeptReport implements Serializable {

    private String bestcourse;

    private String bestdept;

    private float totalscore;

    public DeptReport(){

    }

    public DeptReport(String bestcourse,String bestdept, float totalscore) {
        this.bestcourse = bestcourse;
        this.bestdept = bestdept;
        this.totalscore = totalscore;
    }

    public String getBestcourse() {
        return bestcourse;
    }

    public void setBestcourse(String bestcourse) {
        this.bestcourse = bestcourse;
    }

    public String getBestdept() {
        return bestdept;
    }

    public void setBestdept(String bestdept) {
        this.bestdept = bestdept;
    }

    public float getTotalscore() {
        return totalscore;
    }

    public void setTotalscore(float totalscore) {
        this.totalscore = totalscore;
    }
}
