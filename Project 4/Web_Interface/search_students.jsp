<%@ page import="java.sql.*" %>
<html>
  <head>
    <title>Students</title>
  </head>
  <body>
    <jsp:include page="header.jsp"/>
    <table border="1">
      <tr>
        <th><strong>Students</strong></th>
      </tr>
      <tr>
        <th>Student ID</th>
        <th>Name</th>
        <th>Date of Birth</th>
        <th>Address</th>
        <th>Email</th>
        <th>Level</th>
      </tr>
      <%
      String connectionURL =
      "jdbc:postgresql://class-db.cs.fiu.edu:5432/spr18_atorr208?user=spr18_atorr208&password=4709314";

      Connection connection = null;
      Statement statement = null;
      ResultSet resultSet = null;

      Class.forName("org.postgresql.Driver").newInstance();
      connection = DriverManager.getConnection(connectionURL);
      statement = connection.createStatement();
      resultSet = statement.executeQuery("Select * FROM students WHERE name LIKE '%" + request.getParameter("name") + "%'");

      while (resultSet.next()) {
       %>
      <tr>
        <td><%= resultSet.getString(1) %></td>
        <td><%= resultSet.getString(2) %></td>
        <td><%= resultSet.getString(3) %></td>
        <td><%= resultSet.getString(4) %></td>
        <td><%= resultSet.getString(5) %></td>
        <td><%= resultSet.getString(6) %></td>
      </tr>
      <%
      }
      resultSet.close();
      %>
    </table>
  </body>
</html>
