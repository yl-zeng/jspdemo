<html>

	<head><title>Student Confirmation Title</title></head>

	<body>
		The student is confirmed: ${param.firstName} ${param.lastName } ${param.country }
		<br/>Favorite language is <%=request.getParameter("language") %>
		<br/>
		Favorite language2 are
		<ul>
			<%
			String []langs = request.getParameterValues("language2");
		
			if(langs!=null){
				for(String c:langs){
					out.print("<li>" + c + "</li>");
				}
			}
			
		
		%>
		</ul>
		
	</body>


</html>