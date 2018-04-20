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
  statement.executeUpdate("DELETE FROM enroll WHERE enroll.course_id = " + request.getParameter("id"));
  statement.executeUpdate("DELETE FROM courses WHERE courses.course_id = " + request.getParameter("id"));
  response.sendRedirect("/Web_Interface/displays/courses.jsp");
}
else if (request.getParameter("table").equals("enroll")) {
  statement.executeUpdate("DELETE FROM enroll WHERE enroll.student_id = " + request.getParameter("id") + " AND enroll.course_id = " + request.getParameter("id2"));
  response.sendRedirect("/Web_Interface/displays/enroll.jsp");
}

else if (request.getParameter("table").equals("students")) {
  statement.executeUpdate("DELETE FROM enroll WHERE enroll.student_id = " + request.getParameter("id"));
  statement.executeUpdate("DELETE FROM students WHERE students.student_id = " + request.getParameter("id"));
  response.sendRedirect("/Web_Interface/displays/students.jsp");
}
else if (request.getParameter("table").equals("faculties")) {
  statement.executeUpdate("DELETE FROM enroll WHERE enroll.course_id = (SELECT courses.course_id FROM courses WHERE courses.instructor = " + request.getParameter("id") + ")");
  statement.executeUpdate("DELETE FROM courses WHERE courses.instructor = " + request.getParameter("id"));
  statement.executeUpdate("DELETE FROM faculties WHERE faculties.faculty_id = " + request.getParameter("id"));
  response.sendRedirect("/Web_Interface/displays/faculties.jsp");
}

%>
