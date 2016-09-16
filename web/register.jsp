<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*,databaseconnection.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <link href="templatemo_style.css" rel="stylesheet" type="text/css" />
         <script type="text/javascript" src="md5.js"></script>
        <script type="text/javascript" src="jcap.js"></script>
    </head>
    <body>
        <form action="index.jsp" method="POST">
      <%
            String id=request.getParameter("txtId");
            String name=request.getParameter("txtName");
            String ssno=request.getParameter("txtSsno");
            String add=request.getParameter("txtAddress");
            String mobile=request.getParameter("txtMobileNo");
            String email=request.getParameter("txtEmail");
            String idmark=request.getParameter("txtIdMark");
            String pass=request.getParameter("txtPassword");
            String an=request.getParameter("txt");
            String uword=request.getParameter("uword");
            String city=request.getParameter("txtCity");
            String state=request.getParameter("txtState");
            String country=request.getParameter("txtCountry");
            String a = "-";
            String b = "N";
            
           // out.println(" value"+an);   
            try
                {
         Connection con=databasecon.getconnection();
          
          Statement st=con.createStatement();
          ResultSet rt=st.executeQuery("select votername from reg where voterid='"+id+"'");
          if(rt.next()){
              out.println("Already exist");
          }
          else{
         Statement ps=con.createStatement();
          Statement ps1 = con.createStatement();
          Statement ps2 = con.createStatement();
         String sql = "insert into reg values('"+id+"','"+name+"','"+ssno+"','"+add+"','"+mobile+"','"+email+"','"+idmark+"','"+pass+"','"+an+"','"+uword+"','"+city+"','"+state+"','"+country+"')";
        String sql1 = "insert into votedtodb values('"+id+"','"+a+"','"+city+"')";
               String sql2 = "insert into voterdb values('"+id+"','"+b+"')";
               ps.execute(sql);
               ps1.execute(sql1);
               ps2.execute(sql2);
         con.close();
         %>
         <h1>Registered Successfully</h1>
         <input type="submit" value="Home" />
         <%
          }
        } 
        catch(Exception e){
            out.println(e);
        } 
      %>
        </form>
    </body>
</html>
