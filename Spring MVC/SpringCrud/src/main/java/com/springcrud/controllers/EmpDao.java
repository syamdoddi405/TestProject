package com.springcrud.controllers;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class EmpDao {
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public int save(Emp p) {
		try {
			String sql = "insert into Emp99(name, mobileNumber, mailId, password, salary, designation, address) values('"
					+ p.getName() + "','" + p.getMobileNumber() + "','" + p.getMailId() + "','" + p.getPassword()
					+ "', '" + p.getSalary() + "','" + p.getDesignation() + "','" + p.getAddress() + "')";
			return template.update(sql);
		} catch (Exception e) {
			System.out.println("please check it " + e.getMessage());
		}
		return 0;
	}

	public int update(Emp p) {
		String sql = "update Emp99 set name='" + p.getName() + "', mobileNumber='" + p.getMobileNumber() + "', mailId='"
				+ p.getMailId() + "', password='" + p.getPassword() + "', salary=" + p.getSalary() + ", designation='"
				+ p.getDesignation() + "', address='" + p.getAddress() + "' where id=" + p.getId() + "";
		return template.update(sql);
	}

	public int delete(int id) {
		String sql = "delete from Emp99 where id=" + id + "";
		return template.update(sql);
	}

	public Emp getEmpById(int id) {
		String sql = "select * from Emp99 where id=?";
		return template.queryForObject(sql, new Object[] { id }, new BeanPropertyRowMapper<Emp>(Emp.class));
	}

	public List<Emp> getEmployees() {
		return template.query("select * from Emp99", new RowMapper<Emp>() {
			public Emp mapRow(ResultSet rs, int row) throws SQLException {

				Emp e = new Emp();
				e.setId(rs.getInt(1));
				e.setName(rs.getString(2));
				e.setMobileNumber(rs.getString(3));
				e.setMailId(rs.getString(4));
				e.setPassword(rs.getString(5));
				e.setSalary(rs.getFloat(6));
				e.setDesignation(rs.getString(7));
				e.setAddress(rs.getString(8));
				return e;
			}
		});
	}

	/*
	 * public List<Emp> Login( final Emp emp) { return
	 * template.query("select mailId, password from Emp99", new RowMapper<Emp>() {
	 * 
	 * public Emp mapRow(ResultSet rs, int rowNum) throws SQLException {
	 * if(emp!=null && emp.getMailId() !=null && emp.getPassword()!=null) {
	 * if(emp.getMailId().equals(rs.getString("mailId")) &&
	 * emp.getPassword().equals(rs.getString("password"))) { Emp e = new Emp();
	 * e.setId(rs.getInt(1)); e.setName(rs.getString(2));
	 * e.setMobileNumber(rs.getString(3)); e.setMailId(rs.getString(4));
	 * e.setPassword(rs.getString(5)); e.setSalary(rs.getFloat(6));
	 * e.setDesignation(rs.getString(7)); e.setAddress(rs.getString(8)); return e; }
	 * } return emp; } });
	 * 
	 * }
	 */
}
