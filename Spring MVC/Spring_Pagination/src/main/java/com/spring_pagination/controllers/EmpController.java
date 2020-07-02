package com.spring_pagination.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring_pagination.Dao.EmpDao;
import com.spring_pagination.beans.Emp;

@Controller

public class EmpController {
	@Autowired
	EmpDao dao;

	@RequestMapping(value = "/viewemp/{pageid}")
	public String edit(@PathVariable int pageid, Model model) {
		int total = 5;
		if (pageid == 1) {
		} else {
			pageid = (pageid - 1) * total + 1;
		}
		System.out.println(pageid);
		List<Emp> list = dao.getEmployeesByPage(pageid);
		model.addAttribute("msg", list);
		return "viewemp";
	}

}
