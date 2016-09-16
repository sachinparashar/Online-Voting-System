<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*,databaseconnection.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Do Vote</title>
        <link href="templatemo_style.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="md5.js"></script>
<script type="text/javascript" src="jcap1.js"></script>
<script>
    function validation(){
        //var uname=document.ulogin.username.value;
        var pass=document.ulogin.password.value;
        
//        if(uname==0){
//            alert("Enter username");
//            document.ulogin.username.focus();
//            return false;
       // }
        if(pass===0){
            alert("Enter password");
            document.ulogin.password.focus();
            return false;
        }
    }
</script>
    </head>
    <body>
      <div id="templatemo_header_wrapper">
    <div id="templatemo_header">
    	<div id="site_title">
            <h1><a>
                <img src="images/templatemo_logo.png" alt="Site Title" />
                <span><font color="#194719">"Suffrage is the pivotal right."</font> </span>
                </a></h1>
        </div>
        <p></p>
        <p></p>
        <p><font color="E65C00">By voting, we add our voice to the chorus that forms opinions and the basis for actions.</font></p>
        <p<font color="E65C00">>“A man without a vote is a man without protection.” </font></p>
    
    </div> <!-- end of templatemo_header -->

</div> <!-- end of templatemo_menu_wrapper -->

<div id="templatemo_menu_wrapper">
    <div id="templatemo_menu">
        
         <ul>
           <li><a href="index.jsp">Home</a></li>
                  
                    <li><a href="CheckVoterId.jsp">Check VoterID</a></li>
                   <li><a href="newregistration.jsp">New Registration</a></li>
                     <li><a href="checkvotes.jsp">Check Votes</a></li>
                    <li><a href="Parties.jsp">Parties</a></li>
                </ul>    	
     
    </div> <!-- end of templatemo_menu -->
</div>


    <div id="templatemo_content">
    
    	<div class="content_box">
        
            <center> <marquee><h2><b>Welcome To Vote</b></h2></marquee></center>
            <div class="cleaner_h20"></div>
           

            <center style="font-size: 15px;">
                  <fieldset>
                       <img src="images/img6.jpg" width="320" height="120" alt="img6"/>
                  <h2 class="title"style="color: coral">USER LOGIN </h2><br></br>
                  
 <%
 Connection con=null;
PreparedStatement stmt = null;
ResultSet rs = null;
String voterId1=request.getParameter("txtVoterId1");
String pass=request.getParameter("txtPassword");
try {
con=databasecon.getconnection();
stmt = con.prepareStatement("select * from reg where VOTERID='"+voterId1+"'");     
	   rs = stmt.executeQuery();
  while(rs.next())
  {
      String p = rs.getString("password");
      if(p.equals(pass))
      {
 %>
                        
  <form action="BallotPaper1.jsp" name="ulogin" method="post" onsubmit="return jcap();return validation()"> 

<input type="password" name="password" placeholder="Enter password"><br></br>
  <%
          String voterId=request.getParameter("txtVoterId1");
          Statement st=con.createStatement();
          ResultSet rt=st.executeQuery("select * from reg where voterid='"+voterId+"'"); 
          String an=null;
          while(rt.next()){
           an=rt.getString("anum");
      
%>
 <p>Enter the code as it is shown:</p> <br>
     <input type="hidden" name="an" id="an" value="<%=an%>"></input><br>
     <input type="hidden" name="txtVoterId" value="<%=voterId%>" />
<script type="text/javascript"> sjcap1(); </script>

<% }
          }
      else
      {
          out.println("Incorrect Password");
      }}
}
catch(Exception e)
{}
%>
<!--<noscript><p>[This resource requires a Javascript enabled browser.]</p></noscript>-->
<!--<p><input type="submit" id="submit" name="submit" value="Submit"></p>
    -->
    <br></br>
    <input type="submit" onclick=" return validation();" class="myButton" value="LOGIN">
    <input type="reset" value="RESET" class="myButton"><br></br>
                                                                 
            
		</form>
      </fieldset>
                    </center>    
         <div class="cleaner_h20"></div>

<div class="cleaner"></div>
        </div><div class="content_box_bottom"></div>
  
    
    </div> <!-- end of content -->
    
    <div class="cleaner"></div>


<div id="templatemo_footer_wrapper">

    <div id="templatemo_footer">
    
        <ul class="footer_menu">
                    <li><a href="index.jsp">Home</a></li>
                  
                    <li><a href="member.jsp">Check VoterID</a></li>
                    <li><a href="newregistration.jsp">New Registration</a></li>
                     <li><a href="checkvotes.jsp">Check Votes</a></li>
                    <li><a href="Parties.jsp">Parties</a></li>
            </ul>
                
                Copyright © 2015 <a href="#">HCST,FARAH</a> | 
               </div>
    
</div>
<div align=center>Online Voting System</div>
    </body>
</html>
