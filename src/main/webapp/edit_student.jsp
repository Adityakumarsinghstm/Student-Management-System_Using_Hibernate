<%@page import="com.entities.Student"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="components/all_js_Css.jsp"%>
</head>
<body class="bg-light">
	<%@include file="components/navbar.jsp"%>
	<div class="container p-4">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<p class="fs-3 text-center">Edit Student</p>

						<%
						int id = Integer.parseInt(request.getParameter("id").trim());
						Session s = FactoryProvider.getFactory().openSession();
						Transaction txt = s.beginTransaction();
						Student stu = s.get(Student.class, id);
						
						%>




						<form action="EditStudentServlet" method="post">

							<div class="mb-3">
								<label class="form-label">Full Name</label> <input name="name"
									type="text" value="<%=stu.getFullName() %>" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Date Of Birth</label> <input
									name="dob" type="date" value="<%=stu.getDob() %>" class="form-control">
							</div>


							<div class="mb-3">
								<label class="form-label">Address</label> <input name="address"
									type="text" value=" <%=stu.getAddress() %>" class="form-control">
							</div>



							<div class="mb-3">
								<label class="form-label">Qualification</label> <input
									name="qualification" type="text" value="<%=stu.getQualificatio() %>" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Email </label> <input name="email"
									type="email" value="<%=stu.getEmail() %>" class="form-control">
							</div>



							<input type="hidden" name="id" value="<%=stu.getId()%>">

							<button type="submit" class="btn btn-primary col-md-12">Update</button>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>