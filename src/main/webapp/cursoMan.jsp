<%@ page import="com.app2.fernandomas.model.entities.Administrador" %>
<%@ page import="com.app2.fernandomas.services.CursoService" %>
<%@ page import="com.app2.fernandomas.services.impl.CursoServiceimpl" %>
<%@ page import="com.app2.fernandomas.model.entities.Curso" %><%--
  Created by IntelliJ IDEA.
  User: strike32
  Date: 21/09/25
  Time: 13:51
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
        CursoService servicio=new CursoServiceimpl();
%>
<head>
    <title>Mantenimiento de Cursos ! <%=nombre%></title>
</head>
<body>


<div class="container" style="margin-top:70px;">
    <div class="row mt-5">
        <jsp:include page="master.jsp" />

        <h1>Mantemimiento de Cursos</h1>
        <div style="padding: 10px;">
            <button class="btn btn-danger"><a class="nav-link link-light" aria-current="page"
                href="cursoInsertar.jsp">Nuevo Curso</a></button>
        </div>

        <table class="table table-dark table-hover">
            <tr align="center">
                <th>CODIGO</th>
                <th>NOMBRE</th>
                <th>CREDITOS</th>
                <th>ACCIONES</th>
            </tr>
            <%for (Curso curso: servicio.listar()) {%>
            <tr>
                <td><%=curso.getCodigo()%></td>
                <td><%=curso.getNombre()%></td>
                <td><%=curso.getCreditos()%></td>
                <td><a class="btn btn-warning" href="cursoEliminar.jsp?id=<%=curso.getCodigo()%>">
                    <i class="fa-solid fa-trash"></i>Borrar</a>
                <a class="btn btn-danger" href="cursoActualizar.jsp?id=<%=curso.getCodigo()%>">
                    <i class="fa-solid fa-pencil">Actualizar</i></a></td>
            </tr>
            <%}%>
        </table>
    </div></div></body>
<%}%>
</html>
