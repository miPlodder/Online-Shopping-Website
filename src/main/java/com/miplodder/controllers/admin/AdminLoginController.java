package com.miplodder.controllers.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.miplodder.constants.Constants;
import com.miplodder.dao.AdminUserDAO;
import com.miplodder.models.AdminUser;
import com.miplodder.models.LoginCredential;
import com.miplodder.utils.SHAUtil;

@Controller
@RequestMapping("/admin")
@SessionAttributes({ Constants.ADMIN_ID, Constants.ADMIN_NAME })
public class AdminLoginController {

	AdminUserDAO adminUserDAO;

	public AdminLoginController() {
		adminUserDAO = new AdminUserDAO();
	}

	@GetMapping
	public String showAdminLogin() {
		return "adminlogin.jsp";
	}

	@PostMapping
	public String loginCredentialsCheck(@ModelAttribute LoginCredential loginCredential, ModelMap model) {
		loginCredential.setPassword(SHAUtil.getSHA(loginCredential.getPassword()));
		AdminUser adminUser = adminUserDAO.checkLoginCredentials(loginCredential);
		if (adminUser == null) {
			return "adminlogin.jsp";
		} else {
			model.addAttribute(Constants.ADMIN_ID, adminUser.getAdminId());
			model.addAttribute(Constants.ADMIN_NAME, adminUser.getAdminName());
			return "redirect:/admin/home";
		}
	}

}
