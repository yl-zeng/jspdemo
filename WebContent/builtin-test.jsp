<html>

	<body>

		<h3>JSP Built-in Object</h3>

		Request User Agent: <%= request.getHeader("User-Agent") %>

		<br/><br/>
		
		Request Language: <%= request.getLocale() %>

	</body>



</html>