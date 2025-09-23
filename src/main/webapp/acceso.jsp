<%--
  Created by IntelliJ IDEA.
  User: strike32
  Date: 21/09/25
  Time: 17:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Login Page</title>

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body class="bg-light">
<div class="container-fluid h-100">
  <div class="row h-100 justify-content-center align-items-center">
    <div class="col-md-4">
      <div class="card">
        <div class="card-header bg-white">
          <h3 class="text-center text-dark mb-0">Sign In</h3>
          <div class="d-flex justify-content-end">
            <span class="mr-2"><i class="fab fa-facebook-square text-dark"></i></span>
            <span class="mr-2"><i class="fab fa-google-plus-square text-dark"></i></span>
            <span><i class="fab fa-twitter-square text-dark"></i></span>
          </div>
        </div>
        <div class="card-body">
          <form action="sValidor" method="post">
            <div class="input-group form-group mb-3">
              <div class="input-group-prepend">
                <span class="input-group-text bg-white"><i class="fas fa-user text-dark"></i></span>
              </div>
              <input type="text" class="form-control" placeholder="username" name="txtUsuario">
            </div>
            <div class="input-group form-group mb-3">
              <div class="input-group-prepend">
                <span class="input-group-text bg-white"><i class="fas fa-key text-dark"></i></span>
              </div>
              <input type="password" class="form-control" placeholder="password" name="txtPassword">
            </div>
            <div class="form-group form-check mb-3">
              <input type="checkbox" class="form-check-input" id="rememberMe">
              <label class="form-check-label" for="rememberMe">Remember Me</label>
            </div>
            <div class="form-group">
              <input type="submit" value="Login" class="btn btn-primary btn-block">
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>