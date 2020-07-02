package com.springpractice.service;

import java.util.ArrayList;
import java.util.List;

import com.springpractice.model.Employee;

public class EmployeeManager {
	private static List<Employee> employeeList;

	public EmployeeManager() {
		employeeList = new ArrayList<Employee>();
		employeeList.add(new Employee(1, "Syam", "Doddi"));
		employeeList.add(new Employee(2, "Sneha", "Takale"));
		employeeList.add(new Employee(3, "Santosh", "Malkar"));
		employeeList.add(new Employee(4, "Yogita", "Mahajan"));
		employeeList.add(new Employee(5, "Pranjal", "Albhan"));
		employeeList.add(new Employee(6, "Mayuri", "Nikam"));

	}

	public List<Employee> getEmployeeList() {
		return employeeList;
	}

	public Employee addEmployee(Employee e) {
		Employee employee = new Employee();
		employee.setId(employeeList.size() + 1);
		employee.setFirstName(e.getFirstName());
		employee.setLastname(e.getLastname());
		employeeList.add(employee);
		return employee;
	}
}
