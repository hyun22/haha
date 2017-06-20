<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<style>
.container {
	width: 100%;
	height: 100%;
}

.map_content {
	width: 70%;
	float: right;
}

.map {
	
}

.sidebar {
	background: gray;
	width: 30%;
	bottom: 0;
	top: 0;
	left: 0;
	z-index: 12;
	float: left;
}

.mapfooter {
	margin-top: 15px;
	width: 100%;
	background: red;
	text-align: center;
	bottom: 15px;
	z-index: 2;
	color: #6c6c6c;
	font-size: 11px;
}

.mapfooterhead {
	width: 100%;
	text-align: center;
	margin-bottom: 2px;
}

.mapfootersub {
	width: 100%;
	text-align: center;
}

.sidebarcontent {
	position: relative;
	z-index: 2;
}

.sidebartopcontent {
	display: block;
}

.sidebarlogo {
	width: 285px;
	height: 46px;
	margin-top: 17px;
	margin-left: auto;
	margin-right: auto;
}

.sidebarsub {
	width: 100%;
	margin-top: 11px;
	margin-left: auto;
	margin-right: auto;
	color: #717171;
	font-size: 13px;
	font-weight: 700;
	text-align: center;
}

.logindivclasse {
	margin-left: 15%;
	margin-top: 30px;
	width: 250px;
	padding-top: 30px;
	border-top-style: solid;
	border-top-color: #e6eaeb;
	border-top-width: 1px;
}

.sidebardivide {
	width: 288px;
	height: 1px;
	background-color: #cde0e1;
	margin-top: 17px;
	margin-left: auto;
	margin-right: auto;
}

.mapad {
	display: block;
	height: 571px;
	background: aqua;
	width: 288px;
	text-align: center;
	margin-top: 54px;
	margin-left: auto;
	margin-right: auto;
	width: 288px;
}

.logo_title {
	width: 340px;
	height: 46px;
}

.mobile_top {
	display: none;
	width: 100%;
	height: 50px;
	background: orange;
}

.logo_content {
	float: left;
	width: 70%;
	height: 100%;
}

.logo_content img {
	width: 70%;
	height: 100%;
}

.mobile_menu {
	float: right;
	width: 30%;
	height: 50px;
	background: aqua;
	text-align: right;
}

.mobile_menu ul {
	float: right;
}

.mobile_menu li {
	padding-left: 5px;
	font-size: 25px;
	list-style: none;
	float: left;
}

.modal {
	display: none;
	position: fixed;
	z-index: 1;
	left: 373;
	top: 8px;
	width: 70%;
	height: 100%;
	overflow: auto;
	background-color: rgb(0, 0, 0);
	background-color: rgba(0, 0, 0, 0.2);
}

.modal-content {
	position: absolute;
	top: 25%;
	left: 13%;
	background-color: white;
	width: 567px;
	height: 434px;
	background-repeat: no-repeat;
}

.modal_head {
	display: flex;
	flex-direction: row;
	background: aqua;
	width: 100%;
	height: 40px;
}

.modal_head_left {
	display: inline-flex;
	flex-basis: 20%;
	background: gray;
	height: 100%;
	align-items: center;
	justify-content: center;
}

.modal_head_left2 {
	display: none;
	background: gray;
	width: 30%;
	height: 40px;
}

.modal_head_left2 ul {
	float: left;
	-webkit-margin-before: 1em;
	-webkit-margin-after: 1em;
	-webkit-margin-start: 0px;
	-webkit-margin-end: 0px;
	-webkit-padding-start: 1px;
}

.modal_head_left2 li {
	list-style: none;
	float: left;
	padding-right: 10px;
	align-items: center;
	justify-content: center;
}

.modal_head_right {
	flex-basis: 20%;
	background: orange;
	margin: auto;
	text-align: center;
	font-size: 30px;
}

.modal_head_right ul {
	float: left;
	-webkit-margin-before: 1em;
	-webkit-margin-after: 1em;
	-webkit-margin-start: 0px;
	-webkit-margin-end: 0px;
	-webkit-padding-start: 1px;
}

.modal_head_left ul {
	float: left;
	-webkit-margin-before: 1em;
	-webkit-margin-after: 1em;
	-webkit-margin-start: 0px;
	-webkit-margin-end: 0px;
	-webkit-padding-start: 1px;
}

