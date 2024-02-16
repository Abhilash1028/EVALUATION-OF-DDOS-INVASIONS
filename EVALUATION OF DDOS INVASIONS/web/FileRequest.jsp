
   <%@page import="com.database.Queries"%>
<%
   String id=(String)session.getAttribute("id");
   String username=(String)session.getAttribute("username");
   String email=(String)session.getAttribute("email");
   
   String fid=request.getParameter("fid");
   String fname=request.getParameter("fname");
    String owner=request.getParameter("owner");
   try{
       
     int i=Queries.getExecuteUpdate("insert into request values(null,'"+fid+"','"+fname+"','"+owner+"','"+username+"',now(),'waiting','waiting','normal')");
       if(i>0){
         %>
      <script type='text/javascript'>
          window.alert("Request Sent To Owner Successful...!!");
          window.location="SearchFile.jsp";
      </script>
      <%

    }else{
    
%>
      <script type='text/javascript'>
          window.alert("Request Sending Failed..!!");
          window.location="SearchFile.jsp";
      </script>
      <%  
       }
       
}catch(Exception e){
 out.println(e);   
}
%>
   