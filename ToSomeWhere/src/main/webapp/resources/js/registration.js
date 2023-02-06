/**
 * 회원가입 시 필요한 작업
 * 1. 아이디 중복 여부 확인
 * 2. email 유효성 검사
 * 3. password 유효성 검사
 */

// 아이디 중복 여부 확인
function idDuplicationChk(){
	console.log('idDuplicationChk()');
	if ($('#id').val().trim() != ''){
		// 중복확인 버튼이 한 번 이상 눌려짐.
		if($('#idChk').val()=='false'){
			$('#idChk').val('true')
//			console.log('idChk: ' + $('#idChk').val());
		}
		
	//	입력된 아이디가 사용가능한 아이디인가 확인
	//	db에서 해당 데이터가 없는 경우 사용 가능
		$.ajax({
			url: './customer/idDuplicationChk',
			type: 'get',
			data: {
				id : $('#id').val()
			},
			contentType: 'application/json; charset=utf-8',
			success : isUseableId => {
//				console.log('success');
//				console.log(isUseableId)
				if(isUseableId=='true'){
					alert($('#id').val() + '는 사용가능한 아이디입니다.')
				}else{
					alert('해당 아이디가 이미 존재합니다.')
				}
			},
			error: e => {
				console.log("(Request failed) " + e.status + ': ' + e.statusText);
			}
		})
	} else{
		let msg = '<p><span style="color:red;" >아이디가 입력되지 않았습니다.</span></p>'
			$('#msg').html(msg);
	}
}

// form태그에 입력된 데이터의 유효성 검사 및 올바른 비밀번호 데이터 입력에 대한 확인.
function registChk() {
	console.log('registChk()');



	
	// 비밀번호 유효성 검사 (정규식)
	// 특수문자 / 문자 / 숫자 포함 형태의 8~15자리 이내의 암호 정규식
//	const passwordRegex = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/;
	const passwordRegex = /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;;
	const passwordValueCheck = passwordRegex.test($('#password').val().trim());
//	console.log(typeof(passwordValueCheck))
//	console.log(passwordValueCheck)
	
	// 이메일 유효성 검사 (정규식)
	// '@' 포함여부와 대문자,소문자를 구분하지않게 표현식끝에 i 사용
	const emailRegex = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	const emailValueCheck = emailRegex.test($('#email').val().trim());
//	console.log(emailValueCheck)
//	console.log(typeof(emailValueCheck))
	
	
	// 조건 제어
	// 데이터가 하나도 입력되어있지 않는 경우
	if(($.trim($('#id').val())=='' && 
			$.trim($('#email').val()) =='' &&
			$.trim($('#password').val()) =='' &&
			$('#rePassword').val() == $('#password').val() )){
		let msg = '<p><span style="color:red;" >회원 정보를 입력하세요.</span></p>'
			$('#msg').html(msg);
	}
	// 아이디 중복 확인 버튼 클릭 유무
	else if($('#idChk').val()=='false'){
			let msg = '<p><span style="color:red;" >아이디 중복 여부를 확인하세요.</span></p>'
				$('#msg').html(msg);
		}
	else if ($('#name').val().trim() == ''){
			let msg = '<p><span style="color:red;" >이름 또는 별명을 입력하세요.</span></p>'
				$('#msg').html(msg);
		}
	// 이메일 유효성 검사
	else if (emailValueCheck == false){
		if ($('#email').val().trim() == ''){
			let msg = '<p><span style="color:red;" >이메일을 입력하세요.</span></p>'
				$('#msg').html(msg);
		}
		else {
			let msg = '<p><span style="color:red;" >이메일 형식이 올바르지 않습니다.</span></p>'
				$('#msg').html(msg);
		}
	}
	else if ($('#password').val().trim() == ''){
		let msg = '<p><span style="color:red;" >비밀번호를 입력하세요.</span></p>'
			$('#msg').html(msg);
	}
	// 비밀번호 유효성 검사
	else if (passwordValueCheck == false){
		let msg = '<p><span style="color:red;" >특수문자 / 문자 / 숫자 포함 형태의 8~15자리의 조합한 비밀번호를 입력하세요.</span></p>'
			$('#msg').html(msg);
	}
	else if ($('#rePassword').val().trim() == ''){
		let msg = '<p><span style="color:red;" >비밀번호 확인을 입력하세요.</span></p>'
			$('#msg').html(msg);
	}
	// check : '비밀번호' == '비밀번호확인'
	else if($('#password').val() != $('#rePassword').val()){
		//alert('비밀번호와 비밀번호 확인이 일치하지 않습니다.')
		let msg = '<p><span style="color:red;" >비밀번호와 일치하지 않습니다.</span></p>'
			$('#msg').html(msg);
	}
	// 회원가입 처리 가능한 조건 
	else if($('#idChk').val()=='true' && $.trim($('#id').val())!='' && 
			$.trim($('#email').val()) !='' &&
			$.trim($('#password').val()) !='' &&
			$('#rePassword').val() == $('#password').val() &&
			emailValueCheck == true /* email 유효성검사 true */){
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
//	console.log(data);
	
	$.ajax({
		url: './customer/new',
		type: 'post',
		data: JSON.stringify(data), 
		contentType: 'application/json; charset=utf-8',
		success : data => {
//			console.log('success');
//			console.log('db저장완료');
			console.log('controller를 통해 회원가입된 정보 session 영역에 저장 작업 필요')
//			console.log('registration.js 비밀번호 유효성 검사, 이메일 유효성 검사')
//			가입된 회원 정보로 로그인 시켜 세션에 저장 후 index 페이지로 이동.
//			location.href = "loginOK"
		},
		error: e => {
			console.log("(Request failed) " + e.status + ': ' + e.statusText);
		}
	})
	
}

// 회원가입 직후 가입된 회원 정보를 세션값으로 저장시킨 후 index 페이지로 이동(삭제 가능성 있음)
function goToIndexPageAfterLogin(){
	console.log('goToIndexPageAfterLogin() 함수 실행.');
}





















