<%@ page import="java.sql.*" %>
<%
String connectionURL =
"jdbc:postgresql://class-db.cs.fiu.edu:5432/spr18_atorr208?user=spr18_atorr208&password=4709314";
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
Class.forName("org.postgresql.Driver").newInstance();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();
if (request.getParameter("table").equals("courses")) {
  statement.executeUpdate("DELETE FROM courses WHERE courses.course_id = " + request.getParameter("id"));
  response.sendRedirect("/Web_Interface/displays/courses.jsp");
}
else if (request.getParameter("table").equals("faculties")) {
  statement.executeUpdate("DELETE FROM faculties WHERE faculties.faculty_id = " + request.getParameter("id"));
  response.sendRedirect("/Web_Interface/displays/faculties.jsp");
}
else if (request.getParameter("table").equals("students")) {
  statement.executeUpdate("DELETE FROM students WHERE students.student_id = " + request.getParameter("id"));
  response.sendRedirect("/Web_Interface/displays/students.jsp");
}
%>
