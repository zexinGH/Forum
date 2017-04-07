function checkuserName() {
	var userName = $("#inputUser").val();
	if(userName.length < 3) {
		$("#UserInfo").html("用户名不能少于3个字符！");
		//$("#username").focus();
		return false;
	} else{
		$("#UserInfo").html("");
	}
	return true;
}

function checkpassword() {
	var password = $("#inputPassword").val();
//	var reg = /^\w{6,}$/;

	if(password.length < 6) {
		$("#PasswordInfo").html("请输入密码，至少6个字符！");
		return false;
	} else {
		$("#PasswordInfo").html("");
	}
	return true;
}

function checkConfirmPassword(){
	var password = $("#inputPassword").val();
	var confirmPassword = $("#confirmPassword").val();
//	var reg = /^\w{6,}$/;
	if(confirmPassword == password){
		$("#confirmInfo").html("");
		
	}else{
		$("#confirmInfo").html("两次输入的密码不一致");
		return false;
	}
	return true;
}

function checkNickName(){
	var nickName=$("#nickname").val();
	if(nickName.length < 3|| nickName.length > 10) {
		$("#nameInfo").html("昵称长度在3~10个字符之间");
		return false;
	} else{
		$("#nameInfo").html("");
	}
	return true;
}

var checkAll = function checkAll() {
	if(checkuserName() && checkpassword() && checkConfirmPassword()) {
		return true;
	} else {
		return false;
	}
};

$(function() {
	$("#inputUser").blur(checkuserName);
	$("#inputPassword").blur(checkpassword);
	$("#confirmPassword").blur(checkConfirmPassword);
	$("#nickname").blur(checkNickName)
	$("form[method='post']").submit(checkAll);
});