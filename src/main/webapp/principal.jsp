<%@ page import="com.app2.fernandomas.model.entities.Administrador" %><%--
  Created by IntelliJ IDEA.
  User: strike32
  Date: 21/09/25
  Time: 13:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%
    HttpSession misesion=request.getSession();
    if(misesion.getAttribute("eladministrador")==null){
        response.sendRedirect("error.jsp");
    }else{
        Administrador adm=(Administrador)misesion.getAttribute("eladministrador");
        String nombre=adm.getNombres()+" "+adm.getApellidos();
%>
<head>
    <title>Intranet</title>
</head>
<body>
<jsp:include page="master.jsp" />

<h2><a href="cursoMan.jsp">Mantenimiento de cursos</a> </h2>
</body>
<% } %>
</html>