.modal_head li {
	list-style: none;
	float: left;
	padding-right: 10px;
}

.modal_head_mid {
	flex-basis: 80%;
	background: yellow;
}

.modal_head_mid ul {
	text-align: center;
}

.modal_head_mid li {
	text-align: center;
}

.info_box_pic {
	background: tomato;
	width: 100%;
	height: 270px;
	padding-top: 60px;
	display: flex;
	flex-direction: row;
}

.info_box_pic_in {
	width: 220px;
	height: 80%;
	margin: auto;
	flex-basis: 50%;
	background: azure;
}

.info_box_content {
	flex-basis: 50%;
	background: lightgoldenrodyellow;
}

.info_box {
	
}

.infoboxpicimg {
	border-radius: 75%;
	border: solid 3px #cccccc;
	background: white;
	background-size: cover;
	background-repeat: no-repeat;
	background-position: 50% 50%;
	position: relative;
	width: 220px;
	height: 100%;
	margin: auto;
	background-position: 50% 50%;
}

.infoboxpicimg img {
	width: 100%;
	height: 100%;
	background-repeat: no-repeat;
	border-radius: 50%;
}

.icon_box {
	margin: auto;
	width: 335px;
	background: aquamarine;
	margin-top: 70px;
}

.icon_box ul {
	display: inline-block;
	-webkit-margin-before: -1px;
	-webkit-margin-after: 0px;
	-webkit-margin-start: 0px;
	-webkit-margin-end: 0px;
	-webkit-padding-start: 22px;
}

.icon_box li {
	list-style: none;
	float: left;
	font-size: 30px;
	padding-left: 15px;
	padding-top: 4px;
}

.icon_box li:first-child {
	padding-left: 0px;
}

.icon_div {
	width: 40px;
	height: 40px;
	border: solid 3px rgb(57, 135, 140);
	border-radius: 50%;
	text-align: center;
}

.fa-wheelchair {
	padding-top: 4px;
	padding-left: 3px;
	padding-top: 3px;
}

.fa-male, .fa-female, .fa-child, .fa-comments {
	padding-left: 0px;
	padding-top: 4px;
}

.icon_div img {
	width: 40px;
	height: 35px;
}

.info_text {
	width: 100%;
}

.info_text_content {
	line-height: 30px;
	background: chartreuse;
}

.info_text ul {
	-webkit-margin-before: 5px;
	-webkit-margin-after: 5px;
	-webkit-margin-start: 0px;
	-webkit-margin-end: 0px;
	-webkit-padding-start: 22px;
}

.info_text li {
	font-size: 13px;
	list-style: none;
}

.foot {
	width: 100%;
	background: skyblue;
	margin-top: 10px;
}

.foot_icon {
	background: lightcoral;
	flex-basis: 20%;
}

.icon_div {
	
}

.review_icon {
	background: teal;
	flex-basis: 80%;
}

@media only screen and (max-width: 620px) {
	/* For mobile phones: */
	.sidebar {
		display: none;
	}
	.mobile_top {
		display: block;
	}
	.map_content {
		width: 100%;
	}
	.modal {
		display: none;
		background-color: none;
		background-color: rgb(0, 0, 0);
		background-color: rgba(0, 0, 0, 0);
	}
	.modal-content {
		display: flex;
		flex-direction: row;
		align-content: space-between;
		position: absolute;
		top: 50px;
		left: 0;
		right: 0;
		bottom: 0;
		width: 100%;
		height: 100%;
	}
}

@media only screen and (max-width: 510px) {
	.modal_head {
		
	}
	.modal_head_left {
		display: none;
	}
	.modal_head_mid {
		flex-basis: 70%;
	}
	.modal_head_right {
		flex-basis: 30%;
	}
	.modal_head_left2 {
		display: block;
		float: left;
	}
	.info_box_pic {
		flex-direction: column;
	}
	.info_box_pic_in {
		width: 100%;
		padding-bottom: 30px;
	}
	.info_box_content {
		
	}
	.icon_box {
		margin-top: 0;
	}
	.foot {
		flex-direction: row;
	}
}
</style>

<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="//apis.daum.net/maps/maps3.js?apikey=c9dbe1356aa85945e1921ff02435ec1a"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<meta charset="utf-8">

<title>toiletgo</title>
</head>

