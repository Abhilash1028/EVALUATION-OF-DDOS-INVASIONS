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
        <li><a href="ViewProfile.jsp">View Profile</a></li>
          <li><a href="SearchFile.jsp">Search File</a></li>
        <li class="active"><a href="RequestStatus.jsp">Request Status</a></li>
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
         <h2>Request Status</h2>
         
         <table style="margin-bottom: 200px;">
              <tr><th>File ID</th><th>Owner</th>
             <th>FileName</th><th>Request Date</th>
              <th>Request Status</th><th>Download Key</th><th>Click</th></tr>
            <%
            try{
            ResultSet r=Queries.getExecuteQuery("select * from request where user='"+username+"'");
            while(r.next()){
                String s=r.getString("status");
                %>
              <tr>
                  <td><%=r.getString("fid")%></td>
                <td><%=r.getString("owner")%></td>
                  <td><%=r.getString("fname")%></td>
                   <td><%=r.getString("rdate")%></td>
                   <td><%=r.getString("status")%></td>
                     <td><%=r.getString("dkey")%></td>
                     <%if(s.equals("waiting")){
                      %>
                      <td><font color="orange">waiting to be accept</font></td>
                      <%
                  }else{
%>
                      <td><a href="RequestStatus.jsp?fname=<%=r.getString("fname")%>&fid=<%=r.getString("fid")%>"><input type="button" value="Download" style="color:green;"></a></td>
<%
}%>   
                     
              </tr> 
              <%
            }
            
            
            }catch(Exception e){
            out.println(e);    
}%>
         </table> 
         <%String fname=request.getParameter("fname");
         String fid=request.getParameter("fid");
         if(fname!=null){
          %>
          <h2>Download Key Verification</h2>
            <form action="VerifyAction.jsp" method="post">
         <table style="margin-bottom: 200px;">
             
               <tr><th>FileName</th><td><input type="text" name="fname" value="<%=fname%>" required="" style="width: 300px;"></td></tr>    
               <tr><th>File ID</th><td><input type="text" name="fid" value="<%=fid%>" required="" style="width: 300px;"></td></tr>    
               <tr><th>Download Key</th><td><input type="text" name="dkey"  required="" style="width: 300px;"></td></tr>    
              
               <tr><th></th><td><input type="submit" value="Verify">
                        <input type="reset" value="Reset"></td></tr> 
              
             
         </table> 
         </form>
          <%
}%>
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