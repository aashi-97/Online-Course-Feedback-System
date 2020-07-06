package com.example.demo.model;


import com.fasterxml.jackson.annotation.JsonIgnore;
import com.sun.istack.NotNull;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@Entity
@Table(name="course")
public class Course implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long courseId;
    @Column
    @NotNull
    private String coursename;

    @Column
    @NotNull
    private String subjectid;

    @Column
    @NotNull
    private String facultyname;

    @Column
    @NotNull
    private String contactnumber;

    @Column
    @NotNull
    private String department;


    public Course(){

    }

    public Course(String coursename,String subjectid, String facultyname, String contactnumber, String department) {
        this.coursename = coursename;
        this.subjectid=subjectid;
        this.facultyname = facultyname;
        this.contactnumber = contactnumber;
        this.department = department;
    }

    public long getCourseId() {
        return courseId;
    }

    public void setCourseId(long course_id) {
        this.courseId = course_id;
    }

    public String getCoursename() {
        return coursename;
    }

    public void setCoursename(String coursename) {
        this.coursename = coursename;
    }

    public String getSubjectid() {
        return subjectid;
    }

    public void setSubjectid(String subjectid) {
        this.subjectid = subjectid;
    }

    public String getFacultyname() {
        return facultyname;
    }

    public void setFacultyname(String facultyname) {
        this.facultyname = facultyname;
    }

    public String getContactnumber() {
        return contactnumber;
    }

    public void setContactnumber(String contactnumber) {
        this.contactnumber = contactnumber;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }



    @Override
    public String toString() {
        return "Course{" +
                "courseId=" + courseId +
                ", coursename='" + coursename + '\'' +
                ", subjectid='" + subjectid + '\'' +
                ", facultyname='" + facultyname + '\'' +
                ", contactnumber='" + contactnumber + '\'' +
                ", department='" + department + '\'' +
                '}';
    }
}

