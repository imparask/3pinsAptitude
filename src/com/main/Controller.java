package com.main;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beans.User;
import com.model.DB;

public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static boolean flag = false;
	/*static boolean flags = false;
	static boolean flaga = false;
	static boolean flagc = false;
	static boolean flagat = false;
	static boolean flagl = false;*/
	static int count_ans=0;
	ArrayList<String> ans_list = new ArrayList<>();
	ArrayList<String> list = new ArrayList<>();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = request.getParameter("page");
		if(page==null) {
			request.getRequestDispatcher("try.jsp").forward(request, response);
		}
		else {
			doPost(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = request.getParameter("page");
		
		if(page.equals("index")) {
			count_ans=0;
			DB db = new DB();
			try {
				db.deleteAnswers();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(flag==false) {
				//flagl=true;
				request.getRequestDispatcher("try.jsp").forward(request, response);
			}
			else {
				request.getRequestDispatcher("try.jsp").forward(request, response);
			}
		}
		if(page.equals("contact")) {
			count_ans=0;
			DB db = new DB();
			try {
				db.deleteAnswers();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(flag==false) {
				//flagl=true;
				request.getRequestDispatcher("contact.jsp").forward(request, response);
			}
			else {
				request.getRequestDispatcher("contact.jsp").forward(request, response);
			}
		}
		if(page.equals("login")) {
			count_ans=0;
			DB db = new DB();
			try {
				db.deleteAnswers();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(flag==false) {
				//flagl=true;
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
			else {
				request.getRequestDispatcher("try.jsp").forward(request, response);
			}
		}
		if(page.equals("logout")) {
			count_ans=0;
			DB db = new DB();
			try {
				db.deleteAnswers();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(flag==false) {
				
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}
			else {
				flag=false;
				
				request.getRequestDispatcher("try.jsp").forward(request, response);
			}
		}
		if(page.equals("signup")) {
			count_ans=0;
			if(flag==false) {
				
				request.getRequestDispatcher("signup.jsp").forward(request, response);
			}
			else {
				;
				request.getRequestDispatcher("try.jsp").forward(request, response);
			}
		}
		if(page.equals("signup_form") ) {
			count_ans=0;
			if(flag==false) {
				
			String firstname = request.getParameter("firstname");
			String middlename = request.getParameter("middlename");
			String lastname = request.getParameter("lastname");
			String mobile = request.getParameter("mobile");
			String email = request.getParameter("email");
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String cpassword = request.getParameter("cpassword");
			
			User user = new User();
			user.setFirstname(firstname);
			user.setMiddlename(middlename);
			user.setLastname(lastname);
			user.setMobile(mobile);
			user.setEmail(email);
			user.setUsername(username);
			user.setPassword(password);
			user.setCpassword(cpassword);
			
			DB db = new DB();
			boolean check = db.validateUser(user);
			try {
				db.addUsers(user);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			request.setAttribute("msg", "SIGN-UP SUCCESSFULL PLEASE LOGIN");
			request.getRequestDispatcher("login.jsp").forward(request, response);
			}
			else {
				request.getRequestDispatcher("try.jsp").forward(request, response);
			}
		}
		if(page.equals("login_form")) {
			count_ans=0;
			if(flag==false) {
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			DB db = new DB();
			boolean status = false;
			try {
				status = db.checkUser(username,password);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			if(status== true) {
				/*if(flags) {
					request.getRequestDispatcher("science.jsp").forward(request, response);
				}
				if(flaga) {
					request.getRequestDispatcher("arts.jsp").forward(request, response);
				}
				if(flagc) {
					request.getRequestDispatcher("commerce.jsp").forward(request, response);
				}
				if(flagat) {
					request.getRequestDispatcher("aptitude.jsp").forward(request, response);
				}*/
				request.getRequestDispatcher("try.jsp").forward(request, response);
				flag=true;
			}
			else {
				request.setAttribute("msg", "USERNAME/PASSWORD is INCORRECT");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
			}
			else {
				request.getRequestDispatcher("try.jsp").forward(request, response);
			}
		}
		if(page.equals("course")) {
			count_ans=0;
			request.getRequestDispatcher("course.jsp").forward(request, response);
		}
		if(page.equals("about")) {
			count_ans=0;
			request.getRequestDispatcher("about.jsp").forward(request, response);
		}
		if(page.equals("home")) {
			count_ans=0;
			request.getRequestDispatcher("try.jsp").forward(request, response);
		}
		if(page.equals("tests")) {
			count_ans=0;
			request.getRequestDispatcher("test.jsp").forward(request, response);
		}
		if(page.equals("s")) {
			count_ans=0;
			if(flag==false) {
				//flags=true;
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
			else {
				request.getRequestDispatcher("science.jsp").forward(request, response);
			}
		}
		if(page.equals("a")) {
			count_ans=0;
			if(flag==false) {
				//flaga=true;
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
			else {
				request.getRequestDispatcher("arts.jsp").forward(request, response);
			}
		}
		if(page.equals("c")) {
			count_ans=0;
			if(flag==false) {
				//flagc=true;
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
			else {
				request.getRequestDispatcher("commerce.jsp").forward(request, response);
			}
		}
		if(page.equals("at")) {
			count_ans=0;
			if(flag==false) {
				//flagat=true;
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
			else {
				request.getRequestDispatcher("aptitude.jsp").forward(request, response);
			}
		}
		if(page.equals("SCIENCE")) {
			count_ans=0;
			request.getRequestDispatcher("science.jsp").forward(request, response);
		}
		if(page.equals("ARTS")) {
			count_ans=0;
			request.getRequestDispatcher("arts.jsp").forward(request, response);
		}
		if(page.equals("COMMERCE")) {
			count_ans=0;
			request.getRequestDispatcher("commerce.jsp").forward(request, response);
		}
		if(page.equals("AT")) {
			count_ans=0;
			request.getRequestDispatcher("aptitude.jsp").forward(request, response);
		}
		if(page.equals("q1")) {
				request.getRequestDispatcher("q1.jsp").forward(request, response);
		}
		if(page.equals("q2")) {
			String option1=request.getParameter("A");
			String option2=request.getParameter("B");
			String option3=request.getParameter("C");
			String option4=request.getParameter("D");
			String option="";
			if(option1 !=null) {
				option="A";
			}
			if(option2 !=null) {
				option="B";
			}
			if(option3 !=null) {
				option="C";
			}
			if(option4 !=null) {
				option="D";
			}
			DB db = new DB();
				;
			boolean right_ans=false;
			try {
				db.addAnswers("1", option);
				right_ans = db.checkAnswer("1",option);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(right_ans==true) {
				count_ans++;
				list.add("1");
			}
			request.getRequestDispatcher("q2.jsp").forward(request, response);
		}
		if(page.equals("q3")) {
			String option1=request.getParameter("A");
			String option2=request.getParameter("B");
			String option3=request.getParameter("C");
			String option4=request.getParameter("D");
			String option="";
			if(option1 !=null) {
				option="A";
			}
			if(option2 !=null) {
				option="B";
			}
			if(option3 !=null) {
				option="C";
			}
			if(option4 !=null) {
				option="D";
			}
			DB db = new DB();
				
			boolean right_ans=false;
			try {
				db.addAnswers("2", option);
				right_ans = db.checkAnswer("2",option);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(right_ans==true) {
				count_ans++;
				list.add("2");
			}
			request.getRequestDispatcher("q3.jsp").forward(request, response);
		}
		if(page.equals("q4")) {
			String option1=request.getParameter("A");
			String option2=request.getParameter("B");
			String option3=request.getParameter("C");
			String option4=request.getParameter("D");
			String option="";
			if(option1 !=null) {
				option="A";
			}
			if(option2 !=null) {
				option="B";
			}
			if(option3 !=null) {
				option="C";
			}
			if(option4 !=null) {
				option="D";
			}
			DB db = new DB();
				
			boolean right_ans=false;
			try {
				db.addAnswers("3", option);
				right_ans = db.checkAnswer("3",option);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(right_ans==true) {
				count_ans++;
				list.add("3");
			}
			request.getRequestDispatcher("q4.jsp").forward(request, response);
		}
		if(page.equals("q5")) {
			String option1=request.getParameter("A");
			String option2=request.getParameter("B");
			String option3=request.getParameter("C");
			String option4=request.getParameter("D");
			String option="";
			if(option1 !=null) {
				option="A";
			}
			if(option2 !=null) {
				option="B";
			}
			if(option3 !=null) {
				option="C";
			}
			if(option4 !=null) {
				option="D";
			}
			DB db = new DB();
				
			boolean right_ans=false;
			try {
				db.addAnswers("4", option);
				right_ans = db.checkAnswer("4",option);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(right_ans==true) {
				count_ans++;
				list.add("4");
			}
			request.getRequestDispatcher("q5.jsp").forward(request, response);
		}
		if(page.equals("q6")) {
			String option1=request.getParameter("A");
			String option2=request.getParameter("B");
			String option3=request.getParameter("C");
			String option4=request.getParameter("D");
			String option="";
			if(option1 !=null) {
				option="A";
			}
			if(option2 !=null) {
				option="B";
			}
			if(option3 !=null) {
				option="C";
			}
			if(option4 !=null) {
				option="D";
			}
			DB db = new DB();
				
			boolean right_ans=false;
			try {
				db.addAnswers("5", option);
				right_ans = db.checkAnswer("5",option);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(right_ans==true) {
				count_ans++;
				list.add("5");
			}
			request.getRequestDispatcher("q6.jsp").forward(request, response);
		}
		if(page.equals("q7")) {
			String option1=request.getParameter("A");
			String option2=request.getParameter("B");
			String option3=request.getParameter("C");
			String option4=request.getParameter("D");
			String option="";
			if(option1 !=null) {
				option="A";
			}
			if(option2 !=null) {
				option="B";
			}
			if(option3 !=null) {
				option="C";
			}
			if(option4 !=null) {
				option="D";
			}
			DB db = new DB();
				
			boolean right_ans=false;
			try {
				db.addAnswers("6", option);
				right_ans = db.checkAnswer("6",option);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(right_ans==true) {
				count_ans++;
				list.add("6");
			}
			request.getRequestDispatcher("q7.jsp").forward(request, response);
		}
		if(page.equals("q8")) {
			String option1=request.getParameter("A");
			String option2=request.getParameter("B");
			String option3=request.getParameter("C");
			String option4=request.getParameter("D");
			String option="";
			if(option1 !=null) {
				option="A";
			}
			if(option2 !=null) {
				option="B";
			}
			if(option3 !=null) {
				option="C";
			}
			if(option4 !=null) {
				option="D";
			}
			DB db = new DB();
				
			boolean right_ans=false;
			try {
				db.addAnswers("7", option);
				right_ans = db.checkAnswer("7",option);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(right_ans==true) {
				count_ans++;
				list.add("7");
			}
			request.getRequestDispatcher("q8.jsp").forward(request, response);
		}
		if(page.equals("q9")) {
			String option1=request.getParameter("A");
			String option2=request.getParameter("B");
			String option3=request.getParameter("C");
			String option4=request.getParameter("D");
			String option="";
			if(option1 !=null) {
				option="A";
			}
			if(option2 !=null) {
				option="B";
			}
			if(option3 !=null) {
				option="C";
			}
			if(option4 !=null) {
				option="D";
			}
			DB db = new DB();
				
			boolean right_ans=false;
			try {
				db.addAnswers("8", option);
				right_ans = db.checkAnswer("8",option);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(right_ans==true) {
				count_ans++;
				list.add("8");
			}
			request.getRequestDispatcher("q9.jsp").forward(request, response);
		}
		if(page.equals("q10")) {
			String option1=request.getParameter("A");
			String option2=request.getParameter("B");
			String option3=request.getParameter("C");
			String option4=request.getParameter("D");
			String option="";
			if(option1 !=null) {
				option="A";
			}
			if(option2 !=null) {
				option="B";
			}
			if(option3 !=null) {
				option="C";
			}
			if(option4 !=null) {
				option="D";
			}
			DB db = new DB();
				
			boolean right_ans=false;
			try {
				db.addAnswers("9", option);
				right_ans = db.checkAnswer("9",option);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(right_ans==true) {
				count_ans++;
				list.add("9");
			}
			request.getRequestDispatcher("q10.jsp").forward(request, response);
		}
		if(page.equals("q11")) {
			String option1=request.getParameter("A");
			String option2=request.getParameter("B");
			String option3=request.getParameter("C");
			String option4=request.getParameter("D");
			String option="";
			if(option1 !=null) {
				option="A";
			}
			if(option2 !=null) {
				option="B";
			}
			if(option3 !=null) {
				option="C";
			}
			if(option4 !=null) {
				option="D";
			}
			DB db = new DB();
				
			boolean right_ans=false;
			try {
				db.addAnswers("10", option);
				right_ans = db.checkAnswer("10",option);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(right_ans==true) {
				count_ans++;
				list.add("10");
			}
			request.getRequestDispatcher("q11.jsp").forward(request, response);
		}
		if(page.equals("q12")) {
			String option1=request.getParameter("A");
			String option2=request.getParameter("B");
			String option3=request.getParameter("C");
			String option4=request.getParameter("D");
			String option="";
			if(option1 !=null) {
				option="A";
			}
			if(option2 !=null) {
				option="B";
			}
			if(option3 !=null) {
				option="C";
			}
			if(option4 !=null) {
				option="D";
			}
			DB db = new DB();
				
			boolean right_ans=false;
			try {
				db.addAnswers("11", option);
				right_ans = db.checkAnswer("11",option);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(right_ans==true) {
				count_ans++;
				list.add("11");
			}
			request.getRequestDispatcher("q12.jsp").forward(request, response);
		}
		if(page.equals("q13")) {
			String option1=request.getParameter("A");
			String option2=request.getParameter("B");
			String option3=request.getParameter("C");
			String option4=request.getParameter("D");
			String option="";
			if(option1 !=null) {
				option="A";
			}
			if(option2 !=null) {
				option="B";
			}
			if(option3 !=null) {
				option="C";
			}
			if(option4 !=null) {
				option="D";
			}
			DB db = new DB();
				
			boolean right_ans=false;
			try {
				db.addAnswers("12", option);
				right_ans = db.checkAnswer("12",option);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(right_ans==true) {
				count_ans++;
				list.add("12");
			}
			request.getRequestDispatcher("q13.jsp").forward(request, response);
		}
		if(page.equals("q14")) {
			String option1=request.getParameter("A");
			String option2=request.getParameter("B");
			String option3=request.getParameter("C");
			String option4=request.getParameter("D");
			String option="";
			if(option1 !=null) {
				option="A";
			}
			if(option2 !=null) {
				option="B";
			}
			if(option3 !=null) {
				option="C";
			}
			if(option4 !=null) {
				option="D";
			}
			DB db = new DB();
				
			boolean right_ans=false;
			try {
				db.addAnswers("13", option);
				right_ans = db.checkAnswer("13",option);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(right_ans==true) {
				count_ans++;
				list.add("13");
			}
			request.getRequestDispatcher("q14.jsp").forward(request, response);
		}
		if(page.equals("q15")) {
			String option1=request.getParameter("A");
			String option2=request.getParameter("B");
			String option3=request.getParameter("C");
			String option4=request.getParameter("D");
			String option="";
			if(option1 !=null) {
				option="A";
			}
			if(option2 !=null) {
				option="B";
			}
			if(option3 !=null) {
				option="C";
			}
			if(option4 !=null) {
				option="D";
			}
			DB db = new DB();
				
			boolean right_ans=false;
			try {
				db.addAnswers("14", option);
				right_ans = db.checkAnswer("14",option);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(right_ans==true) {
				count_ans++;
				list.add("14");
			}
			request.getRequestDispatcher("q15.jsp").forward(request, response);
		}
		if(page.equals("q16")) {
			String option1=request.getParameter("A");
			String option2=request.getParameter("B");
			String option3=request.getParameter("C");
			String option4=request.getParameter("D");
			String option="";
			if(option1 !=null) {
				option="A";
			}
			if(option2 !=null) {
				option="B";
			}
			if(option3 !=null) {
				option="C";
			}
			if(option4 !=null) {
				option="D";
			}
			DB db = new DB();
				
			boolean right_ans=false;
			try {
				db.addAnswers("15", option);
				right_ans = db.checkAnswer("15",option);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(right_ans==true) {
				count_ans++;
				list.add("15");
			}
			request.getRequestDispatcher("q16.jsp").forward(request, response);
		}
		if(page.equals("q17")) {
			String option1=request.getParameter("A");
			String option2=request.getParameter("B");
			String option3=request.getParameter("C");
			String option4=request.getParameter("D");
			String option="";
			if(option1 !=null) {
				option="A";
			}
			if(option2 !=null) {
				option="B";
			}
			if(option3 !=null) {
				option="C";
			}
			if(option4 !=null) {
				option="D";
			}
			DB db = new DB();
				
			boolean right_ans=false;
			try {
				db.addAnswers("16", option);
				right_ans = db.checkAnswer("16",option);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(right_ans==true) {
				count_ans++;
				list.add("16");
			}
			request.getRequestDispatcher("q17.jsp").forward(request, response);
		}
		if(page.equals("q18")) {
			String option1=request.getParameter("A");
			String option2=request.getParameter("B");
			String option3=request.getParameter("C");
			String option4=request.getParameter("D");
			String option="";
			if(option1 !=null) {
				option="A";
			}
			if(option2 !=null) {
				option="B";
			}
			if(option3 !=null) {
				option="C";
			}
			if(option4 !=null) {
				option="D";
			}
			DB db = new DB();
				
			boolean right_ans=false;
			try {
				db.addAnswers("17", option);
				right_ans = db.checkAnswer("17",option);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(right_ans==true) {
				count_ans++;
				list.add("17");
			}
			request.getRequestDispatcher("q18.jsp").forward(request, response);
		}
		if(page.equals("q19")) {
			String option1=request.getParameter("A");
			String option2=request.getParameter("B");
			String option3=request.getParameter("C");
			String option4=request.getParameter("D");
			String option="";
			if(option1 !=null) {
				option="A";
			}
			if(option2 !=null) {
				option="B";
			}
			if(option3 !=null) {
				option="C";
			}
			if(option4 !=null) {
				option="D";
			}
			DB db = new DB();
				
			boolean right_ans=false;
			try {
				db.addAnswers("18", option);
				right_ans = db.checkAnswer("18",option);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(right_ans==true) {
				count_ans++;
				list.add("18");
			}
			request.getRequestDispatcher("q19.jsp").forward(request, response);
		}
		if(page.equals("q20")) {
			String option1=request.getParameter("A");
			String option2=request.getParameter("B");
			String option3=request.getParameter("C");
			String option4=request.getParameter("D");
			String option="";
			if(option1 !=null) {
				option="A";
			}
			if(option2 !=null) {
				option="B";
			}
			if(option3 !=null) {
				option="C";
			}
			if(option4 !=null) {
				option="D";
			}
			DB db = new DB();
				
			boolean right_ans=false;
			try {
				db.addAnswers("19", option);
				right_ans = db.checkAnswer("19",option);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(right_ans==true) {
				count_ans++;
				list.add("19");
			}
			request.getRequestDispatcher("q20.jsp").forward(request, response);
		}
		if(page.equals("exit")) {
			String option1=request.getParameter("A");
			String option2=request.getParameter("B");
			String option3=request.getParameter("C");
			String option4=request.getParameter("D");
			String option="";
			if(option1 !=null) {
				option="A";
			}
			if(option2 !=null) {
				option="B";
			}
			if(option3 !=null) {
				option="C";
			}
			if(option4 !=null) {
				option="D";
			}
			DB db = new DB();
				
			boolean right_ans=false;
			try {
				db.addAnswers("20", option);
				right_ans = db.checkAnswer("20",option);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(right_ans==true) {
				count_ans++;
				list.add("20");
			}
			String msg="";
			int count=0;
			for(String a:list) {
				if(a.equals("2")) {
					count++;
				}
				if(a.equals("5")) {
					count++;
				}
				if(a.equals("8")) {
					count++;
				}
				if(a.equals("11")) {
					count++;
				}
				if(a.equals("14")) {
					count++;
				}
				if(a.equals("17")) {
					count++;
				}
				if(a.equals("20")) {
					count++;
				}
			}
			if(count>4 && count<=7) {
				msg="SCIENCE";
			}
			else {
				for(String a:list) {
					if(a.equals("1")) {
						count++;
					}
					if(a.equals("4")) {
						count++;
					}
					if(a.equals("7")) {
						count++;
					}
					if(a.equals("10")) {
						count++;
					}
					if(a.equals("13")) {
						count++;
					}
					if(a.equals("16")) {
						count++;
					}
					if(a.equals("19")) {
						count++;
					}
				}
				if(count>2 && count<=7) {
					msg="COMMERCE";
				}
				else {
					msg="ARTS";
				}
			}
			
			ArrayList<String> list_answered = new ArrayList<>();
			ArrayList<String> list_right_answers = new ArrayList<>();

			try {
				list_answered= db.fetchAnswers();
				list_right_answers = db.fetchResult();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.setAttribute("list", list_answered);
			request.setAttribute("result", list_right_answers);
			request.setAttribute("msg", msg);
			request.setAttribute("count", count_ans);
			request.getRequestDispatcher("result.jsp").forward(request, response);
			
		}
		if(page.equals("submit")){
			request.getRequestDispatcher("result.jsp").forward(request, response);
		}
		if(page.equals("done")){
			DB db = new DB();
			try {
				db.deleteAnswers();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.getRequestDispatcher("try.jsp").forward(request, response);
		}
	}

}
