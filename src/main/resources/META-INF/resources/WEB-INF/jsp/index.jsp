<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css">
	<script src="https://use.fontawesome.com/3903c9d7fd.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.2/css/all.css" rel="stylesheet">
    <title>Sports Management System</title>
    <style>
        * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
	}
	body::after {
            content: "";
            width: auto; height: auto;
            opacity: 0.5;
            top: 0;
            left: 0;
            bottom: 0;
            right: 0;
            position: absolute;
            z-index: -1;  
            background-size: cover;
        }
        
        @charset "utf-8";

@import url("https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap");

* {
  margin: 0px;
  padding: 0px;
}
body {
  font-family: "Roboto", sans-serif;
  font-size: 16px;  
  background-color: #081F3D
}
.clear {
  clear: both;
}
img {
  max-width: 100%;
  border: 0px;
}
ul,
ol {
  list-style: none;
}
a {
  text-decoration: none;
  color: inherit;
  outline: none;
  transition: all 0.4s ease-in-out;
  -webkit-transition: all 0.4s ease-in-out;
}
a:focus,
a:active,
a:visited,
a:hover {
  text-decoration: none;
  outline: none;
}
a:hover {
  color: #e73700;
}
h2 {
  margin-bottom: 48px;
  padding-bottom: 16px;
  font-size: 20px;
  line-height: 28px;
  font-weight: 700;
  position: relative;
  text-transform: capitalize;
}
h3 {
  margin: 0 0 10px;
  font-size: 28px;
  line-height: 36px;
}
button {
  outline: none !important;
}

.line-title {
  position: relative;
  width: 400px;
  color: white;
}
.line-title::before,
.line-title::after {
  content: "";
  position: absolute;
  bottom: 0;
  left: 0;
  height: 4px;
  border-radius: 2px;
}
.line-title::before {
  width: 100%;
  background: #f2f2f2;
}
.line-title::after {
  width: 32px;
  background: #e73700;
}

/******* Middle section CSS Start ******/
/* -------- Landing page ------- */
.game-section {
  padding: 60px 50px;
}
.game-section .owl-stage {
  margin: 15px 0;
  display: flex;
  display: -webkit-flex;
}
.game-section .item {
  margin: 0 15px 60px;
  width: 320px;
  height: 400px;
  display: flex;
  display: -webkit-flex;
  align-items: flex-end;
  -webkit-align-items: flex-end;
  background: #343434 no-repeat center center / cover;
  border-radius: 16px;
  overflow: hidden;
  position: relative;
  transition: all 0.4s ease-in-out;
  -webkit-transition: all 0.4s ease-in-out;
  cursor: pointer;
}
.game-section .item.active {
  width: 500px;
  box-shadow: 12px 40px 40px rgba(0, 0, 0, 0.25);
  -webkit-box-shadow: 12px 40px 40px rgba(0, 0, 0, 0.25);
}
.game-section .item:after {
  content: "";
  display: block;
  position: absolute;
  height: 100%;
  width: 100%;
  left: 0;
  top: 0;
  background-image: linear-gradient(rgba(0, 0, 0, 0), rgba(0, 0, 0, 1));
}
.game-section .item-desc {
  padding: 0 24px 12px;
  color: #fff;
  position: relative;
  z-index: 1;
  overflow: hidden;
  transform: translateY(calc(100% - 54px));
  -webkit-transform: translateY(calc(100% - 54px));
  transition: all 0.4s ease-in-out;
  -webkit-transition: all 0.4s ease-in-out;
}
.game-section .item.active .item-desc {
  transform: none;
  -webkit-transform: none;
}
.game-section .item-desc p {
  opacity: 0;
  -webkit-transform: translateY(32px);
  transform: translateY(32px);
  transition: all 0.4s ease-in-out 0.2s;
  -webkit-transition: all 0.4s ease-in-out 0.2s;
}
.game-section .item.active .item-desc p {
  opacity: 1;
  -webkit-transform: translateY(0);
  transform: translateY(0);
}
.game-section .owl-theme.custom-carousel .owl-dots {
  margin-top: -20px;
  position: relative;
  z-index: 5;
}


@media (min-width: 992px) and (max-width: 1199px) {
  h2 {
    margin-bottom: 32px;
  }
  h3 {
    margin: 0 0 8px;
    font-size: 24px;
    line-height: 32px;
  }

  .game-section {
    padding: 50px 30px;
  }
  .game-section .item {
    margin: 0 12px 60px;
    width: 260px;
    height: 360px;
  }
  .game-section .item.active {
    width: 400px;
  }
  .game-section .item-desc {
    transform: translateY(calc(100% - 46px));
    -webkit-transform: translateY(calc(100% - 46px));
  }
}

    .container {
        display: inline-block;
    }

