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
		alert("Schweinhund! You forgot your first name!");
		$("#txtFirst").focus();
		return;
	}

	if (last == ""){
		alert("Don’t you have a last name? Who do you think you are? Cher?");
		$("#txtLast").focus();
		return;
	}

	if (email == "" || !ValidateEmail(email)){
		alert("Your email address is not valid, you mouth-breathing knuckle-dragger!");
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

	var url = "http://localhost:3000/main/clucks";
	$(location).attr('href',url);

	// var text_max = 142;
 //    $("#textarea_feedback").html(text_max + " characters remaining");

 //    $("#textarea").keyup(function() {
 //        var text_length = $("#textarea").val().length;
 //        var text_remaining = text_max - text_length;

 //        $("#textarea_feedback").html(text_remaining + " characters remaining");
}