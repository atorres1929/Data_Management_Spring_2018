<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
  <head>
    <meta http-equiv="content-type" content="text/html" charset="UTF-8"/>
    <title>Login Process</title>
  </head>
  <body>
    <%
      String username = request.getParameter("username");
      String password = request.getParameter("password");

      if (username.equals("guest") && password.equals("guest")) {
        response.sendRedirect("home.jsp");
      }
      else {
        String badLogin = "Bad Login!";
        session.setAttribute("bad_login", badLogin);
        response.sendRedirect("index.jsp");
      }
    %>
  </body>
</html>