@media (min-width: 768px) and (max-width: 991px) {
  h2 {
    margin-bottom: 32px;
  }
  h3 {
    margin: 0 0 8px;
    font-size: 24px;
    line-height: 32px;
  }
  .line-title {
    width: 330px;
  }

  .game-section {
    padding: 50px 30px 40px;
  }
  .game-section .item {
    margin: 0 12px 60px;
    width: 240px;
    height: 330px;
  }
  .game-section .item.active {
    width: 360px;
  }
  .game-section .item-desc {
    transform: translateY(calc(100% - 42px));
    -webkit-transform: translateY(calc(100% - 42px));
  }
}

@media (max-width: 767px) {
  body {
    font-size: 14px;
  }
  h2 {
    margin-bottom: 20px;
  }
  h3 {
    margin: 0 0 8px;
    font-size: 19px;
    line-height: 24px;
  }
  .line-title {
    width: 250px;
  }

  .game-section {
    padding: 30px 15px 20px;
  }
  .game-section .item {
    margin: 0 10px 40px;
    width: 200px;
    height: 280px;
  }
  .game-section .item.active {
    width: 270px;
    box-shadow: 6px 10px 10px rgba(0, 0, 0, 0.25);
    -webkit-box-shadow: 6px 10px 10px rgba(0, 0, 0, 0.25);
  }
  .game-section .item-desc {
    padding: 0 14px 5px;
    transform: translateY(calc(100% - 42px));
    -webkit-transform: translateY(calc(100% - 42px));
  }
}
        
ul.menu {
    display: inline-block;
    list-style-type: none;
}
li.menu_list {
    height: 85px;
    width: 85px;
    position: relative;
}
li.menu_list .front,
a.side {
    display: flex;
    align-items: center;
    justify-content: center;
    height: 86px;
    width: 100%;
    padding: 30px;
    position: absolute;
    top: 0;
    left: 0;
    text-decoration: none;
    text-transform: uppercase;
    transition: all .5s ease-out;
    cursor: pointer;
}

li.menu_list .front {
    background-color: #081f3d;
    color: #FFFC00;
    transform-origin: 0 0;
}
a.side {
    background-color: #FFFC00;
    color: #071e3a;
    transform-origin: 0 0 85px;
    transform: rotateY(-90deg);
}
li.menu_list:hover a.side {
    transform: rotateY(0deg);
}
li.menu_list:hover .front {
    transform: rotateY(90deg);
}


/* for slider 2  */

.myContainer{
	position:relative;
}

.myContainer .myWrapper{

	width: 60vw;
	height: 75vh;
	box-shadow: 10px 10px 20px rgba(0,0,0,0.6);
	margin: 5rem auto;
	overflow: hidden;
}


.myContainer #slider-img1{
	background-image: url('/trophy/CWC1.jpg');
	background-position: center;
	background-size: cover;
	background-attachment: fixed;
	background-repeat: no-repeat;
}
.myContainer #slider-img2{
	background-image: url('/trophy/CWC2.jpg');
	background-position: center;
	background-attachment: fixed;
	background-size: cover;
	background-repeat: no-repeat;
}

.myContainer #slider-img3{
	background-image: url('/trophy/NewT20.jpg');
	background-position: center;
	background-size: cover;
	background-repeat: no-repeat;
background-attachment: fixed;
}

.myContainer #slider-img4{
	background-image: url('/trophy/CT.jpg');
	background-position: center;
	background-attachment: fixed;
	background-size: cover;
	background-repeat: no-repeat;
}

.myContainer #slider-img5{
	background-image: url('/trophy/TestMace.jpg');
	background-position: center;
	background-attachment: fixed;
	background-size: cover;
	background-repeat: no-repeat;
}


.myContainer #slider-img6{
	background-image: url('/trophy/TestMace2.jpg');
	background-position: center;
	background-attachment: fixed;
	background-size: cover;
	background-repeat: no-repeat;
}

.myContainer #slider-img7{
	background-image: url('/trophy/T20_2.jpeg');
	background-position: center;
	background-size: cover;
	background-repeat: no-repeat;
    background-attachment: fixed;
}


.myContainer .myButton-holder .myButton{
	background-color: white;
	width:15px;
	width:15px;
	border-radius: 15px;
	display:inline-block;
	margin: .3rem;
}

.myContainer .myButton-holder{
	position: absolute;
	left: 45%;
	bottom: 0%;
}

.myButton:hover{
	box-shadow: 0px 0px 7px 4px rgba(0, 255, 255, 0.6);
}

.trophyList{
	list-style-type:disc;
	margin-left: 55px;
}

