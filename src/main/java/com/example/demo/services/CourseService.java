package com.example.demo.services;

import com.example.demo.Repository.CourseRepository;
import com.example.demo.model.Course;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class CourseService {

    @Autowired
    CourseRepository courseRepository;

    public void save(Course course){
        courseRepository.save(course);
    }

    public List<Course> findAll(){
        List<Course> course;
        course = courseRepository.findAll();
        return course;
    }

    public Course findById(long course_id){
        Course course=courseRepository.findById(course_id).orElse(null);
        return course;
    }

    public void deleteById(long course_id)
    {
        courseRepository.deleteById(course_id);
    }

}
