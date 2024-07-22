<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.sportsmanagement.model.Player"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Player List</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
    /* Custom CSS for styling */
    body {
        padding-top: 20px;
        background-color: #081F3D
        
    }
    .player-card {
        margin-bottom: 20px;
    }
    .player-image {
        max-width: 100%;
        height: auto;
    }
    
     .card-hover:hover {
     	 border-color: red;
	     transform: scale(1.05);
	     box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	     transition: transform 0.2s ease, box-shadow 0.2s ease;
    }
</style>
</head>
<body>
    <div class="container">
    	
    	<div class="row">
    		<h1 style="display:none;"></h1>
    	</div>
    	
        <div class="row">
        	<div class="col">
              	<button class="btn btn-primary right" onclick="window.location.href='/pickTopPlayers'">Go Back...</button>
        	</div>
            <div class="col">
                <h1 class="text-center" style="color: white;"><strong>Top 11 List</strong></h1>
            </div>
            <div class="col">
                <button class="btn btn-primary right" onclick="window.location.href='/index'">Home</button>
            </div>
        </div>
        <br>
        
        <div class="row">
            <% 
                List<Player> dataList = (List<Player>)request.getAttribute("players");
                for(int c = 0; c < dataList.size(); c++) {
            %>
            <div class="col-md-4 player-card">
                <div class="card card-hover">
                    <!-- Player Image Section -->
                    <img class="card-img-top player-image" src="/image/<%=dataList.get(c).getId()%>.png" alt="Player Image">
                    <div class="card-body">
                        <h5 class="card-title"><%= dataList.get(c).getName() %></h5>
                        <p class="card-text">ID: <%= dataList.get(c).getId() %></p>
                        <p class="card-text">Department: <%= dataList.get(c).getDepartment() %></p>
                    </div>
                </div>
            </div>
            <% } %>
        </div>
    </div>
</body>
</html>
