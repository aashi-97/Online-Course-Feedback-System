package com.example.demo.services;

import com.example.demo.Repository.CourseRepository;
import com.example.demo.model.Course;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class CourseService {

    private final CourseRepository courseRepository;

    public CourseService(CourseRepository courseRepository){
        this.courseRepository = courseRepository;
    }

    public void saveMyCourse(Course course){
        courseRepository.save(course);
    }

    public List<Course> showAddedCourses(){
        List<Course> courses = new ArrayList<Course>();
        for (Course course: courseRepository.findAll()){
            courses.add(course);
        }
        return courses;
    }

    public List<Course> showfeedbackCourses(){
        List<Course> feedbackcourses = new ArrayList<Course>();
        for (Course feedbackcourse: courseRepository.findAll()){
            feedbackcourses.add(feedbackcourse);
        }
        return feedbackcourses;
    }


    public void deleteCourse(int id){
        courseRepository.deleteById(id);
    }

    public Optional<Course> editCourse(int id){
        return courseRepository.findById(id);
    }

    public Course findByContactnumberAndCourseid(String contactnumber, String courseid){
        return courseRepository.findByContactnumberAndCourseid(contactnumber,courseid);
    }
}
