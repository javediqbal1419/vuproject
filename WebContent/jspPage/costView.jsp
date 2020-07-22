<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<%@ page import="com.vu.dao.CostDao" %>
<%@ page import="com.vu.controller.costViewServlet" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<jsp:include page="home.jsp"/>

<title>Cost View</title>


<script>
window.onload = function() {

var dataPoints = [];

var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	theme: "light1",
	title: {
		text: "Project Cost"
	},
	axisY: {
		title: "Cost",
		
		titleFontSize: 22
	},
	axisX: {
		title: "Project",
		
		titleFontSize: 22
	},
	
	data: [{
		type: "column",
		
		dataPoints: dataPoints
	}]
});

function addData(data) {
	console.log(data)
	for (var i = 0; i < data.length; i++) {
		dataPoints.push({
			label : data[i].projectName,
			y : data[i].totalCost
		});
	}
	console.log(dataPoints)
	chart.render();

}

$.getJSON("http://localhost:8080/vuproject/costViewServlet", addData);

}
</script>	
<style>
.projects{margin-bottom:100px!important;} 
</style>
</head>


<body>
<input type="hidden" name= "data" id = "data">
<div id="chartContainer" class ="container projects" style="height: 370px; width: 60%;"></div>
<script type="text/javascript" src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</body>
</html>