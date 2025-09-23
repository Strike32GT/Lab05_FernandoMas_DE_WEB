package com.app2.fernandomas.model.daos.impl;

import com.app2.fernandomas.model.daos.CursoDao;
import com.app2.fernandomas.model.entities.Curso;

import java.util.List;

public class CursoDaoPreparedStatement implements CursoDao {

    @Override
    public void create(Curso curso){
        //
    }

    @Override
    public Curso find(String id){
        return null;
    }

    @Override
    public List<Curso> findAll(){
        return null;
    }

    @Override
    public void update(Curso curso) {
        //
    }

    @Override
    public void delete(String id) {
        //
    }

    @Override
    public List<Curso> findByRangeCreditos(int min, int max) {
        //
        return null;
    }

    @Override
    public List<Curso> findByNombre(String nombre) {
        return null;
    }
}
