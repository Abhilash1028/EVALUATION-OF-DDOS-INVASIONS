<%-- 
    Document   : OwnerRegAction
    Created on : 29 Sep, 2020, 5:52:17 PM
    Author     : KishanVenky
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{
    String id=(String)session.getAttribute("id");
   String username=(String)session.getAttribute("username");
   String email=(String)session.getAttribute("email");

   
    String fname=request.getParameter("fname");
    String dkey=request.getParameter("dkey");
    String fid=request.getParameter("fid");
    
    String query="select * from request where fid='"+fid+"'and fname='"+fname+"' and dkey='"+dkey+"' and status='Accepted'";
    ResultSet i=Queries.getExecuteQuery(query);
    if(i.next()){
      
   response.sendRedirect("Download?"+fname);
    }else{       
Queries.getExecuteUpdate("insert into attacker values('"+username+"','"+fname+"',now(),'Key Mismatch')");
%>
      <script type='text/javascript'>
          window.alert("Verification Failes..!!");
          window.location="RequestStatus.jsp";
      </script>
      <%
}
}catch(Exception e){
    out.println(e);
}
%>