<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// Get 방식 파라미터 url이라는 이름으로 전달되는 값이 있는지 읽어와 본다.
	String url = request.getParameter("url");
	// 만일 넘어오는 값이 없다면
	if(url==null){
		// 로그인 후 인덱스 페이지로 갈 수 있도록 한다.
		String cPath = request.getContextPath();
		url = cPath+"/index.jsp";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/loginform.jsp</title>
<style>
	textarea{
		width: 768px;
		height: 300px;
	}
	html {
	  position: relative;
	  min-height: 100%;
	  padding-bottom:160px;
	}
	body {
	  margin-bottom: 160px;
	}
	footer {
	  position: absolute;
	  bottom: 0;
	  width: 100%;
	  height: 160px;
	}
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</head>
<body>
	<%-- navbar 포함 --%>
	<jsp:include page="/include/navbar.jsp">
		<jsp:param value="loginForm" name="thisPage"/>
	</jsp:include>
	<div class="container mt-3">
		<h3>로그인 폼</h3>
		<form action="login.jsp" method = "post">
			<!-- 로그인 성공 후 어디로 갈 지에 대한 정보를 url 이라는 파라미터 명으로 같이 전송되도록 한다. -->
			<input type="hidden" name = "url" value="<%=url %>" />
			<div>
				<label class="form-label" for="id">아이디</label>
				<input class="form-control" type="text" name="id" id="id"/>
			</div>
			<div>
				<label class="form-label" for="pwd">비밀번호</label>
				<input class="form-control" type="password" name="pwd" id="pwd"/>
			</div>
			<button class="btn btn-dark mt-3" type="submit">로그인</button>
		</form>
	</div>
		<jsp:include page="/include/footer.jsp"></jsp:include>
	
</body>
</html>