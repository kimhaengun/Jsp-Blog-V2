<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<div class="container">
	<form action="/blog2/user?cmd=join" method="post" onsubmit="return valid()">
		<div class="form-group">
		<div class = "d-flex justify-content-between">
			<label for="text">username:</label>
			<button type="button" class="btn btn-info" onClick="usernameCheck()">아이디 중복체크</button>
		</div>
			 <input type="text"
				class="form-control" placeholder="Enter username" id="username"
				name="username" required/>
		</div>
		<div class="form-group">
			<label for="pwd">Password:</label> <input type="password"
				class="form-control" placeholder="Enter password"
				name="password" required/>
		</div>
		<div class="form-group">
			<label for="pwd">email:</label> <input type="email"
				class="form-control" placeholder="Enter email"
				name="email" required/>
		</div>
		<div class="form-group">
			<div class = "d-flex justify-content-between">
			<label for="pwd">address:</label>
			<button type="button" class = "btn btn-primary" onClick="goPopup();"> 주소 검색</button> 
			</div>
			<input type="text" id="address"
				class="form-control" placeholder="Enter address"
				name="address" required readonly/>
		</div>
		<div class="form-group">

			<button type="submit" class="btn btn-primary">회원가입</button>
	</form>
</div>

<script>
// opener관련 오류가 발생하는 경우 아래 주석을 해지하고, 사용자의 도메인정보를 입력합니다. ("팝업API 호출 소스"도 동일하게 적용시켜야 합니다.)
//document.domain = "abc.go.kr";
var isChecking = false;
function valid(){
	if(isChecking == false){
		alert("중복체크를 해주세요");
		}
	return isChecking;
}

function usernameCheck(){
	//DB에서 확인하여 정상이면 isChecking = true
	var username = $("#username").val();
	//document.queryselector = #
	$.ajax({
		type:"POST",
		url:"/blog2/user?cmd=usernameCheck",
		data:username,
		contentType:"text/plain; charset=utf-8",
		dataType:"text"//json일 경우 응답 받을 데이터의 타입을 적으면 자바 스크립트 오브젝트로 파싱해줌
		}).done(function(data){
			if(data === 'ok'){ //동일 유저네임이 있음
				isChecking = false;
				//중복 유저네임 설정확인 후 동일 유저네임으로 재설정 하면 ischecking이 트루인 상태에 있기 때문에 false로 다시
				alert('유저네임이 중복되었습니다.');
				}else{
					isChecking = true;
					alert("해당 유저네임을 사용할 수 있습니다.");
					}
			});
	
	}
function goPopup(){
	// 주소검색을 수행할 팝업 페이지를 호출합니다.
	// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
	var pop = window.open("/blog2/user/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
	
	// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
}


function jusoCallBack(roadFullAddr){
		// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
		var addressEl = document.querySelector("#address");
		addressEl.value = roadFullAddr;	
}

</script>
</body>
</html>