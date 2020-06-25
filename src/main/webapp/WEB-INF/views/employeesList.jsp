<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>List of Users</h1>
	<table border = "1">
		<tr>
			<th>Age</th>
			<th>Zipcode</th>
			<th>Feet</th>
			<th>Inches</th>
			<th>Weight</th>
			<th>Sex</th>
			<th>Current Ex Smoker</th>
			<th>Hispanic</th>
			<th>Race</th>
			<th>Hypertensive</th>
			<th>Respiratory Disease Excluding Asthma</th>
			<th>OCS Use</th>
			<th>Chronic Heart Disease</th>
			<th>Diabetes Controlled Uncontrolled</th>
			<th>Hematological</th>
			<th>Stroke</th>
			<th>Kidney</th>
			<th>Arthritis</th>	
			<th>BMI Calc</th>			
			<th>Age Calc</th>		
			<th>IMD Calc</th>				
			<th>Risk Score</th>					
		</tr>


	<c:forEach items="${list}" var="e">
			<tr>				
				<th>${e.age}</th>
				<th>${e.zipcode}</th>
				<th>${e.feet}</th>
				<th>${e.inches}</th>
				<th>${e.weight}</th>
				<th>${e.sex}</th>
				<th>${e.currentExSmoker}</th>	
				<th>${e.hispanic}</th>
				<th>${e.race}</th>
				<th>${e.hypertensive}</th>
				<th>${e.respiratoryDisease}</th>
				<th>${e.ocs}</th>
				<th>${e.chronicHeartDisease}</th>
				<th>${e.diabetes}</th>
				<th>${e.hematologicalDiagnosis}</th>
				<th>${e.stroke}</th>
				<th>${e.kidney}</th>
				<th>${e.arthritis}</th>
				<th>${e.bmiCalc}</th>
				<th>${e.ageCalc}</th>
				<th>${e.imdCalc}</th>
				<th>${e.riskScore}</th>
				
				<td>
					<a href = "${pageContext.request.contextPath}/employee/${e.id}">Edit</a>
					|
					<a href = "${pageContext.request.contextPath}/delete/${e.id}">Delete</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	<button onclick="window.location.href='${pageContext.request.contextPath}/openEmployeeView'">Add Employee</button>
</body>
</html>