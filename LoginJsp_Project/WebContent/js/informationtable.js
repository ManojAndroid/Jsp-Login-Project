var userid;
	var get = function(id, fname, sname, age, language, gender, skill, address) {
		userid=id;
		var iNum = parseInt(age);
		$("#uid").val(userid);
		$("#id").val(id);
		$("#fname").val(fname);
		$("#sname").val(sname);
		$("#age").val(iNum);
		$("#language").val(language);
		$("#gender").val(gender);
		$("#skill").val(skill);
		$("#address").val(address);
	}
	function Validation()
	{
		var gender = document.getElementById("gender").value;
		var age = document.getElementById("age").value;
		if (age>=120)
			{
			alert("Enter  valid age!!! ");
			return false;
			}
	   if (gender!='male'&& gender!='MALE'&& gender!='female' && gender!='FEMALE') 
		{
			alert("Enter Valid Gender!");
			return false;
			
		 } 
		else {
			
			return true;
		}
	} 