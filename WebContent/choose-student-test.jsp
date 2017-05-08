<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page import="java.util.*,com.luvcode2.jsp.Student" %>

<% 

	List<Student> data = new ArrayList<>();

	data.add(new Student("John","Doe",false));
	data.add(new Student("Sec","Fe",false));
	data.add(new Student("Mike","Sf",true));
	
	pageContext.setAttribute("myStudent", data);

%>

<html>
	<body>

		
		<table border="1">
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Gold Customer</th>
			</tr>
			
			<c:forEach var="tempStudent" items="${myStudent }">
				<tr>
					<td>${tempStudent.firstName }</td>
					<td>${tempStudent.lastName }</td>
					<td>
						<c:choose>
							<c:when test="${tempStudent.goldCustomer}">
								Special Discount!
							</c:when>
							<c:otherwise>
								no soup for you
							</c:otherwise>
						</c:choose>
					</td>
				</tr>
			</c:forEach>
			
		</table>
		
	</body>
</html>