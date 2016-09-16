<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <SCRIPT LANGUAGE="JavaScript">
function validation()
{
var a = document.form1.txtVoterId.value;
if(a=="")
{
alert("Please Enter Your Voter Id");
document.form1.txtVoterId.focus();
return false;
}
}

</SCRIPT>

        <title>Check Voter Id</title>
        <link href="templatemo_style.css" rel="stylesheet" type="text/css" />
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
        
            <center> <marquee><h2><b>Check Your Voter ID Here...</b></h2></marquee></center>
           
          <div class="cleaner_h20"></div>
          <form name="form1" action="CheckVoterId1.jsp" onSubmit="validation()" method="post">
              <center><font color="yellow"> <b> Enter VoterID:</b></font> <input type="text" name="txtVoterId" value="" />
                  <input type="submit" value="Submit" name="submit" class="myButton" />
              </center> 
      </form>    
         <div class="cleaner_h20"></div>
          <center><img src="images/img2.jpg" width="300" height="200" alt="img2"/></center>

<div class="cleaner"></div>
        </div><div class="content_box_bottom"></div>
  
    
    </div> <!-- end of content -->
    
    <div class="cleaner"></div>



<div id="templatemo_footer_wrapper">

    <div id="templatemo_footer">
    
        <ul class="footer_menu">
                    <li><a href="index.jsp">Home</a></li>
             
                    <li><a href="member.jsp">Check VoterID</a></li>
                    <li><a href="newregistration.jsp">Create New Voter</a></li>
                     <li><a href="checkvotes.jsp">Check Votes</a></li>
                    <li><a href="Parties.jsp">Parties</a></li>
            </ul>
                
                Copyright © 2015 <a href="#">HCST,FARAH</a> | 
               </div>
    
</div>
<div align=center>Online Voting System</div>
    </body>
</html>
