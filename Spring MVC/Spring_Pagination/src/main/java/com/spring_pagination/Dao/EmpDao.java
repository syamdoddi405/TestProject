package com.spring_pagination.Dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.spring_pagination.beans.Emp;

public class EmpDao {
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public List<Emp> getEmployeesByPage(int pageid) {
		String sql = "select * from pagination_employees limit" + (pageid - 1);
		return template.query(sql, new RowMapper<Emp>() {

			public Emp mapRow(ResultSet rs, int rowNum) throws SQLException {
				Emp emp = new Emp();
				emp.setId(rs.getInt("id"));
				emp.setFirstName(rs.getString("firstName"));
				emp.setLastName(rs.getString("lastName"));
				emp.setMobileNumber(rs.getString("mobileNumber"));
				emp.setMailId(rs.getString("mailId"));
				emp.setSalary(rs.getFloat("salary"));
				emp.setEmployee_designation(rs.getString("employee_designation"));
				emp.setAddress(rs.getString("address"));
				
				return emp;
			}
		});
	}
}
