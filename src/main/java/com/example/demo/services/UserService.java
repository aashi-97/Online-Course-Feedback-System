package com.example.demo.services;

import com.example.demo.Repository.UserRepository;
import com.example.demo.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class UserService {

    @Autowired
    UserRepository userRepository;

    public void save(User user){
        userRepository.save(user);
    }

//    public List<User> showRegisteredStudents(){
//        List<User> users = new ArrayList<User>();
//        for(User user : userRepository.findAll()){
//            users.add(user);
//        }
//        return users;
//}

    public List<User> findAll(){
        List<User> user;
        user=userRepository.findAll() ;
        return user;
    }

    public User findById(long user_id){
        User user = userRepository.findById(user_id).orElse(null);
        return user;
    }

//    public void deleteMyUser(int id){
//        userRepository.deleteById(id);
//    }
//
//    public Optional<User> editUser(int id){
//        return userRepository.findById(id);
//    }
//
//    public User findByRollnumberAndPassword(int rollnumber, String password){
//        return userRepository.findByRollnumberAndPassword(rollnumber,password);
//    }
//
//    public Optional<User> findById(int id){
//        return userRepository.findById(id);
//    }
}
