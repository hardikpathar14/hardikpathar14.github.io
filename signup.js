<script>

<script type="text/javascript">
  function checkValidation()
{
	var x=document.regis.fname.value;


	if(x=='')
	{
		alert("name cannot be empty");
		return false;
	}
	if(!isNaN(x))
	{
		alert("name cannot contains number");
		return false;
	}
	<!-----------------------------------------------------------
	var ph=document.regis.mobno.email.value;
	if(ph=='')
	{
		alert("phone no cannot be empty");
		return false;
	}
	if(isNaN(ph))
	{
		alert("phone no cannot contains character");
		return false;
	}
}

function emailfunc()
{
	var mail = document.regis.email.value;
    var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,3})$/;
    if (!mail.match(reg))
    {
	              alert('Invalid Email Address');
				  return false;
	}
}
function passvalid(){
 var newPassword = document.regis.pass.value;
    <!--var reg  = /^[a-zA-Z0-9!@#$%^&*]{8,16}$/;
	var reg=/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*])[a-zA-Z\d!@#$%^&*]{8,16}$/;
    if(!newPassword.match(reg)) {
        alert("password should contain atleast one number, one special character, upper and lower case ");
        return false;
    }
}

function passmatch()
{
var fpwd=document.regis.pass.value;
var spwd=document.regis.repass.value;

if(fpwd==spwd){
return true;
}
else{
alert("password must be same!");
return false;
}
}
</script>
