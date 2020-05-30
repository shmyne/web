<%--
  Created by IntelliJ IDEA.
  User: DELL LATITUDE 3380
  Date: 28/05/2020
  Time: 19:12
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if(session.getAttribute("session")== null){

        response.sendRedirect("/web_war_exploded/login.jsp");

    }
    User user = (User)session.getAttribute("session");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@page import="model.Todo"%>
<%@ page import="model.User" %>
<jsp:useBean id="todo" class="model.Todo"/>

<jsp:setProperty property="*" name="todo"/>

<%

    String id=request.getParameter("id");

    try {
        Todo.delete(Integer.parseInt(id),((User) session.getAttribute("session")).ID_user);
        response.sendRedirect("/web_war_exploded/home.jsp");
    } catch (Exception e) {
        e.printStackTrace();
    }

%>


</body>
</html>
