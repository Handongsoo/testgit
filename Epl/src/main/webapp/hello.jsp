<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*" %>
<html>
<head>
	<link rel="stylesheet"
	href="./resources/css/bootstrap.min.css" />
<title>K-리그</title>

</head>
<body>
<div style="width:1900px;" align="center">
	<jsp:include page="menu.jsp" />
	<img src="./upload2/k3.jpg" width="100%" class="img-fluid" alt="Responsive image">
	
	<h3><strong>하이라이트</strong></h3> <div align= right ><a href="#" style="color:black;" >영상 더보기</a></div>
	<hr style="border: inset 10px;">
	<div>
	 <iframe 
        width="500" height="255" 
        src="https://www.youtube.com/embed/7FsWq3LBTvc" 
        title="YouTube video player" 
        frameborder="0" 
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
        allowfullscreen>
    </iframe>
	
	<iframe 
        width="500" height="255" 
        src="https://www.youtube.com/embed/9P73On6O1l8" 
        title="YouTube video player" 
        frameborder="0" 
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
        allowfullscreen>
    </iframe>
    
    <iframe 
        width="500" height="255" 
        src="https://www.youtube.com/embed/PTEEoRATVL8" 
        title="YouTube video player" 
        frameborder="0" 
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
        allowfullscreen>
    </iframe>
    </div>
    
	</div>
	<hr >
    
	<jsp:include page="footer.jsp" />
</body>
</html>

