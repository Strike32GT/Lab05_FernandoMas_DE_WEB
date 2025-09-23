package com.app2.fernandomas.model.daos.impl;

import com.app2.fernandomas.model.daos.AdministratorDao;
import com.app2.fernandomas.model.entities.Administrador;

public class AdministratorDaoMemory implements AdministratorDao {
    @Override
    public Administrador validar(String u,String p){
        Administrador administrador=null;
        if(u.equals("admin")&& p.equals("admin")){
            administrador=new Administrador();
            administrador.setNombres("juan");
            administrador.setApellidos("perez");
        }
        return administrador;
    }
}
