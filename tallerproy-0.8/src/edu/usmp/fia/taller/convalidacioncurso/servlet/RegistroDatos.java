/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.usmp.fia.taller.convalidacioncurso.servlet;

import com.google.gson.Gson;
import edu.usmp.fia.taller.common.action.ActionServlet;
import edu.usmp.fia.taller.common.action.Default;
import edu.usmp.fia.taller.common.action.HttpMethod;
import edu.usmp.fia.taller.common.action.HttpMethodType;
import edu.usmp.fia.taller.common.action.RequireLogin;
import edu.usmp.fia.taller.common.bean.Curso;
import edu.usmp.fia.taller.common.bean.Departamento;
import edu.usmp.fia.taller.common.dao.DAOFactory;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.annotation.WebServlet;

/**
 *
 * @author Ingeniero
 */
//historiaConvalidacion?f=ListarCursos
@WebServlet("/registrodatos")
public class RegistroDatos extends ActionServlet {

//    @HttpMethod(HttpMethodType.GET)
//    @RequireLogin(false)
//    public void ListarDepartamentos() throws IOException {
//        List<Departamento> Departamentos = null;
//        DAOFactory oDAOFactory;
//        response.setContentType("application/json;charset=UTF-8");
//        PrintWriter out = response.getWriter();
//        Gson gson = new Gson();
//        try {
//            oDAOFactory = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
//            Departamentos = oDAOFactory.getConvalidacion().getHistoriaConvalidacion().listardepartamentos();
//        } catch (Exception e) {
//            e.getMessage();
//            throw e;
//        } finally {
//            out.print(gson.toJson(Departamentos));
//            out.close();
//        }
//
//    }

}
