/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jc.controladores;

import com.jc.model.Conexion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.CallableStatement;
import java.sql.Connection;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author T-201
 */
public class ServletActualizarProducto extends HttpServlet {

   
    
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
           
         int id= integer.parseInt(request.getParameter("id"));
         float precio=Float.parseFloat(request.getParameter("precio"));
        try{
        out.println("Probado Actualizacion del Producto");
         Conexion c=new Conexion();
        Connection con=c.conectarse();
     CallableStatement callate=con.prepareCall("{call pon_tu_procedimiento(?,?,?)}");
        callate.registerOutParameter(1,java.sql.Types.INTEGER);
        callate.setString(2,"id");
        callate.setString(3,"precio");
      
        callate.execute();
        int pk=callate.getInt(1);
        System.out.println("El id ingresado es:"+pk);
        }catch(Exception e){
            
        }
        
    }
}
