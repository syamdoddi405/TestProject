package com.springmvc_validation;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sun.tracing.dtrace.ModuleAttributes;

@Controller
public class EmployeeController {

	@RequestMapping("/hello")
	public String display(Model model) {
		model.addAttribute("emp", new Employee());

		return "viewpage";
	}
	@RequestMapping("/helloagain")
	public String submitForm(@Valid @ModelAttribute("emp") Employee employee, BindingResult bindingResult)
	{
		if(bindingResult.hasErrors())
		{
			return "viewpage";
		}
		else
		{
			return "final";
		}
	}
	
}
