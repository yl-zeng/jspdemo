<%@page import="java.net.URLEncoder" %>

<html>
	<body>
		<head>
			<title>Confirmation</title>
		</head>
		
		<%
			String language = request.getParameter("favoriteLanguage");
		
			out.println(language);
		
			Cookie theCookie = new Cookie("myApp.favoriteLanguage",URLEncoder.encode(language));
			
			theCookie.setMaxAge(60*60*24*30);
			
			response.addCookie(theCookie);
		
		
		%>
	
		<a href="cookies-homepage.jsp">Back to Homepage</a>
	</body>
</html>