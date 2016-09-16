<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*,databaseconnection.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Check Voter Id</title>
        <link href="templatemo_style.css" rel="stylesheet" type="text/css" />
         <script type="text/javascript" src="md5.js"></script>
        <script type="text/javascript" src="jcap.js"></script>
    <script>
    function validation(){
        var id=document.ureg.txtId.value;
        var name=document.ureg.txtName.value;
        var ssno=document.ureg.txtSsno.value;
        var add=document.ureg.txtAddress.value;
        var city=document.ureg.txtCity.value;
        var state=document.ureg.txtState.value;
        var country=document.ureg.txtCountry.value;
        var mobile=document.ureg.txtMobileNo.value;
        var email=document.ureg.txtEmail.value;
        var idmark=document.ureg.txtIdMark.value;
        var pass=document.ureg.txtPassword.value;
        
        if(id===""){
          alert("Enter Vote Id");
            document.ureg.txtId.focus();
            return false;
        }
        if(name===""){
            alert("Enter Name");
            document.ureg.txtName.focus();
            return false;
        }
        if(ssno===""){
            alert("Enter Ssno");
            document.ureg.txtSsno.focus();
            return false;
        }
        if(add===""){
            alert("Enter Address");
            document.ureg.txtAddress.focus();
            return false;
        }
        if(city===""){
            alert("Enter City");
            document.ureg.txtCity.focus();
            return false;
        }
        if(state===""){
            alert("Enter State");
            document.ureg.txtState.focus();
            return false;
        }
        if(country===""){
            alert("Enter Country");
            document.ureg.txtCountry.focus();
            return false;
        }
        if(mobile===""){
            alert("Enter Mobile No.");
            document.ureg.txtMobileNo.focus();
            return false;
        }
        if(email===""){
            alert("Enter Email Id");
            document.ureg.txtEmail.focus();
            return false;
        }
         if(idmark===""){
            alert("Enter Mobile No.");
            document.ureg.txtIdMark.focus();
            return false;
        }
        if(pass===""){
            alert("Enter Email Id");
            document.ureg.txtPassword.focus();
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
                <span><font color="#194719">"Suffrage is the pivotal right." </font></span>
                </a></h1>
        </div>
        <p></p>
        <p></p>
        <p><font color="E65C00">By voting, we add our voice to the chorus that forms opinions and the basis for actions.</font></p>
        <p><font color="E65C00">“A man without a vote is a man without protection.” </font></p>
    
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
        
            <center> <marquee><h2><b>New Voter Registration</b></h2></marquee></center>
           
            <div class="cleaner_h20"></div>
            <form name="ureg" action="register.jsp" method="POST" onsubmit="return validation()">
                <font size="+1" font color="yellow">
          <table width="90%" border="0" align="center">
              <center><img src="images/vote.png" width="350" height="80" alt="vote"/></center>

  <tr>
    
    <td width="35%" rowspan="21" align="center" valign="middle">
        <img src="images/rainbow_voting_image.jpg" width="300" height="280"  alt=""/></td>
    <td width="10%" align="center" valign="middle">&nbsp;</td>
    <td width="18%" align="center" valign="middle">Voter ID</td>
    <td colspan="2" align="left" valign="middle"> 
        <input type="text" name="txtId" value="" />
      
    </td>
  </tr>
  <tr>
    <td align="center" valign="middle">&nbsp;</td>
    <td align="center" valign="middle">Voter Name</td>
    <td colspan="2" align="left" valign="middle">
         <input type="text" name="txtName" value="" />
    </td>
  </tr>
  <tr>
    <td align="center" valign="middle">&nbsp;</td>
    <td align="center" valign="middle">SSNo.</td>
    <td colspan="2" align="left" valign="middle">
         <input type="text" name="txtSsno" value="" />
    </td>
  </tr>
  <tr>
    <td align="center" valign="middle">&nbsp;</td>
    <td align="center" valign="middle">Address</td>
    <td colspan="2" align="left" valign="middle">
         <input type="text" name="txtAddress" value="" />
    </td>
  </tr>
  <tr>
    <td align="center" valign="middle">&nbsp;</td>
    <td align="center" valign="middle">City</td>
    <td colspan="2" align="left" valign="middle">
         <input type="text" name="txtCity" value="" />
    </td>
  </tr>
  <tr>
    <td align="center" valign="middle">&nbsp;</td>
    <td align="center" valign="middle">State</td>
    <td colspan="2" align="left" valign="middle">
         <input type="text" name="txtState" value="" />
    </td>
  </tr>
  <tr>
    <td align="center" valign="middle">&nbsp;</td>
    <td align="center" valign="middle">Country</td>
    <td colspan="2" align="left" valign="middle">
         <input type="text" name="txtCountry" value="" />
    </td>
  </tr>
  <tr>
    <td align="center" valign="middle">&nbsp;</td>
    <td align="center" valign="middle">Mobile No.</td>
    <td colspan="2" align="left" valign="middle">
         <input type="text" name="txtMobileNo" value="" />
    </td>
  </tr>
  <tr>
    <td align="center" valign="middle">&nbsp;</td>
    <td align="center" valign="middle">E-Mail</td>
    <td colspan="2" align="left" valign="middle"><input type="text" name="txtEmail" value="" /></td>
  </tr>

  <tr>
    <td align="center" valign="middle">&nbsp;</td>
    <td align="center" valign="middle">ID Mark</td>
    <td colspan="2" align="left" valign="middle"><input type="text" name="txtIdMark" value="" /></td>
  </tr>
  <tr>
    <td align="center" valign="middle">&nbsp;</td>
    <td align="center" valign="middle">Password</td>
    <td colspan="2" align="left" valign="middle"><input type="password" name="txtPassword" value="" /></td>
  </tr>
  <tr>
    <td colspan="4" align="center" valign="middle">&nbsp;</td>
  </tr>
</table>
         <center>
  <fieldset>
    <p>Enter code and select respected image:</p> <br>

        <input type="hidden" id="txt" value="" name="txt"/>
        
        <script type="text/javascript"> sjcap();</script><br></br>
    </fieldset>
             <br>
         <input type="submit" onclick="return jcap3();" value="SUBMIT" class="myButton"><br></br>                                                         
         <input type="reset" value="RESET" class="myButton"> 
         </center>
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