<body>

	<div class="container">

		<!-- /* For mobile phones: */ -->
		<div class="mobile_top">
			<div class="logo_content">
				<img alt="logo" src="img/logo.png">

			</div>

			<div class="mobile_menu">
				<ul>
					<li><span class="fa-reorder" onclick="opensidebar()"> <i
							class="fa fa-reorder"></i>
					</span></li>
				</ul>
			</div>
		</div>




		<div class="map_content">

			<div id="map" style="width: 100%; height: 820px;"></div>

			<div id="myModal" class="modal">

				<div class='modal-content'>

					<div class="modal_head">



						<div class="modal_head_mid">
							<span>title</span>
						</div>

						<div class="modal_head_right" id="close">


							<i class="fa fa-times"></i>


						</div>


					</div>



					<div class="info_box_pic">
						<div class="info_box_pic_in">
							<div class="infoboxpicimg">
								<img alt="image" src="img/KakaoTalk_20170614_102810869.png">

							</div>

						</div>

						<div class="info_box_content">
							<div class="icon_box">
								<ul>
									<li>
										<div class="icon_div">
											<span><i class="fa fa-wheelchair"
												style="font-size: 30px;"></i></span>
										</div>
									</li>
									<li>
										<div class="icon_div">
											<i class="fa fa-male" style="font-size: 30px; color: blue;"></i>
										</div>
									</li>
									<li>
										<div class="icon_div">
											<i class="fa fa-female" style="font-size: 30px; color: red;"></i>
										</div>
									</li>
									<li>
										<div class="icon_div">
											<i class="fa fa-child"
												style="font-size: 26px; color: yellow;"></i>
										</div>
									</li>
									<li>
										<div class="icon_div">
											<img src='img/남녀공용.png' alt="5">
										</div>
									</li>
								</ul>






							</div>

							<div class="info_text">
								<div class="info_text_content">
									<ul>
										<li><span>주소 :</span> <span>서울시 성동구 1번지 </span></li>

										<li><span>상세위치 :</span> <span>2층,4층</span></li>

										<li><span>이용시간 :</span> <span>09:00 ~ 20:00</span></li>

									</ul>
								</div>
							</div>

						</div>



					</div>


					<div class="foot">
						<div class="foot_icon">
							<div class="icon_div">
								<i class="fa fa-comments" style="font-size: 30px; color: white;"></i>
							</div>
						</div>
						<div class="review_icon">12345</div>

					</div>







				</div>

			</div>


		</div>

		<div class="sidebar">



			<div class="sclassebarcontent">
				<div class="sclassebartopcontent">

					<div class="sclassebarlogo">
						<a href="https://www.pokemongomap.info"
							class="tooltip tooltipstered" target="_blank"> <img
							class="logo_title" alt="로고이미지" src="img/logo.png">
						</a>
					</div>
					<div class="sclassebarsub">
						Currently <span class="subval">4,503,299</span> PokeStop &amp; Gym
						Locations
					</div>
					<div class="sclassebardivclasse"></div>

					<div class="logindivclasse"></div>

					<a href="#" target="_self">
						<div class="sclassebarlogin">
							<i class="fa fa-sign-in"></i> <span>Social Account Login</span>
						</div>

					</a>
				</div>



				<div class="mapad" style="">
					<ul>
						<li>1</li>
						<li>2</li>
						<li>3</li>
					</ul>
				</div>

				<div class="mapfooter">
					<div class="mapfooterhead">
						© 2017 <a href="http://www.pokegomap.info" title="PokeGoMap.info"
							target="_blank">PokeGoMap.Info</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a
							href="http://www.pokemongomap.info/privacy.html" target="_blank"
							class="footerprivbtn">Privacy</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a
							href="#" target="_self" class="footerfaqbtn">FAQ</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a
							class="footcy" href="http://www.cyansub.com" target="_blank">CyanSub.com</a>
					</div>
					<div class="mapfootersub">Unofficial website not affiliated
						with Niantic or Nintendo</div>
				</div>
			</div>

			<div class="sclassebarimage"></div>
		</div>

		<div id="clickLatlng"></div>

	</div>



</body>

