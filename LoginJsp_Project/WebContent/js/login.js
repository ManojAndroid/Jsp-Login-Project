function ValidateEmail() {
		var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		var email = document.getElementById("eid").value;
		var pass = document.getElementById("passid").value;
		if (!email.match(mailformat)) {
			alert("Enter valid email address!");
			return false;
		}
		if (pass.length == " ") {
			alert("Enter Password!");
			return false;
		} else {
			return true;
		}
	}