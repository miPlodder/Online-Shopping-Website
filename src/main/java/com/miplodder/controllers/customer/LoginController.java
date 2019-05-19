package com.miplodder.controllers.customer;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.miplodder.constants.Constants;
import com.miplodder.dao.LoginDAO;
import com.miplodder.models.LoginCredential;
import com.miplodder.models.User;

@Controller
@RequestMapping("/")
@SessionAttributes(Constants.USERNAME)
public class LoginController {

	LoginDAO loginDAO;

	public LoginController() {
		loginDAO = new LoginDAO();
	}

	@GetMapping
	public String getLoginView() {
		return "login.jsp";
	}

	@PostMapping
	public String loginCredentialsCheck(@ModelAttribute LoginCredential loginCredential,
			/* RedirectAttributes redirectAttributes */ModelMap model) {

		User user = loginDAO.login(loginCredential);
		if (user != null) {
			model.put(Constants.USERNAME, user.getUsername());
			// redirectAttributes.addFlashAttribute(Constants.USER, user);
			return "redirect:home";
		} else {
			return "login.jsp";
		}
	}
	
}
