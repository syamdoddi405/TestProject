package com.springModelInterface;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {
	@RequestMapping("/hello")
	public String display(HttpServletRequest request, Model model) {
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		if (password.equals("syam123")) {
			String message = "Hello : " + userName;
			model.addAttribute("message : ", message);
			return "viewpage";
		} else {
			String message = "sorry" + userName + " you enteref an incorrect password";
			model.addAttribute("message : ", message);
			return "errorpage";
		}
	}

}
