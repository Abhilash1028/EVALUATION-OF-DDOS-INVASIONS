
   <%@page import="java.security.SecureRandom"%>
<%@page import="com.database.Queries"%>
<%

    String id=request.getParameter("id");
     String user=request.getParameter("user");
    String fname=request.getParameter("fname");
   try{
      


     int i=Queries.getExecuteUpdate("update request set dkey='Rejected',status='Rejected' where id='"+id+"'");
       if(i>0){
           Queries.getExecuteUpdate("insert into attacker values('"+user+"','"+fname+"',now(),'Authorized')");
         %>
      <script type='text/javascript'>
          window.alert("Request Rejected Successful...!!");
          window.location="ViewRequest.jsp";
      </script>
      <%

    }else{
    
%>
      <script type='text/javascript'>
          window.alert("Request Rejected Failed..!!");
          window.location="ViewRequest.jsp";
      </script>
      <%  
       }
       
}catch(Exception e){
 out.println(e);   
}
%>
   