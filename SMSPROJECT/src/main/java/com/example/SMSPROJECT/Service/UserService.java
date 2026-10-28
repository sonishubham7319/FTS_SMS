package com.example.SMSPROJECT.Service;

import com.example.SMSPROJECT.Repository.UserRepository;
import com.example.SMSPROJECT.Modal.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service 
public class UserService {
    @Autowired 
    UserRepository userRepository;
//register karne ke liye
    public void register(User user){
        userRepository.save(user);
    }
    // login ka method  repository se aaya huwa userName ke sath sath password bhi check krega
    public User authenticateUser(String username,String password){
       User user = userRepository.findByusername(username);
       //check kar rahe hai ki user mil gya or password match kar raha hai ki nahi
       if(user !=null && user.getPasswordHash().equals(password)){
        //login successfully,user object return kar do
        return  user;
       }
       else{
        //agar match nahi huwa to null return kar do
        return null;
       }
    }
    //password update krne ke liye
    public boolean resetPassword(String username,String password, String confirmPassword){
       if(!password.equals(confirmPassword)){
        return false;
       }
       User user = userRepository.findByusername(username);
       if (user !=null) {
        user.setPasswordHash(confirmPassword);
        userRepository.save(user);
        return true;
       }
       return false;
    }
}
