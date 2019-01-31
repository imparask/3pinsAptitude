package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;

import com.beans.User;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DB {
	private String username="root";
	private String password="";
	private String dbName="career";
	private String url="jdbc:mysql://localhost:3306/"+dbName;
	private String driver ="com.mysql.jdbc.Driver";
	
	private Connection con;
	
	private void dbConnect() {
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, username, password);
		}
		
		catch(SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	private void dbClose() {
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void getUsers() throws SQLException{
		dbConnect();
		String sql = "select * from users";
		PreparedStatement stmt = con.prepareStatement(sql);
		stmt.executeQuery();
		dbClose();
	}
	
	public void addUsers(User user) throws SQLException {
		dbConnect();
		String sql = "insert into users(firstname,middlename,lastname,mobile,email,username,password,cpassword) values(?,?,?,?,?,?,?,?)";
		PreparedStatement stmt = con.prepareStatement(sql);
		stmt.setString(1, user.getFirstname());
		stmt.setString(2, user.getMiddlename());
		stmt.setString(3, user.getLastname());
		stmt.setString(4, user.getMobile());
		stmt.setString(5, user.getEmail());
		stmt.setString(6, user.getUsername());
		stmt.setString(7, user.getPassword());
		stmt.setString(8, user.getCpassword());
		
		stmt.executeUpdate();
		dbClose();
	}

	public boolean validateUser(User user) {
		if(user.getFirstname()==null || user.getFirstname().equals("")) {
			return false;
		}
		if(user.getMiddlename()==null || user.getMiddlename().equals("")) {
			return false;
		}
		if(user.getLastname()==null || user.getLastname().equals("")) {
			return false;
		}
		
		return true;
	}

	public boolean checkUser(String username, String password) throws SQLException {
		dbConnect();
		int count = 0;
		String sql = "select * from users where username=? and password=?";
		PreparedStatement stmt = con.prepareStatement(sql);
		
		stmt.setString(1,username);
		stmt.setString(2, password);
		
		ResultSet rst = stmt.executeQuery();
		while(rst.next()) {
			count=1;
		}
		dbClose();
		if(count==0)
			return false;
		return true;
	}

	public boolean checkAnswer(String i,String option) throws SQLException {
		dbConnect();
		String question_no=i;
		String right_option=null;
		String sql = "select answer from aptitude where question=?";
		PreparedStatement stmt = con.prepareStatement(sql);
		
		stmt.setString(1,question_no );
		
		ResultSet rst = stmt.executeQuery();
		
		while(rst.next()) {
			right_option=rst.getString("answer");
		}
		dbClose();
		if(option.equals(right_option)) {
			return true;
		}
		return false;
	}
	
	public void addAnswers(String i , String option) throws SQLException {
		dbConnect();
		String question_no=i;
		String answer = option;
		String sql = "insert into answers(id,answer) values(?,?)";
		PreparedStatement stmt = con.prepareStatement(sql);
		stmt.setString(1,question_no );
		stmt.setString(2,answer );
		stmt.executeUpdate();
		dbClose();
	}

	public void deleteAnswers() throws SQLException {
		dbConnect();
		String sql = "truncate table answers";
		PreparedStatement stmt = con.prepareStatement(sql);
		stmt.executeQuery();
		dbClose();
	}

	public ArrayList<String> fetchAnswers() throws SQLException {
		dbConnect();
		ArrayList<String> list_answer = new ArrayList<>();
		String sql = "select * from answers";
		PreparedStatement stmt = con.prepareStatement(sql);
		ResultSet rst = stmt.executeQuery();
		while(rst.next()) {
			list_answer.add(rst.getString(2));
		}
		dbClose();
		return list_answer;
		
	}
	public ArrayList<String> fetchResult() throws SQLException {
		dbConnect();
		ArrayList<String> list_answer = new ArrayList<>();
		String sql = "select * from aptitude";
		PreparedStatement stmt = con.prepareStatement(sql);
		ResultSet rst = stmt.executeQuery();
		while(rst.next()) {
			list_answer.add(rst.getString(2));
		}
		dbClose();
		return list_answer;
		
	}
}
