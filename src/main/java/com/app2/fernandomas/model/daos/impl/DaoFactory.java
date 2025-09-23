package com.app2.fernandomas.model.daos.impl;


import com.app2.fernandomas.model.daos.AdministratorDao;
import com.app2.fernandomas.model.daos.CursoDao;
import com.app2.fernandomas.util.Tipo;

public class DaoFactory {

    public static AdministratorDao getAdministradorDAO(Tipo tipo){
        switch (tipo){
            case MEM:
                return new AdministratorDaoMemory();
            case PST:
                return new AdministratorPreparedStatement();
            case CST:
                return new AdministratorDaoCallableStatement();
            default:
                return null;
        }
    }

    public static CursoDao getCursoDao(Tipo tipo){
        switch (tipo){
            case MEM:
                return new CursoDaoMemory();
            case PST:
                return new CursoDaoPreparedStatement();
            case CST:
                return new CursoDaoCallableStatement();
            default:
                return null;
        }
    }
}
