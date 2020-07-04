package com.example.demo.model;


import javax.persistence.Entity;
import javax.persistence.Table;
import java.io.Serializable;

public class Output implements Serializable {
    private String coursename;
    private String deptname;
    private double overallaverage;

    public String getCoursename() {
        return coursename;
    }

    public void setCoursename(String coursename) {
        this.coursename = coursename;
    }

    public String getDeptname() {
        return deptname;
    }

    public void setDeptname(String deptname) {
        this.deptname = deptname;
    }

    public double getOverallaverage() {
        return overallaverage;
    }

    public void setOverallaverage(double overallaverage) {
        this.overallaverage = overallaverage;
    }

    public Output(String coursename,String deptname, double overallaverage) {
        this.coursename = coursename;
        this.deptname = deptname;
        this.overallaverage = overallaverage;
    }

    public Output(){

    }
}
