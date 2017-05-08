<html>
	<body>
	
		<h3>Hello Java</h3>
		
		<%!
		
		String makeItLower(String data){
			return data.toLowerCase();
		}
		
		
		%>
		
		<%= "<h1 style=\"color:red;\">" + makeItLower("BBB") +"</h1>" %>
	
	
	</body>



</html>