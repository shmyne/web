<%--
  Created by IntelliJ IDEA.
  User: Sato
  Date: 10/05/2020
  Time: 14:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">


    <title>App distribuées</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


    <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/floating-labels/">



    <!-- Custom styles for this template -->
    <link href="https://getbootstrap.com/docs/4.0/examples/floating-labels/floating-labels.css" rel="stylesheet">
</head>

<body>
<div class="container">
    <form class="form-signin" action="registerProcess.jsp" method="post">
        <div class="text-center mb-4">
            <h1 class="h3 mb-3 font-weight-normal">Inscription</h1>
        </div>
        <div class="form-label-group">
            <input type="text" id="inputname" class="form-control"  name="name" placeholder="Nom" required autofocus>
            <label for="inputname">Votre nom</label>
        </div>
        <div class="form-label-group">
            <input type="tel" id="inputTel" class="form-control" name="phone_number" placeholder="Téléphone" required autofocus>
            <label for="inputTel">Votre numéro de téléphone</label>
        </div>
        <div class="form-label-group">
            <input type="date" id="inputBirthday" class="form-control" name="birthday" placeholder="Date de naissance" required autofocus>
            <label for="inputBirthday">Date de naissance</label>
        </div>
        <div class="form-label-group">
            <input type="email" id="inputEmail" class="form-control" name="email" placeholder="Adresse email" required autofocus>
            <label for="inputEmail">Adresse email</label>
        </div>

        <div class="form-label-group">
            <input type="password" id="inputPassword" class="form-control" name="password" placeholder="Mot de passe" required>
            <label for="inputPassword">Mot de passe</label>
        </div>
        <div class="form-label-group">
            <input type="password" id="inputConfirmationPassword" name="c_password" class="form-control" placeholder="Confirmation du mot de passe" required>
            <label for="inputConfirmationPassword" >Confirmation</label>
        </div>


        <button class="btn btn-lg btn-primary btn-block" type="submit">Connexion</button>

    </form>
</div>
</body>
</html>
