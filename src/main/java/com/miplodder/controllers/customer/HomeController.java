package com.miplodder.controllers.customer;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.miplodder.constants.Constants;
import com.miplodder.dao.ProfileDAO;
import com.miplodder.models.LoginCredential;
import com.miplodder.models.User;

@Controller
@RequestMapping("/home")
@SessionAttributes(Constants.USERNAME)
public class HomeController {

	@GetMapping
	public String showProfile(Model model, HttpSession httpSession) {
		// User user = (User) httpSession.getAttribute("user");
		return "home.jsp";
	}

}