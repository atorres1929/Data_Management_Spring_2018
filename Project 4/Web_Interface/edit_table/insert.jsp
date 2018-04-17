<%@ page import="java.sql.*" %>
<%
String connectionURL = "jdbc:postgresql://class-db.cs.fiu.edu:5432/spr18_atorr208?user=spr18_atorr208&password=4709314";

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;

Class.forName("org.postgresql.Driver").newInstance();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

resultSet = statement.executeQuery("INSERT INTO "
                                 + request.getParameter("table")
                                 + " VALUES ("
                                 + request.getParameter("column1") + ","
                                 + request.getParameter("column2") + ","
                                 + request.getParameter("column3") + ","
                                 + request.getParameter("column4") + ","
                                 + request.getParameter("column5")
                                 );
%>
