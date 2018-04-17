<html>

  <head>
    <title>Login</title>
  </head>

  <body>
    <%
      try {
        String login = session.getAttribute("bad_login").toString();
        if (login.equals("Bad Login!")) {
          out.println(login);
        }
      } catch (Exception e) {

      }
      session.invalidate();
    %>
    <form method="post" action="login_process.jsp">
      <p><strong>Username: </strong></p>
      <input type="text" name="username" size="25"/>
      <p><strong>Password: </strong></p>
      <input type="password" name="password" size="15"/>
      <input type="submit" value="Login">
    </form>
  </body>

</html>
