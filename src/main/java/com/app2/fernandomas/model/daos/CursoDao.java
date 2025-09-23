package com.app2.fernandomas.model.daos;

import com.app2.fernandomas.model.entities.Curso;

import java.util.List;

public interface CursoDao extends EntidadDao<Curso,String>{

    public List<Curso> findByRangeCreditos(int min, int max);
    public List<Curso> findByNombre(String nombre);
}
