<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	101<br>
	Navin <br>
	88 <br>
	<% 
		String url = "jdbc:postgresql://localhost:5432/student";
		String username = "postgres";
		String password = "1234";
		String sql = "select * from student where id = 102";
		Class.forName("org.postgresql.Driver");
		Connection con = DriverManager.getConnection(url,username,password);
		Statement st = con.createStatement();
		
		ResultSet rs = st.executeQuery(sql);
		rs.next();
	%>
	
	Id: <%= rs.getString(1) %> <br>
	Name: <%= rs.getString(2) %> <br>
	Age: <%= rs.getString(3) %>
</body>
</html>