<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level : 3 // 지도의 확대 레벨//레벨별 위도상의 변화 폭( 1cm단위 측정해야함.)
		};
	var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	//HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
	if (navigator.geolocation) {
		// GeoLocation을 이용해서 접속 위치를 얻어옵니다
		navigator.geolocation.getCurrentPosition(function(position) {
			var lat = position.coords.latitude, // 위도
				lon = position.coords.longitude; // 경도
			var locPosition = new daum.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
				message = '<div style="">여기에 계신가요?!</div>'; // 인포윈도우에 표시될 내용입니다
			// 마커와 인포윈도우를 표시합니다
			displayMarker(locPosition, message);
		});
	} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
		var locPosition = new daum.maps.LatLng(33.450701, 126.570667),
			message = 'geolocation을 사용할수 없어요..'
		displayMarker(locPosition, message);
	}
	function displayMarker(locPosition, message) {
		// 마커를 생성합니다
		var marker = new daum.maps.Marker({
			map : map,
			position : locPosition
		});
		var iwContent = message, // 인포윈도우에 표시할 내용
			iwRemoveable = true;
		// 인포윈도우를 생성합니다
		var infowindow = new daum.maps.InfoWindow({
			content : iwContent,
			removable : iwRemoveable
		});
		// 인포윈도우를 마커위에 표시합니다 
		infowindow.open(map, marker);
		// 지도 중심좌표를 접속위치로 변경합니다
		map.setCenter(locPosition);
	}
	var positions = [
		{
			title : '왕십리황소곱창화장실',
			latlng : new daum.maps.LatLng(37.566056407918865, 127.03026118764767),
			no : '1'
		},
		{
			title : '도로화장실',
			latlng : new daum.maps.LatLng(37.56487608575024, 127.03032862276235),
			no : '2'
		},
		{
			title : '우체국화장실',
			latlng : new daum.maps.LatLng(37.56643452460645, 127.03141587835236),
			no : '3'
		},
		{
			title : '115동화장실',
			latlng : new daum.maps.LatLng(37.56723708870881, 127.0287562224516),
			no : '4'
		}
	];
	//커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
	//마커 이미지의 이미지 주소입니다
	var markers = Array();
	var imageSrc = "img/Household-Toilet-Pan-icon.png";
	imageSize = new daum.maps.Size(64, 69), // 마커이미지의 크기입니다
	imageOption = {
		offset : new daum.maps.Point(27, 69)
	}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
	var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize, imageOption);
	for (var i = 0, len = positions.length; i < len; i++) {
		// 마커를 생성하고 지도위에 표시합니다
		addMarker(positions[i]);
	}
	//마커를 생성하고 지도 위에 표시하고, 마커에 mouseover, mouseout, click 이벤트를 등록하는 함수입니다
	function addMarker(position) {
		var imageSrc = "img/화장실.png";
		imageSize = new daum.maps.Size(44, 49), // 마커이미지의 크기입니다
		imageOption = {
			offset : new daum.maps.Point(27, 69)
		}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
		var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize, imageOption);
		var marker = new daum.maps.Marker({
			map : map,
			position : position.latlng,
			title : position.title,
			clickable : true,
			image : markerImage
		});
		daum.maps.event.addListener(marker, 'click', function() {
			var modal = $("#myModal");
			var modalImg = $(".modal-content");
			var mcdiv = $("#mcdiv");
			modal.show();
			$(window).resize(function() {
				if ($(window).width() < 960) {
					//너비가 960 미만일 경우
					$(".map_content").css("width", "100%");
					
					$(".modal").css("width", "100%");
					$(".sidebar").hide();
				
				} else {
					//너비가 960 보다 클 경우
					$(".map_content").css("width", "70%");
					$(".modal").css("width", "70%");
					$(".sidebar").show();
				}
			});
			modalImg.on("click", function(e) {
				e.stopPropagation();
				return null;
				
			});
			$("#close").on("click", function(e) {
				modal.hide();
			});
			console.log(position.no);
		});
	}
</script>

<script>
	var windowWidth = $(window).width();
	$(window).resize(function() {
		if ($(window).width() < 960) {
			//너비가 960 미만일 경우
			$(".map_content").css("width", "100%");
			$(".modal").css("width", "100%");
			$(".sidebar").hide();
		} else {
			//너비가 960 보다 클 경우
			$(".map_content").css("width", "70%");
			$(".modal").css("width", "70%");
			$(".sidebar").show();
		}
	});
	function opensidebar() {
	}
</script>

</html>