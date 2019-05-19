package com.miplodder.controllers.customer;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.miplodder.constants.Constants;
import com.miplodder.dao.ProfileDAO;
import com.miplodder.models.Order;
import com.miplodder.models.User;

@Controller
@RequestMapping("/payment")
@SessionAttributes({ Constants.PRODUCT_ID, Constants.USERNAME })
public class PaymentController {

	ProfileDAO profileDAO;

	public PaymentController() {
		profileDAO = new ProfileDAO();
	}

	@PostMapping
	public String showPaymentPage(@ModelAttribute Order order, Model model, HttpSession httpSession) {
		User user = profileDAO.profile((String) httpSession.getAttribute(Constants.USERNAME));
		order.setUserId(user.getId());
		order.setProductId(Integer.parseInt((String) httpSession.getAttribute(Constants.PRODUCT_ID)));
		httpSession.setAttribute(Constants.ORDER, order);
		return "payment.jsp";
	}

}
