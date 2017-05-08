<%@page import="java.net.URLDecoder" %>

<html>
	<body>
		<h3>Training Portal</h3>
		
		<!-- Read cookies -->
		
		<%
			String lang = "Java";
		
			Cookie [] cookies = request.getCookies();
			if(cookies!=null){
				for(Cookie c : cookies){
					if(c.getName().equals("myApp.favoriteLanguage")){
						lang = URLDecoder.decode(c.getValue());
						break;
					}
				}
			}
			
		%>
		
		<h1>New books for <%=lang %></h1>
		<p>BLA BLA BLA</p>
		<p>BLA BLA BLA</p>
	</body>
</html>