package com.spring.employeeregistration.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.employeeregistration.dao.EmployeeDao;
import com.spring.employeeregistration.model.Employee;

@Controller
public class EmployeeController {
	@Autowired
	EmployeeDao employeeDao;

	@RequestMapping("/employee-registrationform")
	public String showform(Model m) {

		m.addAttribute("command", new EmployeeDao());
		return "employee-registrationform";
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String save(@ModelAttribute("emp") Employee employee) {

		employeeDao.save(employee);
		return "redirect:/view";// will redirect to viewemp request mapping

	}

	@RequestMapping("/view")
	public String viewemp(Model m) {
		List<Employee> list = employeeDao.getEmployees();
		m.addAttribute("list", list);
		return "viewemp";
	}

	@RequestMapping(value = "/editemp/{emp_Id}")
	public String edit(@PathVariable int emp_Id, Model m) {
		Employee emp = employeeDao.getEmpById(emp_Id);
		m.addAttribute("command", emp);
		return "employee-editform";
	}

	@RequestMapping(value = "/editsave", method = RequestMethod.POST)
	public String editsave(@ModelAttribute("emp") Employee employee) {
		employeeDao.update(employee);
		return "redirect:/view";
	}

	@RequestMapping(value = "/deleteemp/{emp_Id}", method = RequestMethod.GET)
	public String delete(@PathVariable int emp_Id) {
		employeeDao.delete(emp_Id);
		return "redirect:/view";
	}
}
