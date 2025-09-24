<%@ page import="com.app2.fernandomas.model.entities.Administrador" %><%--
  Created by IntelliJ IDEA.
  User: strike32
  Date: 21/09/25
  Time: 13:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%
    HttpSession misesion=request.getSession();
    if(misesion.getAttribute("eladministrador")==null){
        response.sendRedirect("error.jsp");
    }
    else{
        Administrador adm=(Administrador)misesion.getAttribute("eladministrador");
        String nombre=adm.getNombres()+ " "+adm.getApellidos();
%>
<head>
    <title>Nuevo Curso</title>
</head>
<body>
<jsp:include page="master.jsp" />
<div class="container p-4" style="margin-top: 70px;">
    <div class="row">
        <div class="cold-md-4 mx-auto">
            <div class="card text-center">
                <div class="card-header">
                    <h3 class="text-uppercase">Crear Curso</h3>
                </div>
                <div class="card-body">
                    <form action="cController" method="post">
                        <div class="input-group mt-2">
                            <label class="input-group-text">Codigo:</label>
                            <input class="form-control" type="text" name="txtCodigo" id="nomcli" placeholder="Codigo"
                                autofocus required>
                        </div>
                        <div class="input-group mt-2">
                            <label class="input-group-text">Nombres:</label>
                            <input class="form-control" type="text" name="txtNombre" id="apecli" placeholder="Nombres"
                                   required>
                        </div>
                        <div class="input-group mt-2">
                            <label class="input-group-text">Creditos:</label>
                            <input class="form-control" type="text" name="txtCreditos" id="nrodnicli"
                                   placeholder="Creditos" required>
                        </div>
                        <div class="form-group mt-4 d-grid gap-2">
                            <input name="accion" type="hidden" value="insertar"/><br/>
                            <input class="btn btn-success" type="submit" value="insertar"/>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<%}%>
</body>
</html>
