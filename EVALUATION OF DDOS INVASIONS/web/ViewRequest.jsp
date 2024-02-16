<%-- 
    Document   : DataOwner
    Created on : 3 Oct, 2020, 8:37:58 AM
    Author     : KishanVenky
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page import="java.security.SecureRandom"%>
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
        <li><a href="Upload.jsp">Upload</a></li>
          <li><a href="ViewUploads.jsp">View Uploads</a></li>
        <li class="active"><a href="ViewRequest.jsp">View Request</a></li>
         <li class="last"><a href="DataOwner.jsp">Logout</a></li>
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
         <h2>View All Uploaded Files</h2>
         <table style="margin-bottom: 200px;">
              <tr><th>File ID</th><th>UserName</th>
             <th>FileName</th><th>Request Date</th>
             <th>Request Status</th> <th>Actions</th></tr>
             <%
             try{
                 ResultSet r=Queries.getExecuteQuery("select * from request where owner='"+username+"'");
                 while(r.next()){
                     String status=r.getString("status");
                     String status2=r.getString("status2");
                     %>
             <tr>
                 <td><%=r.getString("fid")%></td>
                 <%if(status2.equals("attacker")){
                  %>
                  <td><font color="red"><%=r.getString("user")%></font></td>
                  <%
                 }else{
%>
           <td><font color="green"><%=r.getString("user")%></font></td>         
                  <%
}%>
                
                 <td><%=r.getString("fname")%></td>
                 <td><%=r.getString("rdate")%></td>
                  <td><%=r.getString("status")%></td>
                  <%if(status2.equals("normal")){%>
                   
                     <td><a href="Accept.jsp?id=<%=r.getString("id")%>">Accept</a>
                         <a href="Reject.jsp?id=<%=r.getString("id")%>&user=<%=r.getString("user")%>&fname=<%=r.getString("fname")%>">Reject</a>
                     </td>
                     <%}else
{
%>
  <td>
                         <a href="Reject2.jsp?id=<%=r.getString("id")%>&user=<%=r.getString("user")%>&fname=<%=r.getString("fname")%>">Reject</a>
                     </td>
<%
}%>
                   
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