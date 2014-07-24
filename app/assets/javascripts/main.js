$(document).ready(function (){
	$(".button").on("click", function(){
		$("#frmSignup").fadeIn();
		$("#txtFirst").focus();
	});

	$("#btnSignupCancel").on("click", function(){
		$("#frmSignup").fadeOut();
	});

	$("txtEmail").on("keypress", function(e){
		if (e.keyCode == 13){
			SignUp();
		}
	});

	$("#btnSignupSend").on("click", function(){
		SignUp();
	});

});

function ValidateEmail(value) {
	var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
	if (reg.test(value))
		return (true);

	return (false);
}

function SignUp(){
	var first = $("#txtFirst").val();
	var last = $("#txtLast").val();
	var email = $("#txtEmail").val();

	if (first == ""){
		alert("You need a first name, you dummy!");
		$("#txtFirst").focus();
		return;
	}

	if (last == ""){
		alert("You need a last name, you fool!");
		$("#txtLast").focus();
		return;
	}

	if (email == "" || !ValidateEmail(email)){
		alert("You need a valid email address, you mouth-breathing knuckle-dragger!");
		$("#txtEmail").focus();
		return;
	}

	$.ajax({
		url: "/api/signup",
		type: "POST",
		data: {clientFirst: first, clientLast: last, clientEmail: email}
	}).done(function(data){
		alert("done");
	});

	$jq(window).attr("location", "http://www.clucker.com");
}