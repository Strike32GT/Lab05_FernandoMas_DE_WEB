package com.app2.fernandomas.controllers;

import com.app2.fernandomas.model.entities.Administrador;
import com.app2.fernandomas.services.AdministradorService;
import com.app2.fernandomas.services.impl.AdministradorServiceimpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "AdministradorController", urlPatterns = {"/sValidor","/admin"})
public class AdministradorController extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException{
        String sUsuario= request.getParameter("txtUsuario");
        String sPassword= request.getParameter("txtPassword");

        AdministradorService servicio=new AdministradorServiceimpl();
        Administrador adm=servicio.validar(sUsuario,sPassword);

        if(adm!=null){
            request.getSession().setAttribute("eladministrador",adm);
            response.sendRedirect("principal.jsp");
        }else {
            response.sendRedirect("error.jsp");
        }
    }
}
