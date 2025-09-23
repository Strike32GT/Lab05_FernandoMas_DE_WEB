<%@ page import="com.app2.fernandomas.model.entities.Administrador" %>
<%@ page import="com.app2.fernandomas.services.CursoService" %>
<%@ page import="com.app2.fernandomas.services.impl.CursoServiceimpl" %>
<%@ page import="com.app2.fernandomas.model.entities.Curso" %><%--
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
        String sid=request.getParameter("id");
        CursoService servicio=new CursoServiceimpl();
        Curso curso=servicio.buscar(sid);
%>
<head>
    <title>Distrito Eliminar - <%=nombre%></title>
</head>
<body>
<jsp:include page="master.jsp" />

<div class="container p-4" style="margin-top: 70px;">
    <div class="row">
        <div class="col-md-4 mx-auto">
            <div class="card text-center">
                <div class="card-header">
                    <h3 class="text-uppercase">Actualizar Cliente</h3>
                </div>
                <div class="card-body">
                    <form action="cController">
                        <div class="input-group mt-2">
                            <label class="input-group-text">Codigo</label>
                            <input class="form-control" type="text" name="txtCodigo"
                                    value="<%=curso.getCodigo()%>" readonly>
                        </div>

                        <div class="input-group mt-2">
                            <label class="input-group-text">Nombre</label>
                            <input class="form-control" type="text" name="txtNombre"
                                   value="<%=curso.getNombre()%>" readonly>
                        </div>

                        <div class="input-group mt-2">
                            <label class="input-group-text">Credito</label>
                            <input class="form-control" type="text" name="txtCreditos" id="txtCreditos"
                                   value="<%=curso.getCreditos()%>" readonly>
                        </div>

                        <div class="form-group mt-4 d-grip gap-2">
                            <input name="accion" type="hidden" value="eliminar"/><br/>
                            <input class="btn btn-success" type="submit" value="eliminar"/>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<% } %>
</html>
