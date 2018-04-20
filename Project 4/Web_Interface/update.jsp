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
if (request.getParameter("updateCourses") != null) {
   statement.executeUpdate("UPDATE courses SET " +
   "course_id = '" + column1 + "'" + "," +
   "description = '" + column2 + "'" + "," +
   "level = '" + column3 + "'" + "," +
   "instructor = '" + column4 + "'" + "," +
   "semester = '" + column5 + "'" + " WHERE course_id = '" + column1 + "'"
   );
   response.sendRedirect("../displays/courses.jsp");
}
else if (request.getParameter("updateEnroll") != null) {
    statement.executeUpdate("UPDATE enroll SET " +
    "student_id = '" + column1 + "'" + "," +
    "course_id = '" + column2 + "'" + "," +
    "grade = '" + column3 + "'" + " WHERE student_id = '" + column1 + "' AND " + "course_id = '" + column2 + "'"
   );
   response.sendRedirect("../displays/enroll.jsp");
}
else if (request.getParameter("updateStudent") != null) {
  statement.executeUpdate("UPDATE students SET " +
  "student_id = '" + column1 + "'" + "," +
  "name = '" + column2 + "'" + "," +
  "date_of_birth = '" + column3 + "'" + "," +
  "address = '" + column4 + "'" + "," +
  "email = '" + column5 + "'" + "," +
  "level = '" + column6 + "'" + " WHERE student_id = '" + column1 + "'"
  );
   response.sendRedirect("../displays/students.jsp");
}
else if (request.getParameter("updateFaculties") != null) {
  statement.executeUpdate("UPDATE faculties SET " +
  "faculty_id = '" + column1 + "'" + "," +
  "name = '" + column2 + "'" + "," +
  "date_of_birth = '" + column3 + "'" + "," +
  "address = '" + column4 + "'" + "," +
  "email = '" + column5 + "'" + "," +
  "level = '" + column6 + "'" + " WHERE faculty_id = '" + column1 + "'"
  );
   response.sendRedirect("../displays/faculties.jsp");
}
%>
