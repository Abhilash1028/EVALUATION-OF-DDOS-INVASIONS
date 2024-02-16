<%-- 
    Document   : DataOwner
    Created on : 3 Oct, 2020, 8:37:58 AM
    Author     : KishanVenky
--%>

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
        <li class="active"><a href="Upload.jsp">Upload</a></li>
          <li><a href="ViewUploads.jsp">View Uploads</a></li>
        <li><a href="ViewRequest.jsp">View Request</a></li>
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
   
    SecureRandom random = new SecureRandom();
int num = random.nextInt(100000);
String formatted = String.format("%05d", num); 
String fid="F"+formatted+"";
   %>
     <center>
        <center>
          <h2 style="margin-bottom:100px;">Welcome To :<%=email%></h2>
           <%String msg=request.getParameter("msg");
           if(msg!=null){
    if(msg.equals("success")){%>
    <font color="red">File Uploaded Successfully...!!</font>       
               <%}else{
%>
 <font color="red">File Uploading Failed</font> 
<%
}
}%>
          <h4>Upload File</h4>
          <form action="FileUpload" method="post" enctype="multipart/form-data">
              <table>
                  <tr><th>Owner ID</th><td><input type="text" name="owner" value="<%=id%>" readonly=""></td></tr>    
                  <tr><th>File ID</th><td><input type="text" name="fid" value="<%=fid%>" readonly=""></td></tr> 
                  <tr><th>Choose File</th><td><input type="file" name="file" required=""></td></tr> 
                  <tr><th></th><td><input type="submit" value="Upload"></td></tr> 
              </table>   
          
          </form>
          </center>    
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