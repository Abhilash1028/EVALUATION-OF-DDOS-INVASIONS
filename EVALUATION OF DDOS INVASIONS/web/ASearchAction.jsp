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
        <li><a href="OwnerHome.jsp"></a></li>
        <li><a href="ViewProfile.jsp"></a></li>
          <li class="active"><a href="SearchFile.jsp"></a></li>
        <li><a href="RequestStatus.jsp"></a></li>
         <li class="last"><a href="User.jsp"></a></li>
      </ul>
    </div>
   
    <br class="clear" />
  </div>
</div>


<div class="wrapper col5">
  <div id="container">
    <div id="content">
   <%

   
   String aid=request.getParameter("aid");
   String name=request.getParameter("name");
   %>
    
         <center>
         <h2>Search Result</h2>
         
         <table style="margin-bottom: 200px;">
              <tr><th>File ID</th><th>Owner</th>
             <th>FileName</th><th>Upload Date</th>
              <th>Send Request</th></tr>
            <%
            try{
            ResultSet r=Queries.getExecuteQuery("select * from file where filename like '%"+name+"%' or data like '%"+name+"%'");
            while(r.next()){
                %>
              <tr>
                  <td><%=r.getString("fid")%></td>
                <td><%=r.getString("username")%></td>
                  <td><%=r.getString("filename")%></td>
                   <td><%=r.getString("date")%></td>
                   <td><a href="AFileRequest.jsp?aid=<%=aid%>&fid=<%=r.getString("fid")%>&fname=<%=r.getString("filename")%>&owner=<%=r.getString("username")%>">Send Request</a></td>
              </tr> 
              <%
            }
            
            
            }catch(Exception e){
            out.println(e);    
}%>
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