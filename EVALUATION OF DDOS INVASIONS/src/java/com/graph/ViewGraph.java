/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.graph;

import com.database.Queries;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.DefaultCategoryDataset;


public class ViewGraph extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
         OutputStream out = response.getOutputStream();
    	   DefaultCategoryDataset bar_chart_servlet = new DefaultCategoryDataset();
        try{
            Queries.getExecuteUpdate("delete from graph ");
            
            ResultSet r=Queries.getExecuteQuery("select count(*) from attacker where status='Attacker'");
          int i=0;
            while(r.next()){
              i=r.getInt(1);
          }
          Queries.getExecuteUpdate("insert into graph value('DDoS_Attacker','"+i+"')");
            ResultSet r1=Queries.getExecuteQuery("select count(*) from attacker where status!='Attacker'");
          int i1=0;
            while(r1.next()){
              i1=r1.getInt(1);
          }
            Queries.getExecuteUpdate("insert into graph value('illegitimate_Attacker','"+i1+"')"); 
           
         
            ResultSet rr=Queries.getExecuteQuery("select * from graph");
            while(rr.next()){
                String name=rr.getString("name");
                int iii=Integer.parseInt(rr.getString("count"));
                 bar_chart_servlet.addValue(iii,"", name); 
            }
            JFreeChart BarChartObject=ChartFactory.createBarChart("Attackers","","Count",bar_chart_servlet,PlotOrientation.HORIZONTAL.VERTICAL,true,true,false); 
                response.setContentType("image/png");
                ChartUtilities.writeChartAsPNG(out, BarChartObject, 580, 400);
            
            
        }catch(Exception e){
            System.out.println(e);
        }
        
        
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
