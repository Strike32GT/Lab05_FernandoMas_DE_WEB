package com.app2.fernandomas.services.impl;

import com.app2.fernandomas.model.daos.CursoDao;
import com.app2.fernandomas.model.daos.impl.DaoFactory;
import com.app2.fernandomas.model.entities.Curso;
import com.app2.fernandomas.services.CursoService;
import com.app2.fernandomas.util.Util;

import java.util.List;

public class CursoServiceimpl implements CursoService {

    private CursoDao dao;
    public CursoServiceimpl(){
        dao= DaoFactory.getCursoDao(Util.opc);
    }

    @Override
    public void grabar(Curso curso){
        dao.create(curso);
    }

    @Override
    public Curso buscar(String id){
        return dao.find(id);
    }

    @Override
    public List<Curso> listar(){
        return dao.findAll();
    }

    @Override
    public void actualizar(Curso curso){
        dao.update(curso);
    }

    @Override
    public void borrar(String id){
        dao.delete(id);
    }

    @Override
    public List<Curso> filterByCreditos(int min,int max){
        return dao.findByRangeCreditos(min,max);
    }
}
