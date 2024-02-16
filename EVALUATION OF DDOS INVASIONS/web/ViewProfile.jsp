<%-- 
    Document   : DataOwner
    Created on : 3 Oct, 2020, 8:37:58 AM
    Author     : KishanVenky
--%>

<%@page import="com.database.Queries"%>
<%@page import="java.sql.ResultSet"%>
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
        <li><a href="OwnerHome.jsp">Home</a></li>
        <li class="active"><a href="ViewProfile.jsp">View Profile</a></li>
          <li><a href="SearchFile.jsp">Search File</a></li>
        <li><a href="RequestStatus.jsp">Request Status</a></li>
         <li class="last"><a href="User.jsp">Logout</a></li>
      </ul>
    </div>
   
    <br class="clear" />
  </div>
</div>


<div class="wrapper col5">
  <div id="container">
    <div id="content">
   <%
   String id=(String)session.getAttribute("id");
   String username=(String)session.getAttribute("username");
   String email=(String)session.getAttribute("email");
   
   
   %>
    
         <center>
         <h2>My Profile</h2>
         <table style="margin-bottom: 200px;">
             <tr><th>Name</th><th>Email</th>
             <th>Mobile</th><th>Address</th><th>UserName</th><th>Date of Registration</th></tr>
             <%
             try{
                 ResultSet r=Queries.getExecuteQuery("select * from user where id='"+id+"'");
                 while(r.next()){
                     %>
             <tr>
                 <td><%=r.getString("name")%></td>
                 <td><%=r.getString("email")%></td>
                 <td><%=r.getString("mobile")%></td>
                 <td><%=r.getString("address")%></td>
                 <td><%=r.getString("username")%></td>
                 <td><%=r.getString("date")%></td>
             </tr>
             
             <%
                 }
             }catch(Exception e){
               out.println(e);  
             }
             
             
             %>
             
             
         </table> 
        </center>      
       

    </div>
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