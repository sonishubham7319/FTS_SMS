package com.example.SMSPROJECT.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.SMSPROJECT.Modal.User;
import com.example.SMSPROJECT.Service.UserService;

@Controller
public class UserController {
    @Autowired
    UserService userService;

    @GetMapping("/")
    public String home() {
        return "login";
    }

    @GetMapping("register")
    public String register() {
        return "register";
    }

    @GetMapping("forgot")
    public String forgot() {
        return "forgotPassword";
    }

    @GetMapping("dashboard")
    public String dashboard() {
        return "dashboard";
    }

    // register krne ke liye
    @PostMapping("/registerData")
    public String register(@ModelAttribute User user) {
        userService.register(user);
        return "login";
    }

    // login krne ke liye method jsp page se username or password ko recive krega or
    // fir usko service login method se match krega match huwa to dashboard page
    // return krwa denge
    @PostMapping("/login")
    public String loginUser(@ModelAttribute User user, Model model,HttpSession session) {
        User authenticatedUser = userService.authenticateUser(user.getUsername(), user.getPasswordHash());
        if (authenticatedUser != null) {
                session.setAttribute("teacherFullName", authenticatedUser.getFullName());
                session.setAttribute("stdClass", authenticatedUser.getStudentClass());
                session.setAttribute("stdSection", authenticatedUser.getSection());
                session.setAttribute("stdRollNo", authenticatedUser.getRollNo());
            return "redirect:/dashboard";

        } else {
            model.addAttribute("error", "invalid username or password");
            return "login";
        }

    }

    // forgot password krne ke liye or check krenge ki password and confirm-password
    // dono match kar raha hai ki nahi
    @PostMapping("updatePassword")
    public String updatePassword(@ModelAttribute User user,
            @RequestParam("confirmPassword") String confirmPassword, Model model) {
        // user object se password oe username nikalte hai pahle
        String password = user.getPasswordHash();
        String username = user.getUsername();
        // check kr rahe hai ki password and confirm password match karta hai ki nahi
        if (password == null || !password.equals(confirmPassword)) {
            // model.addAttribute("errorMessage", "password is not matching !");
            return "forgotPassword";

        }

        boolean updated = userService.resetPassword(username, password,confirmPassword);
        if (updated) {
            return "redirect:/login";
        } else {
            // model.addAttribute("errorMessageUserName", "enter correct username");
            return "forgotPassword";
        }
    }

}
