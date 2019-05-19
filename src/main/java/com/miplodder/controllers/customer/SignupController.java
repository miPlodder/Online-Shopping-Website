package com.miplodder.controllers.customer;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.miplodder.constants.Constants;
import com.miplodder.dao.SignupDAO;
import com.miplodder.models.User;

@Controller
@RequestMapping("/signup")
@SessionAttributes(Constants.USERNAME)
public class SignupController {

	SignupDAO signupDAO;

	public SignupController() {
		signupDAO = new SignupDAO();
	}

	@GetMapping
	public String showSignup() {
		return "signup.jsp";
	}

	@PostMapping
	public String signup(@ModelAttribute User user, ModelMap modelMap) {
		signupDAO.addNewUser(user);
		modelMap.addAttribute(Constants.USERNAME, user.getUsername());
		return "home.jsp";
	}

}
