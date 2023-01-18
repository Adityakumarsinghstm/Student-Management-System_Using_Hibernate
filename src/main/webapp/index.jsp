

<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>



<%@ page import="java.sql.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="com.helper.FactoryProvider"%>
<%@ page import="com.entities.Student"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="components/all_js_Css.jsp"%>

</head>
<body class="bg-light">


	<%@include file="components/navbar.jsp"%>
	<div class="container p-3">
		<div class="card">
			<div class="card-body">


				<p class="text-center fs-1">All Student Details</p>

				<c:if test="${not empty succMsg }">
					<p class="text-center text-success">${succMsg }</p>
					<c:remove var="succMsg" />
				</c:if>


				<c:if test="${not empty errorMsg }">
					<p class="text-center text-success">${errorMsg }</p>
					<c:remove var="errorMsg" />
				</c:if>


				<table class="table">
					<thead>
						<tr>
							<th scope="col">Full Name</th>
							<th scope="col">DOB</th>
							<th scope="col">Address</th>
							<th scope="col">Qualification</th>
							<th scope="col">Email</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>

						<%
						Session s = FactoryProvider.getFactory().openSession();
						Query q = s.createQuery("from Student");
						List<Student> list = q.list();
						for(Student stu :list){
						%>
						
						<tr>
						    <th scope="row"><%=stu.getFullName() %></th>
							<td><%=stu.getDob() %></td>
							<td><%=stu.getAddress() %></td>
							<td><%=stu.getQualificatio() %></td>
							<td><%=stu.getEmail() %></td>

							<td><a href="edit_student.jsp?id=<%=stu.getId() %>"
								class="btn btn-sm btn-primary">Edit </a> <a
								href="DeleteStudentServlet?id=<%=stu.getId() %>" class="btn btn-sm btn-danger ms-1">Delete
							</a></td>
						</tr>
						
						
						<%} %>

						




					</tbody>
				</table>
			</div>
		</div>
	</div>





</body>
</html>