package com.example.demo.model;

import java.io.Serializable;

public class Output3 implements Serializable {

    private String deptname;
    private float dept_lowest_score;

    public Output3(){

    }

    public Output3(String deptname, float dept_lowest_score) {
        this.deptname = deptname;
        this.dept_lowest_score = dept_lowest_score;
    }

    public String getDeptname() {
        return deptname;
    }

    public void setDeptname(String deptname) {
        this.deptname = deptname;
    }

    public float getDept_lowest_score() {
        return dept_lowest_score;
    }

    public void setDept_lowest_score(float dept_lowest_score) {
        this.dept_lowest_score = dept_lowest_score;
    }
}
