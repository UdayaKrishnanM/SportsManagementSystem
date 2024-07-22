Hello I have developed this called **Sports Management System** using **Spring Boot, Spring JPA, MySQL, JSP.**

This project is based on CRUD operations like adding, deleting, updating and reading the player's details and added one more functionality called listing T20, Test and ODI format top 11 players according to their ranks in each format.

I have used entities Admin, Player, Ranks. Since RANK is a reserved keyword in MySQL we cant use it so we use RANKS. Player entity has player name, age, department. Ranks entity has each player's rank in each format (T20, Test, ODI).


Steps to run the project:
1. Download the zip file and extract the file. Open in either VS Code or Eclipse or IntelliJ.
2. navigate to src/main/resources/application.properties.
   2.1 Create a Database on your wish (spring.datasource.url=jdbc:mysql://localhost:PORT_NUMBER/DBname)
   2.2 Change username and password (spring.datasource.username= USERNAME), (spring.datasource.password= PASSWORD)
4. Open terminal and enter this command (./mvnw spring-boot:run)


ENDPOINTS:

PlayerController Endpoints
   
   GET /addPlayer
   URL: http://localhost:8080/addPlayer
   Method: GET
   Description: Displays the form to add a new player.
   Requires Authentication: Yes
   
   POST /addPlayer
   URL: http://localhost:8080/addPlayer
   Method: POST
   Description: Adds a new player.
   Requires Authentication: Yes
   
   GET /listPlayers
   URL: http://localhost:8080/listPlayers
   Method: GET
   Description: Lists all players.
   Requires Authentication: No
   
   GET /deletePlayer
   URL: http://localhost:8080/deletePlayer
   Method: GET
   Description: Displays the form to delete a player.
   Requires Authentication: Yes
   
   POST /deletePlayer
   URL: http://localhost:8080/deletePlayer
   Method: POST
   Description: Deletes a player based on ID.
   Requires Authentication: Yes
   
   GET /pickTopPlayers
   URL: http://localhost:8080/pickTopPlayers
   Method: GET
   Description: Displays the form to pick top players.
   Requires Authentication: No
   GET /getTop11
   
   URL: http://localhost:8080/getTop11
   Method: GET
   Description: Lists the top 11 players based on the specified criteria (ODI, T20, Test).
   Requires Authentication: No
   GET /updatePlayer
   
   URL: http://localhost:8080/updatePlayer
   Method: GET
   Description: Displays the form to update a player's details.
   Requires Authentication: Yes
   POST /updatePlayer
   
   URL: http://localhost:8080/updatePlayer
   Method: POST
   Description: Updates a player's details based on the specified type (age, department).
   Requires Authentication: Yes
   
AdminLoginController Endpoints

GET /

URL: http://localhost:8080/
Method: GET
Description: Displays the login page.
POST /

URL: http://localhost:8080/
Method: POST
Description: Processes the admin login.
Requires Authentication: No (for the login process itself)
GET /index

URL: http://localhost:8080/index
Method: GET
Description: Displays the index page after successful login.
Requires Authentication: Yes
GET /logout

URL: http://localhost:8080/logout
Method: GET
Description: Logs out the admin and invalidates the session.
Requires Authentication: No (ends the session