.trophyHead{
	list-style-type:disc;
	margin-left: 10px;	
}


@keyframes slider {
    0% { transform: translateX(0%); }
    16.666% { transform: translateX(-100%); }
    33.333% { transform: translateX(-200%); }
    50% { transform: translateX(-300%); }
    66.666% { transform: translateX(-400%); }
    74.333% { transform: translateX(-500%); }
    83.333% { transform: translateX(-600%); }
    100% { transform: translateX(0%); }
}

.myContainer .myWrapper-holder {
    display: grid;
    grid-template-columns: repeat(7, 100%);
    height: 100%;
    width: 100%; /* Adjusted width to accommodate 6 images */
    animation: slider 20s ease-in-out infinite alternate;
}


.myBody{
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
}

.fa-people-group{
	color: yellow;
}

    </style>
</head>

<body>

<div class="container" style="display: flex; justify-content: space-between;">
    <ul class="menu">
        <li class="menu_list">
            <span class="front fa-solid fa-arrow-right-from-bracket"></span>
            <a href="/" class="side"><b>Log Out</b></a>
        </li>
        		<li class="menu_list">
            <span class="front fas fa-add"></span>
            <a href="addPlayer" class="side"><b>Add Player</b></a>
        </li>
        <li class="menu_list">
            <span class="front fas fa-group"></span>
            <a href="listPlayers" class="side"><b>List All Players</b></a>
        </li>
        <li class="menu_list">
            <span class="front fas fa-close"></span>
            <a href="deletePlayer" class="side"><b>Delete Player</b></a>
        </li>
        <li class="menu_list">
            <span class="front fas fa-edit"></span>
            <a href="updatePlayer" class="side"><b>Update Player</b></a>
        </li>
        <li class="menu_list">
            <span class="front fas fa-users"></span>
            <a href="pickTopPlayers" class="side"><b>Top 11 Players</b></a>
        </li>
    </ul>

    <img alt="Player" class="margin-right" src="/image/coll.jpg" style="width: 790px;">

<p style="background-color: #081F3D; color: white; padding: 10px; font-weight: bold; font-family: Roboto, sans-serif; text-align:center;"><br> <br> <br> <br> <br> The 2011 ICC Cricket World Cup held in India, Sri Lanka, and Bangladesh was a memorable event in cricket history, particularly for Indian fans. India's campaign was led by captain MS Dhoni, with a team boasting stars like Tendulkar, Sehwag, and Yuvraj Singh. They defeated Australia in the quarter-finals and Pakistan in the semi-finals, setting up a final clash with Sri Lanka in Mumbai. In the final, Sri Lanka batted first and posted a challenging total of 274/6, with Mahela Jayawardene scoring a brilliant century. In reply, India lost Sehwag and Tendulkar early but Gambhir and MS Dhoni steadied the innings. Dhoni's and Gambhir's became iconic moments in Indian cricket history.</p>
</div>



