package com.app2.fernandomas.model.daos;

import com.app2.fernandomas.model.entities.Administrador;

public interface AdministratorDao {

    public Administrador validar(String user,String password);
}
