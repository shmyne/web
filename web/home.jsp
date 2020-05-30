<%@ page import="model.User" %>
<%@ page import="model.Todo" %><%--
  Created by IntelliJ IDEA.
  User: Sato
  Date: 10/05/2020
  Time: 14:02
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

          <meta charset="utf-8">
          <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
          <meta name="description" content="">
          <meta name="author" content="">


          <title>App distribuées</title>
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

      </head>

  <body>
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand" href="#"><strong>Todo</strong></a>


      <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
              <li class="nav-item active">
                  <a class="nav-link" href="#">Accueil <span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item">
                  <a class="nav-link" href="#">Deconnexion</a>
              </li>

          </ul>

      </div>
  </nav>
  <main role="main" class="container">
      <div class="d-flex align-items-center p-3 my-3 text-white-50 bg-primary rounded box-shadow">
          <img class="mr-3" src="https://image.flaticon.com/icons/svg/2891/2891884.svg" alt="" width="48" height="48">
          <div class="lh-100">
              <h6 class="mb-0 text-white lh-100"><% out.println(user.name);%></h6>
              <span class="text-white"> <small><% out.println(user.email);%></small></span>
          </div>
      </div>
      <div class="my-3 p-3 bg-white rounded box-shadow">
          <h6 class="border-bottom border-gray pb-2 mb-0">Nouvelle note</h6>

          <div class="jumbotron" style="background: #d4ffe8">
              <form action="todoProcess.jsp" method="POST">
                  <div class="row m-2">
                      <div class="col-12">
                          <input type="text" class="form-control" placeholder="Titre de la note" name="title">
                      </div>


                  </div> <div class="row m-2 mb-3">
                  <div class="col-12">
                      <textarea name="content" class="form-control" placeholder="Contenu de la note"></textarea>
                  </div>
              </div>
                  <div class="row justify-content-center align-items-center">
                      <button class="btn btn-sm btn-primary">Ajouter</button>
                  </div>


              </form>
          </div>
      </div>
      <div class="my-3 p-3 bg-white rounded box-shadow">
          <h6 class="border-bottom border-gray pb-2 mb-0">Vos notes</h6>
          <%
              try {
                  for (Todo item :Todo.getTodoList(user.ID_user)) {
                      %>
          <div class="media text-muted pt-3">
              <img src="https://image.flaticon.com/icons/svg/2891/2891800.svg" class="mr-2 p-2" style="width: 48px; height: 48px" alt="">
              <div class="media-body border-bottom border-gray">
                  <p class=" pb-3 mb-0 small lh-125 ">
                      <strong class="d-block text-gray-dark">
                          <% out.println(item.title);%>
                      </strong>
                      <% out.println(item.content);%>
                      <br>
                     <i>
                         <% out.println(item.date);%>
                     </i>
                  </p>
                  <p class="mb-0">
                  <a href="deleteTodo.jsp?id=<% out.println(item.ID_todo); %>" class="btn btn-danger"><small>Supprimer</small></a>
                  </p>
              </div>
          </div>
          <%
                  }
              } catch (Exception e) {
                  e.printStackTrace();
              }
          %>




      </div>

  </main>
  </body>
</html>