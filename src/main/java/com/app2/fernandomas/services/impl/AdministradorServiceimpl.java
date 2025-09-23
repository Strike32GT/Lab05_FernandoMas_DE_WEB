package com.app2.fernandomas.services.impl;

import com.app2.fernandomas.model.daos.AdministratorDao;
import com.app2.fernandomas.model.daos.impl.DaoFactory;
import com.app2.fernandomas.model.entities.Administrador;
import com.app2.fernandomas.services.AdministradorService;
import com.app2.fernandomas.util.Util;

public class AdministradorServiceimpl implements AdministradorService {

    private AdministratorDao dao;

    public AdministradorServiceimpl(){
        dao= DaoFactory.getAdministradorDAO(Util.opc);
    }

    @Override
    public Administrador validar(String u, String p){
        return dao.validar(u,p);
    }
}
