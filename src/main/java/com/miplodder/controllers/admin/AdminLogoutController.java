package com.miplodder.controllers.admin;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/logout")
public class AdminLogoutController {

	@GetMapping
	public String logout(HttpSession httpSession) {
		httpSession.invalidate();
		return "redirect:/admin";
	}
}
