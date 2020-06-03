package com.example.demo.Repository;

import com.example.demo.model.Course;
import org.springframework.data.repository.CrudRepository;

public interface CourseRepository extends CrudRepository <Course, Integer> {
    public Course findByContactnumberAndCourseid(String contactnumber, String courseid);
}
