<html>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <script>
    function validateLogin()
    { 
	uid=document.getElementById("userid").value;
	pass=document.getElementById("password").value;
	if(uid=="" || pass=="")
 	{
	  alert("Userid or password can not be left blank");
	  return;
	}
        var obj=new XMLHttpRequest();
        obj.onreadystatechange=function()
        { 
         if(obj.readyState==4)
         {
           var res=obj.responseText;
           if(res==1) 	
             document.getElementById("loginfailed").innerHTML="Userid is case sensitive...";
           else if(res==2) 	
             document.getElementById("loginfailed").innerHTML="Entered password is worng...";
           else if(res==3) 	
             document.getElementById("loginfailed").innerHTML="Entered Userid is not correct...";           
           else 	
             location.href="userhome.jsp";	
         }
        };
        var url="validatelogin.jsp?userid="+uid+"&password="+pass;
        obj.open("POST",url);
        obj.send();
    }
  </script>
</head>
<style>

#example2 {
  background: url(user1.jpg);
  background-repeat: no-repeat;
  background-size: 100% 100vh;
}


input[type="text"],input[type='password'] {
    border-radius: 3px;
  border: solid 2px #f56042;
  transition: box-shadow 0.4s }
 td {
    font-weight:bold;
    font-size:22px;
}
input[type="button"]
{border-radius: 3px;
 a{color:orange;}
</style>

<body>
<div id="example2" style="height:100%;">
<div>
 <div class="w3-panel w3-red" style="margin-bottom:200px;">
    <p>ONLINE EXAM</p>
  </div>
</div>

  

<form method="post">
<div style="margin-top:30px">
  <table align="center" cellpadding="8" style="font-size:19px;border:2px solid green" bgcolor='#fff'>
    <tr>
         <td colspan="2"><div align="center" style="height:32px;font-size:22px;color:White;background-color:#f56042">
             User Login Form</div></td>
    </tr>
    <tr>
     <td>Enter User Id</td>
     <td><input type='text' id='userid' value="" style='width:200px;height:30;font-size:18px' required></td>
    </tr>
    <tr>
     <td>Enter Password</td>
     <td><input type='password' id='password' value="" style='width:200px;height:30;font-size:18px' required></td>
    </tr>
    <tr>
     <td colspan="2" align="center" style="color:red">
       <label id="loginfailed" style="color:red;font-size:18px;"></label>
     </td>
    </tr> 
    <tr>
     <td colspan="2" align="right">
      <input type="button" value="Login" onclick="validateLogin()" style="width:80px;height:30px">
     </td>
    </tr>  
  </table>
  <div align='center' style='margin-top:20px'>
   <a href='registration.jsp' style='font-size:21px'>New User?</a>
   <a href='forgotpass.jsp' style='margin-left:50px;font-size:21px'>Forgot Password?</a>
  </div>
</div>
</form>

</div>
</body>
</html>

