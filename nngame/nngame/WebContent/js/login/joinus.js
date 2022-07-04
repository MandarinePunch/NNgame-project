const email = document.getElementById("join_Email");
const pw = document.getElementById("join_Password1");
const pwcheck = document.getElementById("join_Password2");
const nickname = document.getElementById("join_Nickname");
const phnum = document.getElementById("join_PhoneNum");
const birthday = document.getElementById("join_Birth");

// 비밀번호 실시간 감지를 위해 변수 선언
const pwMsg = document.getElementById("join_ppw");
const pwCheckMsg = document.getElementById("join_ppw2");

// submit시 validation check
function checkJoin() {
	if (email.value == "") {
		document.getElementById("join_pid").innerHTML = "이메일을 입력해주세요.";
		return false;
	} else if (pw.value != pwcheck.value) {
		pwCheckMsg.style.color = "red";
		pwCheckMsg.innerHTML = "비밀번호가 일치하지 않습니다.";
		return false;
	} else if (pw.value == pwcheck.value && pw.value.length < 4) {
		pwMsg.style.color = "red";
		pwMsg.innerHTML = "비밀번호는 4글자 이상이여야 합니다.";
		return false;
	} else if (nickname.value == "") {
		document.getElementById("join_pnickname").innerHTML = "닉네임을 입력해주세요.";
		return false;
	} else if (phnum.value == "") {
		document.getElementById("join_pphnum").innerHTML = "전화번호를 입력해주세요.";
		return false;
	} else if (phnum.length > 14) {
		document.getElementById("join_pphnum").innerHTML = "전화번호를 정확히 입력해주세요.";
		return false;
	} else if (birthday.value == "") {
		document.getElementById("join_pbirth").innerHTML = "생년월일을 입력해주세요.";
		return false;
	} else {
		return true;
	}
}

function join_focusOut() {
	if (email.value != "") {
		document.getElementById("join_pid").innerHTML = "&nbsp;";
	}
	if (nickname.value != "") {
		document.getElementById("join_pnickname").innerHTML = "&nbsp;";
	}
	if (phnum.value != "") {
		document.getElementById("join_pphnum").innerHTML = "&nbsp;";
	}
	if (birthday.value != "") {
		document.getElementById("join_pbirth").innerHTML = "&nbsp;";
	}
}

$(pw).on("propertychange change keyup paste input", function(){
	if(this.value.length < 4){
		pwMsg.style.color = "red";
		pwMsg.innerHTML = "비밀번호는 4글자 이상이여야 합니다.";
	} else{
		pwMsg.style.color = "#00CC00";
		pwMsg.innerHTML = "사용 가능한 비밀번호입니다.";
	}
});

$(pwcheck).on("propertychange change keyup paste input", function(){
	if(this.value !== pw.value){
		pwCheckMsg.style.color = "red";
		pwCheckMsg.innerHTML = "비밀번호가 일치하지 않습니다.";
	} else if(this.value !== "" && this.value === pw.value){
		pwCheckMsg.style.color = "#00CC00";
		pwCheckMsg.innerHTML = "비밀번호가 일치합니다.";
	}
});
