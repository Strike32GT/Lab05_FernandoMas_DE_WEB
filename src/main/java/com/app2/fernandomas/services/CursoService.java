package com.app2.fernandomas.services;


import com.app2.fernandomas.model.entities.Curso;

import java.util.List;

public interface CursoService {
    public void grabar(Curso curso);
    public Curso buscar(String id);
    public List<Curso> listar();
    public void actualizar(Curso curso);
    public void borrar(String id);
    public List<Curso> filterByCreditos(int mint, int max);
}
