<html>
  <head>
    <title>Edit</title>
  </head>
  <body>
    <jsp:include page="/Web_Interface/header.jsp" />
    <h1>Update</h1>
    <%
    String command = request.getParameter("command");
    String table = request.getParameter("table");
    if (command == null || table == null) {
      response.sendRedirect("edit.jsp");
      session.setAttribute("bad_command", "Bad Command!");
    }
    else if (command.equals("update")) {
      if (table.equals("courses")) {
    %>
    <form method="post" action="update.jsp">
      <input type="radio" name="columnCourses" value="courseID">Course ID</input>
      <input type="radio" name="columnCourses" value="description">Description</input>
      <input type="radio" name="columnCourses" value="level">Level</input>
      <input type="radio" name="columnCourses" value="instructor">Instructor</input>
      <input type="radio" name="columnCourses" value="semester">Semester</input>
      <br/>
      <strong>Condition</strong>
      <input type="text"  name="condition" />
      <br/>
      <input type="submit" value="Update" />
      <input type="reset" value="Reset" />
    </form>
    <%
      }
    }
    else if (command.equals("insert")) {
      if (table.equals("courses")) {
    %>
      <form method="post" action="insert.jsp">
        <p>Course ID:</p><br/>
        <input type="text" name="column1"/>
        <p>Description:</p><br/>
        <input type="text" name="column2"/>
        <p>Level:</p><br/>
        <input type="text" name="column3"/>
        <p>Instructor:</p><br/>
        <input type="text" name="column4"/>
        <p>Semester:</p><br/>
        <input type="text" name="column5"/>
      </form>
    <%
      }
    }
    %>
  </body>
</html>
