<!DOCTYPE html>


<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>


<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Login Page</title>
    <link rel="stylesheet" href="login-css.css">
  </head>
  <body>
      <!--<h1><b><center> University </center></b></h1>-->
  <div class="login">

    <form class="box" action="login.html" method="post">

      <h1> Faculty </h1>
      <h2> Login </h2>

      <input type="text" placeholder="User Name">
      <input type="password" placeholder="Password">
      <a href="Dashboard.html"><input type="submit" value="Login"></a>

    </form>

  </div>




  <%

	String username = request.getParameter("User Name");
	String password = request.getParameter("Password");

	/* Jdbc Logic to Authenticate the Student */

	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	try
	{
		Class.forName("com.mysql.jdbc.Driver");

		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/#?user=#&password=#");

		pstmt = con.prepareStatement("select * from # where username = ? and password = ?");

		pstmt.setString(1, username);
		pstmt.setString(2, password);

		rs = pstmt.executeQuery();

		if(rs.next())
		{
			session.setAttribute("sessionObj", session);

			session.setAttribute("username", username);

			/*response.sendRedirect("Login.jsp");*/
		}
		else
		{
			response.sendRedirect("Homepage.jsp");
		}
	}
	catch(ClassNotFoundException | SQLException e)
	{
		response.sendRedirect("Homepage.jsp");
	}
 %>

  </body>
</html>
