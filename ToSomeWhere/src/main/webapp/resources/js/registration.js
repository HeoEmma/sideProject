/**
 * 
 */

//아이디 중복 여부 확인
function idDuplicationChk(){
	console.log('idDuplicationChk()');
	console.log('idChk: ' + $('#idChk').val());
	
	// 중복확인 버튼이 한 번 이상 눌려짐.
	if($('#idChk').val()=='false'){
		$('#idChk').val('true')
		console.log('idChk: ' + $('#idChk').val());
	}
}

// form태그에 입력된 회원 가입에 필요한 데이터를 가져와 올바른가 확인한다.
function registChk() {
	console.log('registChk()');
	
	// 빈 데이터가 있는 경우
	if($('#idChk').val()=='true' && ($.trim($('#id').val())!='' || 
			$.trim($('#email').val()) !='' ||
			$.trim($('#password').val()) !='' ||
			$('#rePassword').val() == $('#password').val() )){
		
		let msg = '<p><span style="color:red;" >빈 항목이 있습니다.</span></p>'
			$('#msg').html(msg);
	}
	
	// ? '비밀번호' == '비밀번호확인'
	if($('#password').val() != $('#rePassword').val()){
		//alert('비밀번호와 비밀번호 확인이 일치하지 않습니다.')
		let msg = '<p><span style="color:red;" >비밀번호와 일치하지 않습니다.</span></p>'
			$('#msg').html(msg);
	}
	
	// 아이디 중복 확인 버튼 클릭 유무
	if($('#idChk').val()=='false'){
		let msg = '<p><span style="color:red;" >아이디 중복 확인 해주세요.</span></p>'
			$('#msg').html(msg);
	}
	
	// 회원가입 처리 가능한 조건 
	if($('#idChk').val()=='true' && $.trim($('#id').val())!='' && 
			$.trim($('#email').val()) !='' &&
			$.trim($('#password').val()) !='' &&
			$('#rePassword').val() == $('#password').val() ){
		
		let msg = '<p><span style="color:blue;" >회원가입 처리중...</span></p>'
			$('#msg').html(msg);
		
		// json 형태로 만든 data 변수를 넘겨 서버에 회원 가입을 요청한다.
		let data = {
				'id': $('#id').val(),
				'name': $('#name').val(),
				'email': $('#email').val(),
				'password': $('#password').val()
		}
//		console.log(data);
//		회원 정보 db 저장 및 index페이지로 이동
		requestJoinOK(data);

	} 
	
	
}

// 회원가입 정보를 db에 저장하는 콜백함수
function requestJoinOK(data){
	console.log('requestJoinOK()');
	console.log(data);
	
	$.ajax({
		url: './customer/new',
		type: 'post',
		data: JSON.stringify(data), 
		contentType: 'application/json; charset=utf-8',
		success : data => {
			console.log('success');
			console.log('db저장완료');
//			가입된 회원 정보로 로그인 시켜 세션에 저장 후 index 페이지로 이동.
			location.href = "loginOK"
		},
		error: e => {
			console.log("(Request failed) " + e.status + ': ' + e.statusText);
		}
	})
	
}

// 회원가입 직후 가입된 회원 정보를 세션값으로 저장시킨 후 index 페이지로 이동
function goToIndexPageAfterLogin(){
	console.log('goToIndexPageAfterLogin() 함수 실행.');
}





















