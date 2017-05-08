<%@ page import="java.util.*" %>
<html>

	<body>
	
	<form action="todo-demo.jsp">
	
		<input type="text" name="theItem"/>
		<input type="submit" value="submit2"></input>
	
	</form>
	
	
	<%
			
		ArrayList<String> items = (ArrayList<String>)session.getAttribute("myToDoList");
	
		if(items==null){
			
			items = new ArrayList();
			session.setAttribute("myToDoList",items);
		}
		
		String theItem = request.getParameter("theItem");
		if(theItem!=null&&!theItem.trim().equals("")){
			items.add(theItem);
		}
	%>
	
	<hr/>
	
	<b>To Do List Items</b>
	<ul>
		<%
		
			if(items.size()!=0){
				for(String c : items){
					out.print("<li>" + c + "</li>");
				}
			}
		
		
		%>
	</ul>
	
	
	</body>






</html>