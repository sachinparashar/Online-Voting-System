<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*,databaseconnection.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check Voter Id</title>
    </head>
    <body>
       <%
Connection con=null;
Statement st=null;
String voterId=request.getParameter("txtVoterId");
try {
con=databasecon.getconnection();
st = con.createStatement();
String sql="select * from reg";
ResultSet rs=st.executeQuery(sql);
while(rs.next())
 {
String id=rs.getString(1);
if (voterId.equals(id)) 
{ 
%>
<jsp:forward page = "Details.jsp"/>
<%
} else {
out.println("Login Error-please check ur VoterID");
}
}
rs.close();
st.close();
con.close();
} 
catch(Exception e) {}
%>
    </body>
</html>
