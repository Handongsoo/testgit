<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>

<nav class="navbar navbar-expand- navbar-dark" style="background-color:rgb(88,88,88) ">
	<div class = "container">
		<div class = "navbar-header">
			<a class = "navbar-brand" href="./hello.jsp" ><img alt="Premier League " src="./upload2/k1.jpg" width="80">K LEAGUE </a>
		</div>
		<div>
			<ul class="navbar-nav mr-auto">
				
				<c:choose>
					<c:when test="${empty sessionId }">
						<li class="nav-item"><a class="nav-link" href="<c:url value="login.jsp"/>">
						로그인</a></li>
						
					</c:when>
					<c:otherwise>
						<li style="padding-top: 7px; color:white">[<%=sessionId %>님]</li>
						<li class="nav-item"><a class="nav-link" href='<c:url value="logoutMember.jsp"/>'>
						로그아웃</a></li>
						
					</c:otherwise>
				</c:choose>
				
		</div>
		<div>
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="gameDay.jsp">경기일정</a></li>
			</ul>
		</div>
		<div>
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="#">축구뉴스</a></li>
			</ul>
		</div>
		<div>
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="#">하이라이트</a></li>
			</ul>
		</div>
		<div>
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="teamInfomation.jsp">팀정보</a></li>
			</ul>
		</div>
		<div>
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="./BoardListAction.do?pageNum=1">자유게시판</a></li>
			</ul>
		</div>
	</div>
</nav>