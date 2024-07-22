<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update a Player Details</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">


<script>
    
    function showInput() {
        var type = document.getElementById("type").value;
        var inputContainer = document.getElementById("inputContainer");
        if (type === "age") {
            inputContainer.innerHTML = '<label for="value">Enter the age:</label>' +
                '<input type="number" id="value" min="20" max="45" name="value" required>';
        } else if (type === "department") {
            inputContainer.innerHTML = '<label for="value">Select the department:</label>' +
                '<select id="value" name="value" required>' +
                '<option value="Batsmen">Batsmen</option>' +
                '<option value="Bowler">Bowler</option>' +
                '<option value="WicketKeeper">WicketKeeper</option>' +
                '<option value="AllRounder">AllRounder</option>' +
                '</select>';
        }
    }
    

    function validateForm() {
        var id = document.getElementById("id").value;
        var type = document.getElementById("type").value;
        var value = document.getElementsByName("value")[0].value;

        if (isNaN(id)) {
            alert("ID must be a number");
            return false;
        }

        if (type === "age" && (value < 20 || value > 45)) {
            alert("Age must be between 20 and 45");
            return false;
        }

        return true;
    }
</script>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #081F3D
        
    }

    form {
        width: 50%;
        margin: 0 auto;
        padding: 20px;
        background-color: rgba(255, 255, 255, 0.7);
        border-radius: 5px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    label {
        display: block;
        margin-bottom: 5px;
    }

    input[type="text"],
    input[type="number"],
    select {
        width: 100%;
        padding: 8px;
        margin-bottom: 10px;
        box-sizing: border-box;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    input[type="submit"] {
        width: 100%;
        background-color: #4CAF50;
        color: white;
        padding: 10px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #45a049;
    }

    #inputContainer {
        margin-top: 10px;
    }
</style>
</head>
<body>
	<br>
	<div class="row">
        	<div class="col">
        		<h1 style="display:none;"></h1>
        	</div>
            <div class="col">
                <h1 class="text-center" style="color: white;"><strong>Update Player</strong></h1>
            </div>
            <div class="col">
                <button class="btn btn-primary right" onclick="window.location.href='/index'">Home</button>
            </div>
     </div>

    <form action="/updatePlayer" method="post" onsubmit="return validateForm()">
        <label for="id">Player ID:</label>
        <input type="text" id="id" name="id" required><br><br>
        
        <label for="type">Select update type:</label>
        <select id="type" name="type" onchange="showInput()" required>
            <option value="age">Age</option>
            <option value="department">Department</option>
        </select><br><br>
        
        <div id="inputContainer">
            <label for="value">Enter the age:</label>
            <input type="number" id="value" min="20" max="45" name="value" required>
        </div><br><br>
        
        <input type="submit" value="Submit">
    </form>
    
    <script>
	$(document).ready(function() {
	    var message = "${message}";
        var id = document.getElementById("id").value;
	    if (message === "Age was updated") {
	        alert(message);
	        window.location.href='/index';
	        
	    } else if(message === "Department was updated"){
	    	alert(message);
	        window.location.href='/index';
	    } 
	    else if(message.trim() !==""){
	    	alert(message);
	    }
	});

    </script>
    
</body>
</html>
