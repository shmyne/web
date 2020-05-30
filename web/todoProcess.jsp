<%--
  Created by IntelliJ IDEA.
  Todo: DELL LATITUDE 3380
  Date: 27/05/2020
  Time: 18:16
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


    try {
        todo.ID_user =((User) session.getAttribute("session")).ID_user;
        Todo.create(todo);
        response.sendRedirect("/web_war_exploded/home.jsp");
    } catch (Exception e) {
        e.printStackTrace();
    }

%>

</body>
</html>
