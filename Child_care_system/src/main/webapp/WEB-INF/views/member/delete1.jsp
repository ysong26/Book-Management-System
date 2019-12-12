<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html>
	<head>
		<title>VITA500</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="/resources/assets/css/main.css" />
		 <script src="//code.jquery.com/jquery.js"></script>
		<script src="/resources/bootstrap/js/bootstrap.min.js"></script>
        <script src="/resources/bootstrap/js/respond.js"></script>
	</head>
	<body class="is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header">

					<!-- Logo -->
					<h1><a href="/" id="logo"><font size="10">VITA <em>500</em></font></a></h1>

			</div>
	</div>				
            <hr/>
            
            
			<!-- Highlights -->
				<section class="wrapper style1">
					<div class="container">
						<div class="row gtr-200">
							<section class="col-6 col-12-narrower">
								<div class="box highlight">
									<i class="icon solid major fa-wrench"></i>
									<h3>STEP-1</h3>
									<p>탈퇴 약관</p>
								</div>
							</section>
							<section class="col-6 col-12-narrower">
								<div class="box highlight">
									<i class="icon solid major fa-paper-plane"></i>
									<h3>STEP-2</h3>
									<p>회원탈퇴</p>
								</div>
							</section>
						</div>
					</div>
				</section>
				

			<!-- Footer -->
				<div id="footer">
					<div class="container">
						<div class="row">
		
							
							
							
		<section class="off-1 col-12" >

	<h3>탈퇴안내</h3>
	회원탈퇴를 신청하기 전에 안내 사항을 꼭 확인해주세요.<br><br><br>
	
<b>※사용하고 계신 아이디<font color="#41AF39">(${member.user_ID})</font>는 탈퇴할 경우 재사용 및 복구가 불가능합니다.</b><br>
<font size="2"><font color="#FF7012">※탈퇴한 아이디는 본인과 타인 모두 재사용 및 복구가 불가</font>하오니 신중하게 선택하시기 바랍니다.</font>	
	
<textarea cols="30" rows="5" placeholder="Disabled" disabled>여러분을 환영합니다.
①회원은 언제든지 서면, e-mail, 전화, 기타 당사가 정하는 방법으로 회원탈퇴를 요청할 수 있으며, 당사와 제휴사는 다음 제1)호의 경우 또는 본 조 제②항 경우를 제외하고는 회원의 요청에 따라 조속히 회원탈퇴에 필요한 제반 절차를 수행합니다. 단, 회원탈퇴 시 이벤트 부정 이용 방지 등을 위하여 탈퇴일로부터 30일 이내에 재가입이 불가하나, 동 기간 중 제휴카드를 발급하는 경우에는 회원탈퇴가 자동 취소됩니다.
1) 당사나 제휴사를 통해 구매하거나 예약한 물품/서비스가 배송 중이거나 실현되지 아니한 때
②포인트 사용 후 사용 된 포인트의 적립 원천이 되는 구매 행위의 취소로 인해 마이너스(-) 포인트가 발생한 회원은 별도 당사 난 제휴사의 승인이나 해당 포인트에 해당하는 금액을 변제하기 전까지는 탈퇴가 불가합니다.
③회원이 다음 각 호에 해당하는 경우, 당사는 당해 회원에 대한 통보로써 회원 자격을 상실시킬 수 있습니다. 단, 3)호의 경우에는 회원에 대한 통보 없이 자격이 상실됩니다.

</textarea><br>

		<p class="join_check">
			<input id="useAgree" type="checkbox" class="MAL5">안내 사항을 모두 확인하였으며, 이예 동의합니다.
		</p>			  
     		<br>	
							</section>
							
						</div>	
					</div>
					
					
					<div class="container">
						<div class="row gtr-200">
							<section class="off-4 col-12">
								<p><input type="submit" onclick="location.href='/'" value="취소">
								<input type="submit" id="agreeBtn" value="다음으로"></p>
							</section>
						</div>
						</div>
					</div>
					
		<%@include file="../footer.jsp"%>			
		

        <script>
        
	    $(document).ready(function() {
	    
	    	
	    	$('#agreeBtn').click(function(){
	    		var chk1 = $('#useAgree').is(":checked");

	    		
	    		if(!chk1){
	    			alert("약관에 동의하셔야 탈퇴가 가능합니다.");
	    			$('#useAgree').focus();
	    			return false;
	    		}else{
	    			location.replace('delete2'); 
	    		}
	    		
	    		
	    	});
	    });	
        </script>





		<!-- Scripts -->
			<script src="/resources/assets/js/jquery.min.js"></script>
			<script src="/resources/assets/js/jquery.dropotron.min.js"></script>
			<script src="/resources/assets/js/browser.min.js"></script>
			<script src="/resources/assets/js/breakpoints.min.js"></script>
			<script src="/resources/assets/js/util.js"></script>
			<script src="/resources/assets/js/main.js"></script>

	</body>
</html>