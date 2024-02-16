<%-- 
    Document   : DataOwner
    Created on : 3 Oct, 2020, 8:37:58 AM
    Author     : KishanVenky
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
<title>EVALUATION OF DDOS INVASIONS</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
</head>
<body id="top">
<div class="wrapper col1">
  <div id="header">
    <div id="logo" style="width:auto;">
      <h1><a href="#">EVALUATION OF DDOS INVASIONS</a></h1>
      <p><strong>and an Introduction of a Hybrid
Statistical Model to Detect DDoS Attacks on
Cloud Computing Environment</strong></p>
  </div>
    
    <br class="clear" />
  </div>
</div>
<div class="wrapper col2">
  <div id="topbar">
    <div id="topnav">
      <ul>
        <li><a href="AdminHome.jsp">Home</a></li>
    
      <li class="active"><a href="Classify.jsp">Classify</a></li>
      <li><a href="DetectDDoS.jsp">Detect DDoS</a></li>
       <li><a href="ViewGraph.jsp">View Graph</a></li>
        <li class="last"><a href="Admin.jsp">Logout</a></li>
      </ul>
    </div>
   
    <br class="clear" />
  </div>
</div>


<div class="wrapper col5">
  <div id="container">
    
 
     <center>
          <h2>UnAuthorized Attackers</h2>
       
         
                                  
                                 
                                   <table>  
                                       <tr>
                                           <th>UserName</th>
                                            <th>FileName</th>
                                             
                                       </tr>
                                     <% try{
                                      ResultSet r=Queries.getExecuteQuery("select * from attacker where status='Attacker'");
                                      while(r.next()){
                                          %>
                                          <tr>
                                              <td><%=r.getString("username")%></td> 
                                               <td><%=r.getString("fname")%></td> 
                                             
                                          </tr>
                                          
                                          <%
                                      }
                                      }catch(Exception e){
                                         out.println(e); 
                                      }
%>
                                  
                                   </table>         
          
 <h2>Authorized Attackers</h2>
       
         
                                  
                                 
                                   <table>  
                                       <tr>
                                           <th>UserName</th>
                                            <th>FileName</th>
                                             
                                       </tr>
                                     <% try{
                                      ResultSet r=Queries.getExecuteQuery("select * from attacker where status!='Attacker'");
                                      while(r.next()){
                                          %>
                                          <tr>
                                              <td><%=r.getString("username")%></td> 
                                               <td><%=r.getString("fname")%></td> 
                                             
                                          </tr>
                                          
                                          <%
                                      }
                                      }catch(Exception e){
                                         out.println(e); 
                                      }
%>
                                  
                                   </table>         
        </center>

    
    <div id="column">
     
    </div>
    <br class="clear" />
  </div>
</div>
<div class="wrapper col6">
  <div id="footer">
    
  
  </div>
</div>
<div class="wrapper col7">
  <div id="copyright">
    <p class="fl_left">EVALUATION OF DDOS INVASIONS and an Introduction of a Hybrid
Statistical Model to Detect DDoS Attacks on
Cloud Computing Environment</p>
     <br class="clear" />
  </div>
</div>
</body>
</html>