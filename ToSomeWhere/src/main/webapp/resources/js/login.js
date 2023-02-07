/**
 * 로그인 시 필요한 작업
 * 1. 아이디 확인, 해당 아이디 존재 시 그 행을 리스트로 얻어오기
 * 2. 비밀번호 확인
 * 3. 해당 데이터 세션영역 저장 및 index 페이지로 분기
 */
	let msg;

	let id ;
//	console.log(id)
	let password ;
//	console.log(password)

// 로그인하기 위해 입력된 정보가 올바른지 확인하는 처리
function loginChk(){
	
	id = $('#id').val();
//	console.log(id)
	password = $('#password').val();
//	console.log(password)
	
	if($.trim(id)=='' || $.trim(password) =='' ){
		msg = '<p><span style="color:red;" >로그인 정보를 바르게 입력하세요.</span></p>';
		$('#msg').html(msg);
	} else {
		msg = '<p><span style="color:blue;" >로그인 처리중...</span></p>';
		$('#msg').html(msg);
		// 로그인 처리
		loginAfterchkCustomerInfo(id)
	}
	
}

// 아이디를 통해 그 행을 얻어와 비밀번호 비교 후 모두 올바른 경우에만 세션 영역에 로그인 값 저장.
function loginAfterchkCustomerInfo(id){
	if ($('#id').val().trim() != ''){
		
	//	입력된 아이디와 db에 저장된 아이디가 일치하는가 확인한다. 
	//	db에서 해당 데이터가 없는 경우 사용 가능
		$.ajax({
			url: './customer/isRightId',
			type: 'get',
			data: {
				id : id
			},
			contentType: 'application/json; charset=utf-8',
			success : data => {
//				console.log('success');
//				console.log(data);
				if (data == null || data == undefined || data == ''){
//					'넘어온 데이터 없음 => 아이디가 틀렸음.'
					$('#id').val('');
					$('#password').val('');
					msg = '';
					$('#msg').html(msg);
					alert(id + ' 은(는) 등록되지 않은 아이디입니다.');
				}else {
					
					if(password == data.password){ //비밀번호 비교
//						console.log('비밀번호 일치');
						// 세션에 저장하고 index 페이지로 분기
						goToIndexPage(data)
						
					} else{
						$('#password').val('');
						msg = '';
						$('#msg').html(msg);
						alert('비밀번호가 일치하지 않습니다.');
					}
				}
			},
			error: e => {
				console.log("(Request failed) " + e.status + ': ' + e.statusText);
			}
		})
	} else{
		msg = '<p><span style="color:red;" >아이디가 입력되지 않았습니다.</span></p>'
			$('#msg').html(msg);
	}
}

// 세션 영역에 정보 저장 및 index 페이지로 분기
function loginOK(){
//	console.log('loginOK()');
	
//	가입된 회원 정보로 로그인 시켜 세션에 저장 후 index 페이지로 이동.
//	location.href = "loginOK"
}

// 회원가입 직후 가입된 회원 정보를 세션값으로 저장시킨 후 index 페이지로 이동(삭제 가능성 있음)
function goToIndexPage(data){
	$.ajax({
		url: './customer/loginInfoToSession',
		type: 'post',
		data: JSON.stringify(data),
		contentType: 'application/json; charset=utf-8',
		success : data => {
//			console.log('success');
//			console.log(data);
			location.href= data;
		},
		error: e => {
			console.log("(Request failed) " + e.status + ': ' + e.statusText);
		}
	})
}





















