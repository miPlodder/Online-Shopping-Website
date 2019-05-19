package com.miplodder.controllers.customer;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.miplodder.constants.Constants;
import com.miplodder.dao.ProfileDAO;
import com.miplodder.models.User;

@Controller
@RequestMapping("/profile")
@SessionAttributes(Constants.USERNAME)
public class ProfileController {

	ProfileDAO profileDAO;
	User user;

	public ProfileController() {
		profileDAO = new ProfileDAO();
	}

	@GetMapping
	public String showProfilePage(HttpSession httpSession, ModelMap model) {
		user = profileDAO.profile((String) httpSession.getAttribute(Constants.USERNAME));
		model.put(Constants.USER, user);
		return "profile.jsp";
	}

}
