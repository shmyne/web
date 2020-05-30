<%--
  Created by IntelliJ IDEA.
  User: DELL LATITUDE 3380
  Date: 27/05/2020
  Time: 18:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@page import="model.User"%>
<jsp:useBean id="user" class="model.User"/>

<jsp:setProperty property="*" name="user"/>

<%
    User data = null;
    out.println("email "+ user.email);

    try {
        data = User.check(user);
    } catch (Exception e) {
        e.printStackTrace();
    }
    if(data!= null){
        out.println("You are successfully logged in ");
        session.setAttribute("session",data);
        %>
<jsp:include page="home.jsp"></jsp:include>
<%
    }
    else
    {
        out.print("Sorry, email or password error");
        response.sendRedirect("/web_war_exploded/login.jsp");
    }
%>

</body>
</html>
