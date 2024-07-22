<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.sportsmanagement.model.Player"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pick Top Players</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
   
</head>


<style>
    body {
        background-color: #081F3D;
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
    }
</style>

<body>	
	<br>
    <div class="row">
        <div class="col">
            <h1 style="display:none;"></h1>
        </div>
        <div class="col">
            <h1 class="text-center" style="color: white;"><strong>Pick Top Players</strong></h1>
        </div>
        <div class="col">
            <button class="btn btn-primary right" onclick="window.location.href='/index'">Home</button>
        </div>
    </div>
    <br>

    <div class="row">	
        <div class="col">
            <h1 style="display:none;"></h1>
        </div>
        <div class="col">
        		<button class="btn btn-primary right" onclick="window.location.href = '/getTop11?value=odi'" id = "odi">ODI</button>
        </div>
        
        <div class="col">
			<button class="btn btn-primary right" onclick="window.location.href = '/getTop11?value=t20'" id = "odi">T20</button>
        </div>	

        <div class="col">
			<button class="btn btn-primary right" onclick="window.location.href = '/getTop11?value=test'" id = "odi">TEST</button>
        </div>		
    </div>
	


</body>
</html>
