package com.app2.fernandomas.model.daos.impl;

import com.app2.fernandomas.model.daos.CursoDao;
import com.app2.fernandomas.model.entities.Curso;
import com.app2.fernandomas.util.DBConn;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

public class CursoDaoCallableStatement implements CursoDao {

    private Connection con;
    private ResultSet rs;
    private CallableStatement cst;


    @Override
    public List<Curso> findAll() {
        List<Curso> cursos=new ArrayList<>();
        try (Connection con= DBConn.getConnection()){
            CallableStatement cst=con.prepareCall("{call sp_listar_cursos()}");
            rs=cst.executeQuery();
            while (rs.next()){
                cursos.add(new Curso(rs.getString("chrCurCodigo"),rs.getString("vchCurNombre"),
                        rs.getInt("interCurCreditos")));
            }
        }catch (SQLException e){
            System.out.println("Error en la consulta");
        }
        return cursos;
    }



    @Override
    public void create(Curso curso) {
        try (Connection con=DBConn.getConnection();
            CallableStatement cst=con.prepareCall("{call sp_ins_curso(?,?,?)}")){

            cst.setString(1,curso.getCodigo());
            cst.setString(2,curso.getNombre());
            cst.setInt(3,curso.getCreditos());
            int filas=cst.executeUpdate();
            System.out.println("Filas detectadas"+filas);
        }catch (SQLException e){
            System.out.println("Error en la inserciòn");
        }

    }







    @Override
    public Curso find(String id) {
        Curso curso=null;
        try (Connection con=DBConn.getConnection();
             CallableStatement cst=con.prepareCall("{call sp_find_curso(?,?,?)}")){
             cst.setString(1,id);
             rs=cst.executeQuery();
             if(rs.next()){
                 curso=new Curso(rs.getString("chrCurCodigo"), rs.getString("vchCurNombre"),
                         rs.getInt("intCurCodigos"));
             }
        }catch (SQLException e){
            System.out.println("Error en la consulta");
        }
        return curso;
    }



    @Override
    public void update(Curso curso) {
        try (Connection con=DBConn.getConnection();
             CallableStatement cst=con.prepareCall("{call sp_upd_curso(?,?,?)}")){
             cst.setString(1, curso.getCodigo());
             cst.setString(2, curso.getNombre());
             cst.setInt(3, curso.getCreditos());
             cst.executeUpdate();
        }catch (SQLException e){
            System.out.println("Error en la actualizacion");
        }
    }

    @Override
    public void delete(String id) {
        try (Connection con=DBConn.getConnection();
             CallableStatement cst=con.prepareCall("{call sp_del_curso(?)}")){
            cst.setString(1,id);
            cst.executeUpdate();
        }catch (SQLException e){
            System.out.println("Error en la eliminacion");
        }
    }


    @Override
    public List<Curso> findByRangeCreditos(int min, int max)
    {
        return new ArrayList<>();
    }

    @Override
    public List<Curso> findByNombre(String nombre) {
        return new ArrayList<>();
    }



}
