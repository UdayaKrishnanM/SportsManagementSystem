package com.sportsmanagement.controller;

import java.util.Optional;

import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sportsmanagement.dao.AdminRepository;
import com.sportsmanagement.model.Admin;

@Controller
public class AdminLoginController {

	@Autowired
	private AdminRepository adminrepo;

	@GetMapping("/")
    public String adminlog() {
        return "login";
    }
	@PostMapping("/")
	public String login(@RequestParam("id") Long id, @RequestParam("password") String password,
						HttpSession session, RedirectAttributes redirectAttributes) {
		Admin admin = adminrepo.findById(id).orElse(null);
		if (admin != null && admin.getPassword().equals(password)) {
			session.setAttribute("authenticated", true);
			return "redirect:/index";
		} else if(admin !=null && admin.getId().equals(id) && !admin.getPassword().equals(password)){
			redirectAttributes.addFlashAttribute("message", "Incorrect Password");
			return "redirect:/";
		} else{
			redirectAttributes.addFlashAttribute("message", "Invalid ID");
			return "redirect:/";
		}
	}

	@GetMapping("/index")
	public String adminlogger(HttpSession session) {
		if (session.getAttribute("authenticated") == null || !(Boolean) session.getAttribute("authenticated")) {
			return "redirect:/";
		}
		return "index";
	}
    @GetMapping("/signup")
    public String signUpPage(){
        return "signup";
    }

    @PostMapping("signup")
    public String createAccount(@RequestParam("checkpassword") String enterPassword, Admin admin, RedirectAttributes redirectAttributes){
        Optional<Admin> userAccount= adminrepo.findById(admin.getId());
        if(userAccount.isEmpty()){
			if(!admin.getUsername().matches("[a-zA-Z ]+")){
				redirectAttributes.addFlashAttribute("message", "Name must contain only letters");
				return "redirect:/signup";
			} else if(admin.getPassword().equals(enterPassword)){
                adminrepo.save(admin);
                redirectAttributes.addFlashAttribute("message", "Account created successfully");
                return "redirect:/";
            } else{
                redirectAttributes.addFlashAttribute("message", "Check password!!!");
            }
        } else{
            redirectAttributes.addFlashAttribute("message", "Account already exists!!!");
        }
        return "redirect:/signup";
    }

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

}

