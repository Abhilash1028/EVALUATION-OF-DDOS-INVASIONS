
   <%@page import="com.database.Queries"%>
<%
   String fid=request.getParameter("fid");
   String fname=request.getParameter("fname");
    String owner=request.getParameter("owner");
    String aid=request.getParameter("aid");
   try{
       
     int i=Queries.getExecuteUpdate("insert into request values(null,'"+fid+"','"+fname+"','"+owner+"','"+aid+"',now(),'waiting','waiting','attacker')");
       if(i>0){
         %>
      <script type='text/javascript'>
          window.alert("Request Sent To Owner Successful...!!");
          window.location="Attacker.jsp";
      </script>
      <%

    }else{
    
%>
      <script type='text/javascript'>
          window.alert("Request Sending Failed..!!");
          window.location="Attacker.jsp";
      </script>
      <%  
       }
       
}catch(Exception e){
 out.println(e);   
}
%>
   