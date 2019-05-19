package com.miplodder.controllers.admin;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.miplodder.constants.Constants;
import com.miplodder.dao.AdminUserDAO;
import com.miplodder.models.AdminUser;

@Controller
@RequestMapping("admin/profile")
public class AdminProfileController {

	AdminUserDAO adminUserDAO;

	public AdminProfileController() {
		adminUserDAO = new AdminUserDAO();
	}

	@GetMapping
	public String showAdminProfile(HttpSession httpSession, ModelMap modelMap) {
		int adminId = (Integer) httpSession.getAttribute(Constants.ADMIN_ID);
		AdminUser adminUser = adminUserDAO.getAdminUserDetails(adminId);
		modelMap.addAttribute(Constants.ADMIN, adminUser);
		return "adminprofile.jsp";
	}

}
