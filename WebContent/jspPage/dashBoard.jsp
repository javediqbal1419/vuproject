<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<jsp:include page="home.jsp"/>


<title>Dashboard</title>





<script>
window.onload = function() {

var dataPoints = [];

var chart = new CanvasJS.Chart("chartContainer1", {
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


var chart2 = new CanvasJS.Chart("chartContainer2", {
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
		type: "pie",
		toolTipContent: "<b>{label}</b>: ${label} (#percent%)",
		
		
		dataPoints: dataPoints
	}]
});


function costData(data) {
	console.log(data)
	for (var i = 0; i < data.length; i++) {
		dataPoints.push({
			label : data[i].projectName,
			y : data[i].totalCost
		});
	}
	console.log(dataPoints)
	chart.render();
	chart2.render();

}

$.getJSON("http://localhost:8080/vuproject/dashBoardServlet", costData);

}


</script>	
<style>
.projects{margin-bottom:100px!important;} 
</style>
</head>


<body>


<script type="text/javascript" src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>

<div id="chartContainer1" class ="container projects" style="height: 250px; width: 50%;display: inline-block;"></div>
<div id="chartContainer2" class ="container projects" style="height: 250px; width: 50%;display: inline-block;"></div>

</body>
</html>