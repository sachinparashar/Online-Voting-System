<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*,databaseconnection.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check Votes</title>
         <link href="templatemo_style.css" rel="stylesheet" type="text/css" />
    </head>
     <script>
    function validation(){
        var country=document.ulogin.txtCountry.value;
        var state=document.ulogin.txtState.value;
        var city=document.ulogin.txtCity.value;
       
        if(country===""){
            alert("Enter Country");
            document.ulogin.txtCountry.focus();
            return false;
       }
        if(state===""){
            alert("Enter State");
            document.ulogin.txtState.focus();
            return false;
        }
         if(city===""){
            alert("Enter City");
            document.ulogin.txtCity.focus();
            return false;
        }
    }
</script>
    <body>
      <div id="templatemo_header_wrapper">
    <div id="templatemo_header">
    	<div id="site_title">
            <h1><a>
                <img src="images/templatemo_logo.png" alt="Site Title" />
                <span><font color="#194719">"Suffrage is the pivotal right." </font></span>
                </a></h1>
        </div>
        <p></p>
        <p></p>
        <p><font color="E65C00">By voting, we add our voice to the chorus that forms opinions and the basis for actions.</font></p>
        <p><font color="E65C00">“A man without a vote is a man without protection.”</font> </p>
    
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
        
            <center> <marquee><h2><b>Check Votes Here</b></h2></marquee></center>
           
            <div class="cleaner_h20"></div>
            <form name="ulogin" action="checkvotes1.jsp" method="POST" onsubmit="return validation()" >
                <font size="+1" font color="yellow">
         
        <table width="36%" border="0" align="center">
   <tr>
    <td width="50%" align="center" valign="middle"></td>
    <td width="50%" align="left" valign="middle">
    </td>
  </tr>
  <tr>
    <td width="50%" align="center" valign="middle">Enter Country</td>
    <td width="50%" align="left" valign="middle">
        <input type="text" name="txtCountry" value="" />
    </td>
  </tr>
   <tr>
    <td width="50%" align="center" valign="middle"></td>
    <td width="50%" align="left" valign="middle">
    </td>
  </tr>
  <tr>
    <td align="center" valign="middle">Enter State</td>
    <td align="left" valign="middle"><input type="text" name="txtState" value="" /></td>
  </tr>
   <tr>
    <td width="50%" align="center" valign="middle"></td>
    <td width="50%" align="left" valign="middle">
    </td>
  </tr>
  <tr>
    <td align="center" valign="middle">Enter City</td>
    <td align="left" valign="middle">
        <input type="text" name="txtCity" value="" />
    </td>
  </tr>
   <tr>
    <td width="50%" align="center" valign="middle"></td>
    <td width="50%" align="left" valign="middle">
    </td>
  </tr>
  <tr>
    <td align="center" valign="middle">Select Party</td>
    <td align="left" valign="middle">
        <select name="ddlParty">
            <option selected value="BSP">BSP</option>
            <option value="BJP">BJP</option>
            <option value="Congress">Congress</option>
            <option value="AAP">AAP</option>
            <option value="SP">SP</option>
            <option value="Other">Other</option>
        </select>
    </td>
  </tr>
   <tr>
    <td width="50%" align="center" valign="middle"></td>
    <td width="50%" align="left" valign="middle">
    </td>
  </tr>
  <tr>
    <td align="center" valign="middle"></td>
    <td align="right" valign="middle">
        <input type="submit" value="Submit" class="myButton"/>
    </td>
  </tr>
            </table>
              </font>
            </form>
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
