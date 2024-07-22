<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete a Player</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #081F3D;
        
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
        margin-bottom: 10px;
        color: #333;
    }

    input[type="text"] {
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

    p.error {
        color: red;
        text-align: center;
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
                <h1 class="text-center" style="color: white;"><strong>Delete Player</strong></h1>
            </div>
            <div class="col">
                <button class="btn btn-primary right" onclick="window.location.href='/index'">Home</button>
            </div>
        </div>
        <br>
    <form action="/deletePlayer" method="post">
        <label for="id">Player ID:</label>
        <input type="text" name="id" required><br><br>
        <input type="submit" value="Submit">
    </form>


<script>


	function validateForm() {
	  var playerId = document.getElementById('id').value;
	  if (isNaN(playerId)) {
	      alert('Please enter a valid player ID.');
	      return false;
	  }
	  return false;
	}
    $(document).ready(function() {
        var message = "${message}";
        if (message === "Deleted Successfully") {
            alert(message);
            window.location.href='/index';
            
        } else if(message.trim() !==""){
        	alert(message);
        }
    });
</script>

</body>
</html>