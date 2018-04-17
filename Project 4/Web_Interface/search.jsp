<html>
  <head>
    <title>Search</title>
  </head>
  <body>
    <jsp:include page="/Web_Interface/header.jsp"/>
    <form method="post" action="search_students.jsp">
      Student Name: <input type="text" name="name" />
      <input type="submit" />
    </form>
    <form method="post" action="search_faculties.jsp">
      Faculties Name: <input type="text" name="name" />
      <input type="submit" />
    </form>
    <form method="post" action="search_courses.jsp">
      Courses Name: <input type="text" name="description" />
      <input type="submit" />
    </form>
  </body>
</html>
