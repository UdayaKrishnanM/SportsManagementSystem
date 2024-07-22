Hello I have developed this called **Sports Management System** using **Spring Boot, Spring JPA, MySQL, JSP.**

This project is based on CRUD operations like adding, deleting, updating and reading the player's details and added one more functionality called listing T20, Test and ODI format top 11 players according to their ranks in each format.

I have used entities Admin, Player, Ranks. Since RANK is a reserved keyword in MySQL we cant use it so we use RANKS. Player entity has player name, age, department.

Steps to run the project:
1. Download the zip file and extract the file. Open in either VS Code or Eclipse or IntelliJ.
2. navigate to src/main/resources/application.properties.
   2.1 Create a Database on your wish (spring.datasource.url=jdbc:mysql://localhost:PORT_NUMBER/DBname)
   2.2 Change username and password (spring.datasource.username= USERNAME), (spring.datasource.password= PASSWORD)
3. Open terminal and enter this command (./mvnw spring-boot:run)


