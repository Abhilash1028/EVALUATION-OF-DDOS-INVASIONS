
   <%@page import="java.security.SecureRandom"%>
<%@page import="com.database.Queries"%>
<%

    String id=request.getParameter("id");
   try{
        SecureRandom random = new SecureRandom();
int num = random.nextInt(100000);
String formatted = String.format("%05d", num); 


     int i=Queries.getExecuteUpdate("update request set dkey='"+formatted+"',status='Accepted' where id='"+id+"'");
       if(i>0){
         %>
      <script type='text/javascript'>
          window.alert("Request Accepted Successful...!!");
          window.location="ViewRequest.jsp";
      </script>
      <%

    }else{
    
%>
      <script type='text/javascript'>
          window.alert("Request Accept Failed..!!");
          window.location="ViewRequest.jsp";
      </script>
      <%  
       }
       
}catch(Exception e){
 out.println(e);   
}
%>
   