<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*" %>
<html>
<head>
<link rel="stylesheet"
	href="./resources/css/bootstrap.min.css" />
<title>K-LEAGUE 팀정보</title>
</head>
<body>
	<div style="width:1930px;" align="center" >
	<jsp:include page="menu.jsp" />
	<div class="container">
			<h1 class="display-3">K-LEAGUE 팀정보</h1>
		</div>
	<div align="right"><a href="addTeam.jsp"><button class="btn btn-outline-secondary"
				type="button">팀 등록</button></a></div>		
	<div align="right"><a href="./editTeam.jsp?edit=delete"><button class="btn btn-outline-secondary"
				type="button">팀 삭제</button></a></div>		
			
	<div class="container">
		<div class="row" align="center">
			<%@ include file="dbconn.jsp" %>
			
			
			<%
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				String sql = "select * from teamInfo";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while (rs.next()) {
			%>
			<div class="col-md-4">
				<img src="./upload2/<%=rs.getString("filename")%>"
				style="width:150">
				<h3><%=rs.getString("name")%></h3>
				<p>연고지 : <%=rs.getString("home") %>
				<p>구장명 : <%=rs.getString("filed") %>
				<p>감독명 : <%=rs.getString("coach") %>
				
			</div>
			<%
				}
			
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null);
				conn.close();
				 %>
		</div>
	</div>
<hr>
</div>
	<jsp:include page="footer.jsp" />
	
</body>
</html>