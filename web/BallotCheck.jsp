<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*,databaseconnection.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Do Vote</title>
    </head>
    <body>
         <%
Connection con=null;
PreparedStatement stmt = null;
ResultSet rs = null;
String var = null;
        if (request.getParameter("vote1") != null) {
            var = request.getParameter("txtVote1");
        } else if (request.getParameter("vote2") != null) {
             var = request.getParameter("txtVote2");
        } else if (request.getParameter("vote3") != null) {
             var = request.getParameter("txtVote3");
        } else if (request.getParameter("vote4") != null) {
             var = request.getParameter("txtVote4");
        } else if (request.getParameter("vote5") != null) {
             var = request.getParameter("txtVote5");
        } else if (request.getParameter("vote6") != null) {
             var = request.getParameter("txtVote6");
             // ???
        }
String voterId=request.getParameter("txtVoterId");
out.println(voterId);
char voted='Y';
try {
con=databasecon.getconnection();
stmt = con.prepareStatement("Update VoterDb set Voted='"+voted+"' where VoterID='"+voterId+"'");    
stmt.executeQuery();
PreparedStatement stt=con.prepareStatement("Update VotedToDb set VotedTo='"+var+"' where VoterID='"+voterId+"'");
stt.executeUpdate();
out.println("Thanks for Vote");
	  
	 }
	   catch(Exception e)
	   {
	     out.println(e.getMessage());
	   }
	   
	    %>
    <jsp:forward page="BallotPaper2.jsp" />
    </body>
</html>