<!-- below slider -->
	<div>
    <section class="game-section">
        <h2 class="line-title"><b>Top Players</b></h2>
        <div class="owl-carousel custom-carousel owl-theme">
            <div class="item active" style="background-image: url('/image/18.png');">
                <div class="item-desc">
                    <h3>Virat Kohli</h3>
					<p>Virat Kohli is an Indian cricketer renowned for his aggressive batting and remarkable consistency, often regarded as one of the best batsmen in the world.</p>
                </div>
            </div>
            <div class="item" style="background-image: url(/image/45.png);">
                <div class="item-desc">
                    <h3>Rohit Sharma</h3>
                    <p>Rohit Sharma is an Indian captain and cricketer known for his elegant batting style and record-breaking performances, including multiple double centuries in ODI cricket.</p>
                </div>
            </div>
            <div class="item" style="background-image: url(/image/93.png);">
                <div class="item-desc">
                    <h3>Jasprit Bumrah</h3>
					<p>Jasprit Bumrah is an Indian cricketer known for his unique bowling action and ability to deliver yorkers with pinpoint accuracy.</p>
                </div>
            </div>
            <div class="item" style="background-image: url(/image/13.png);">
                <div class="item-desc">
                    <h3>Mohammed Siraj</h3>
                    <p>Mohammed Siraj is an Indian cricketer known for his impressive fast bowling and breakthrough performances in international cricket.</p>
                </div>
            </div>
            <div class="item" style="background-image: url(/image/17.png);">
                <div class="item-desc">
                    <h3>Rishabh Pant</h3>
                    <p>Rishabh Pant is an Indian cricketer known for his explosive batting and wicketkeeping skills, a key player in the Indian team.</p>
                </div>
            </div>
            <div class="item" style="background-image: url(/image/8.png);">
                <div class="item-desc">
                    <h3>Ravindra Jadeja</h3>
                    <p>Ravindra Jadeja is an Indian cricketer known for his all-round abilities, with exceptional skills in both batting and left-arm spin bowling.</p>
                </div>
            </div>
        </div>
    </section>
	</div>


	<!-- below sliders for trophies -->
	
	<div class="game-section">
	<h2 class="line-title"><b>TROPHY CABINET</b></h2>
		<div class="myContainer">
			
			<div class="myWrapper">
			
				<div class="myWrapper-holder">
					<div id="slider-img1"></div>
					<div id="slider-img2"></div>
					<div id="slider-img3"></div>
					<div id="slider-img4"></div>
					<div id="slider-img5"></div>
					<div id="slider-img6"></div>
					<div id="slider-img7"></div>

				</div>
			</div>
	
			<div class="myButton-holder">
				
				<a href='#slider-img1' class="button"></a>
				<a href='#slider-img2' class="button"></a>
				<a href='#slider-img3' class="button"></a>
				<a href='#slider-img4' class="button"></a>
				<a href='#slider-img5' class="button"></a>
				<a href='#slider-img6' class="button"></a>
				<a href='#slider-img7' class="button"></a>

			</div>
			
			<div class="game-section">
			<h2 class="line-title">INDIA ICC TROPHY HISTORY: </h2>
			<ul style="color: white;">
				<li class="trophyHead"><strong>ICC WORLD CUP:</strong></li>
				
				<br>
				
				<ul>
					<li class="trophyList"><strong>1983:</strong>India won 1st maiden World Cup under Kapil Dev captaincy in England against Prime West Indies.</li>
				<br>
					<li class="trophyList"><strong>2011:</strong>India won 2nd World Cup under MS Dhoni captaincy in India against Sri Lanka.</li>
				</ul>
				
				<br>
				
				<li class="trophyHead"><strong>T20 WORLD CUP:</strong></li>
				
				<br>
				
				<ul>
					<li class="trophyList"><strong>2007:</strong>India won 1st maiden T20 World Cup under MS Dhoni captaincy in South Africa against Pakistan.</li>
                <br>
					<li class="trophyList"><strong>2024:</strong>India won 2nd T20 World Cup under Rohit Sharma captaincy in West Indies against South Africa.</li>
				</ul>

				<br>
				
				<li class="trophyHead"><strong>CHAMPIONS TROPHY:</strong></li>
				
				<br>
				
				<ul>
					<li class="trophyList"><strong>2013:</strong>India won 1st maiden Champions Trophy under MS Dhoni captaincy in England against England.</li>
				</ul>
				
				<br>
				
				<li class="trophyHead"><strong>TEST MACE:</strong></li>
				
				<br>
				
				<ul>
       
					<li class="trophyList"><strong>2010 and 2011:</strong>India won 2 Test Mace under MS Dhoni captaincy back to back twice.</li>
				
					<br>
	
					<li class="trophyList"><strong>2017, 2018, 2019:</strong>India won 3 Test Mace under Virat Kohli captaincy back to back thrice dominating Test format.</li>
				</ul>
				
			</ul>
			</div>

		</div>
	</div>

<footer style="padding: 20px; text-align: center;">
    <p style="margin: 0; color: white; font-size: 15px;">
        For any queries, please contact us at: <a href="mailto:bcci@gmail.com" style="color: #007bff; text-decoration: none;">bcci@gmail.com</a>
    </p>
    <div style="margin-top: 10px;">
        <a href="https://www.facebook.com/IndianCricketTeam" target="_blank" style="text-decoration: none; margin-right: 10px;">
            <img src="/logo/facebook.png" alt="Facebook" style="height: 30px; width: auto;">
        </a>
        <a href="https://www.twitter.com/BCCI" target="_blank" style="text-decoration: none; margin-right: 10px;">
            <img src="/logo/x.png" alt="Twitter" style="height: 30px; width: auto;">
        </a>
        <a href="https://www.instagram.com/indiancricketteam" target="_blank" style="text-decoration: none; margin-right: 10px;">
            <img src="/logo/instagram.png" alt="Instagram" style="height: 30px; width: auto;">
        </a>
        <img src="/logo/bcci.png" alt="My Logo" style="height: 30px; width: auto;">
    </div>
</footer>


    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
    <script>
    $(".custom-carousel").owlCarousel({
    	  autoWidth: true,
    	  loop: true
    	});
    	$(document).ready(function () {
    	  $(".custom-carousel .item").click(function () {
    	    $(".custom-carousel .item").not($(this)).removeClass("active");
    	    $(this).toggleClass("active");
    	  });
    	});

    </script>
</body>

</html>
