<html>
  <head>
    <title>Edit</title>
  </head>
  <body>
    <jsp:include page="/Web_Interface/header.jsp" />
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
    <h1>Courses</h1>
    <form method="post" action="update.jsp">
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
      <input type="hidden" name="table" value="<%= request.getParameter("table") %>" />
      <input type="submit" name="updateCourses" value="Update Course" />
    </form>
    <%
      }
      else if (table.equals("enroll")) {
    %>
    <h1>Enroll</h1>
    <form method="post" action="update.jsp">
      <p>Student ID:</p><br/>
      <input type="text" name="column1"/>
      <p>Course ID:</p><br/>
      <input type="text" name="column2"/>
      <p>Grade:</p><br/>
      <input type="text" name="column3"/>
      <input type="hidden" name="table" value="<%= request.getParameter("table") %>" />
      <input type="submit" name="updateEnroll" value="Update Enrollment" />
    </form>
    <%
      }
      else if (table.equals("students")) {
    %>
    <h1>Students</h1>
    <form method="post" action="update.jsp">
      <p>Student ID:</p><br/>
      <input type="text" name="column1"/>
      <p>Name:</p><br/>
      <input type="text" name="column2"/>
      <p>Date of Birth:</p><br/>
      <input type="text" name="column3"/>
      <p>Address:</p><br/>
      <input type="text" name="column4"/>
      <p>Email:</p><br/>
      <input type="text" name="column5"/>
      <p>Level:</p><br/>
      <input type="text" name="column6"/>
      <input type="hidden" name="table" value="<%= request.getParameter("table") %>" />
      <input type="submit" name="updateStudent" value="Update Student" />
    </form>
    <%
      }
      else if (table.equals("faculties")) {
    %>
    <h1>Faculty</h1>
    <form method="post" action="update.jsp">
      <p>Faculty ID:</p><br/>
      <input type="text" name="column1"/>
      <p>Name:</p><br/>
      <input type="text" name="column2"/>
      <p>Date of Birth:</p><br/>
      <input type="text" name="column3"/>
      <p>Address:</p><br/>
      <input type="text" name="column4"/>
      <p>Email:</p><br/>
      <input type="text" name="column5"/>
      <p>Level:</p><br/>
      <input type="text" name="column6"/>
      <input type="hidden" name="table" value="<%= request.getParameter("table") %>" />
      <input type="submit" name="updateFaculties" value="Update Faculty" />
    </form>
    <%
      }
    }
    else if (command.equals("insert")) {
      if (table.equals("courses")) {
    %>
      <h1>Courses</h1>
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
        <input type="hidden" name="table" value="<%= request.getParameter("table") %>" />
        <input type="submit" name="insertCourses" value="Insert Course" />
      </form>
    <%
      }
      else if (table.equals("enroll")) {
    %>
      <h1>Enroll</h1>
      <form method="post" action="insert.jsp">
        <p>Student ID:</p><br/>
        <input type="text" name="column1"/>
        <p>Course ID:</p><br/>
        <input type="text" name="column2"/>
        <p>Grade:</p><br/>
        <input type="text" name="column3"/>
        <input type="hidden" name="table" value="<%= request.getParameter("table") %>" />
        <input type="submit" name="insertEnroll" value="Insert Enrollment" />
      </form>
    <%
      }
      else if (table.equals("students")) {
    %>
      <h1>Students</h1>
      <form method="post" action="insert.jsp">
        <p>Student ID:</p><br/>
        <input type="text" name="column1"/>
        <p>Name:</p><br/>
        <input type="text" name="column2"/>
        <p>Date of Birth:</p><br/>
        <input type="text" name="column3"/>
        <p>Address:</p><br/>
        <input type="text" name="column4"/>
        <p>Email:</p><br/>
        <input type="text" name="column5"/>
        <p>Level:</p><br/>
        <input type="text" name="column6"/>
        <input type="hidden" name="table" value="<%= request.getParameter("table") %>" />
        <input type="submit" name="insertStudent" value="Insert Student" />
      </form>
    <%
      }
      else if (table.equals("faculties")) {
    %>
      <h1>Faculty</h1>
      <form method="post" action="insert.jsp">
        <p>Faculty ID:</p><br/>
        <input type="text" name="column1"/>
        <p>Name:</p><br/>
        <input type="text" name="column2"/>
        <p>Date of Birth:</p><br/>
        <input type="text" name="column3"/>
        <p>Address:</p><br/>
        <input type="text" name="column4"/>
        <p>Email:</p><br/>
        <input type="text" name="column5"/>
        <p>Level:</p><br/>
        <input type="text" name="column6"/>
        <input type="hidden" name="table" value="<%= request.getParameter("table") %>" />
        <input type="submit" name="insertFaculties" value="Insert Faculty" />
      </form>
    <%
      }
    }
    else if (command.equals("delete")) {
      if (table.equals("enroll")) {
    %>
      <h1>Delete</h1>
      <form action="delete.jsp" method="post">
        Student ID: <input type="text" name="id" />
        Faculty ID: <input type="text" name="id2" />
        <input type="hidden" name="table" value="<%= request.getParameter("table") %>" />
        <input type="submit" value="Delete" />
      </form>
    <%
      }
      else {
    %>
      <h1>Delete</h1>
      <form action="delete.jsp" method="post">
        ID: <input type="text" name="id" />
        <input type="hidden" name="table" value="<%= request.getParameter("table") %>" />
        <input type="submit" value="Delete" />
      </form>
    <%
      }
    }
    %>
  </body>
</html>
