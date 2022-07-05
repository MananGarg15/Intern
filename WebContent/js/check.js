function check()
{
if(document.user.pass1.value != document.user.pass2.value)
{
	alert("passwords doesnt match");
	document.user.pass1.value="";
	document.user.pass2.value="";
	document.user.pass1.focus();
	return false;
}
if(document.user.phone.value.length!=10)
{
alert("phone no should be 10 digit");
return false;
}

}
