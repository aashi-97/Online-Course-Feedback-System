package com.example.demo.model;


import javax.persistence.*;

@Entity
@Table(name="courses")
public class Course {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String coursename;
    private String courseid;
    private String facultyname;
    private int contactnumber;
    private String department;
    private String university;

    public Course(){

    }

    public Course(String coursename, String courseid, String facultyname, int contactnumber, String department, String university) {
        this.coursename = coursename;
        this.courseid = courseid;
        this.facultyname = facultyname;
        this.contactnumber = contactnumber;
        this.department = department;
        this.university = university;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCoursename() {
        return coursename;
    }

    public void setCoursename(String coursename) {
        this.coursename = coursename;
    }

    public String getCourseid() {
        return courseid;
    }

    public void setCourseid(String courseid) {
        this.courseid = courseid;
    }

    public String getFacultyname() {
        return facultyname;
    }

    public void setFacultyname(String facultyname) {
        this.facultyname = facultyname;
    }

    public int getContactnumber() {
        return contactnumber;
    }

    public void setContactnumber(int contactnumber) {
        this.contactnumber = contactnumber;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getUniversity() {
        return university;
    }

    public void setUniversity(String university) {
        this.university = university;
    }

    @Override
    public String toString() {
        return "Course{" +
                "id=" + id +
                ", coursename='" + coursename + '\'' +
                ", courseid='" + courseid + '\'' +
                ", facultyname='" + facultyname + '\'' +
                ", contactnumber=" + contactnumber +
                ", department='" + department + '\'' +
                ", university='" + university + '\'' +
                '}';
    }
}

