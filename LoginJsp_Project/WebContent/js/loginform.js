function ValidateEmail() {
		var id = document.getElementById("id").value;
		var firstname = document.getElementById("fnname").value;
		var lname = document.getElementById("lname").value;
		var address = document.getElementById("addr").value;
		var language = document.getElementById("lan").selectedIndex;
		var Fage = document.getElementById("fage").selectedIndex;

		if (id.length != 4) {
			alert("Enter  four digit id only!!!");
			return false;
		}
		if (firstname.length == " " || firstname == null
				|| firstname.length <= 3) {
			alert("Enter FirstName Length should be more than three characters!");
			return false;
		}
		if (lname.length == " " || lname == null || firstname.length <= 3) {
			alert("Enter LastName Length should be more than three characters!!");
			return false;
		}
		if (address.length == " " || address.length == null) {
			alert("Enter Full Address!!!");
			return false;
		}
		if (language == 0) {
			alert("Select Language!!!");
			return false;
		}

		if (Fage == 0) {
			alert("Select Age!!!");
			return false;
		}

		if (document.reg.gender[0].checked == false
				&& document.reg.gender[1].checked == false) {
			alert("Select Your Gender!!!");
			return false;
		}

		if (document.reg.generalized[0].checked == false
				&& document.reg.generalized[1].checked == false
				&& document.reg.generalized[2].checked == false) {
			alert("Select specialize skills!!!");
			return false;
		}

		else {
			return true;
		}
	}