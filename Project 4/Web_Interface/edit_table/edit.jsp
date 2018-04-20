<html>
  <head>
    <title>Edit Table</title>
  </head>
  <body>
    <jsp:include page="/Web_Interface/header.jsp"/>
    <form method="post" action="edit_process.jsp">
      <%
      try {
        String command = session.getAttribute("bad_command").toString();
        if (command.equals("Bad Command!")) {
          out.println(command);
        }
      } catch (Exception e) {

      }
      session.invalidate();
      %>
      <table border="1">
        <tr>
          <td>
            <p><strong>Action</strong></p>
            <select name="command">
              <option selected="selected" disabled="disabled">Command</option>
              <option value="update">Update</option>
              <option value="insert">Insert</option>
              <option value="delete">Delete</option>
            </select>
          </td>
          <td>
            <p><strong>Table</strong></p>
            <select name="table">
              <option selected="selected" disabled="disabled">Table</option>
              <option value="courses">Courses</option>
              <option value="enroll">Enroll</option>
              <option value="faculties">Faculties</option>
              <option value="students">Students</option>
            </select>
          </td>
        </tr>
      </table>
      <div style="text-align: center;">
        <input type="submit" value="Submit" />
      </div>
    </form>
  </body>
</html>
