<%@ page import="java.sql.*" %>
<%
String connectionURL = "jdbc:postgresql://class-db.cs.fiu.edu:5432/spr18_atorr208?user=spr18_atorr208&password=4709314";

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;

Class.forName("org.postgresql.Driver").newInstance();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

String column1 = request.getParameter("column1");
String column2 = request.getParameter("column2");
String column3 = request.getParameter("column3");
String column4 = request.getParameter("column4");
String column5 = request.getParameter("column5");
String column6 = request.getParameter("column6");
if (request.getParameter("insertCourses") != null) {
   statement.executeUpdate("INSERT INTO courses (course_id, description, level, instructor, semester) VALUES (" +
   "'" + column1 + "'" + "," +
   "'" + column2 + "'" + "," +
   "'" + column3 + "'" + "," +
   "'" + column4 + "'" + "," +
   "'" + column5 + "'" + ")"
   );
   response.sendRedirect("../displays/courses.jsp");
}
else if (request.getParameter("insertEnroll") != null) {
   statement.executeUpdate("INSERT INTO enroll (student_id, course_id, grade) VALUES (" +
   "'" + column1 + "'" + "," +
   "'" + column2 + "'" + "," +
   "'" + column3 + "'" + ")"
   );
   response.sendRedirect("../displays/enroll.jsp");
}
else if (request.getParameter("insertStudent") != null) {
   statement.executeUpdate("INSERT INTO students (student_id, name, date_of_birth, address, email, level) VALUES (" +
   "'" + column1 + "'" + "," +
   "'" + column2 + "'" + "," +
   "'" + column3 + "'" + "," +
   "'" + column4 + "'" + "," +
   "'" + column5 + "'" + "," +
   "'" + column6 + "'" + ")"
   );
   response.sendRedirect("../displays/students.jsp");
}
else if (request.getParameter("insertFaculties") != null) {
   statement.executeUpdate("INSERT INTO faculties (faculty_id, name, date_of_birth, address, email, level) VALUES (" +
   "'" + column1 + "'" + "," +
   "'" + column2 + "'" + "," +
   "'" + column3 + "'" + "," +
   "'" + column4 + "'" + "," +
   "'" + column5 + "'" + "," +
   "'" + column6 + "'" + ")"
   );
   response.sendRedirect("../displays/faculties.jsp");
}
%>
