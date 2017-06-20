<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
html, body {
	height: 100%;
	background-color: yellow;
}

.modal {
	display: none;
	position: fixed;
	z-index: 1;
	top: 58px;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgb(0, 0, 0);
	background-color: rgba(0, 0, 0, 0);
}

.modal-content {
	margin: auto;
	width: 100%;
	height: 100%;
	background-repeat: no-repeat;
}

.modal_head {
	background: white;
	display: flex;
	flex-direction: row;
	height: 50px;
}

.modal_head li {
	list-style: none;
	float: left;
	padding: 10px;
}

.modal_head_mid {
	flex-basis: 80%;
	background: yellow;
	text-align: center;
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

.fa-times {
	color: rgb(57, 135, 140);
}

.info_box_pic {
	width: 100%;
	height: 220px;
	background: antiquewhite;
}

.info_box_pic_in {
	padding-top: 10px;
	height: 195px;
}

#infoboxpicimg {
	border-radius: 75%;
	border: solid 3px rgb(57, 135, 140);
	background: white;
	background-size: cover;
	background-repeat: no-repeat;
	width: 195px;
	height: 100%;
	background-position: 50% 50%;
	margin: auto;
}

.infoboxpicimg img {
	width: 100%;
	height: 100%;
	background-repeat: no-repeat;
	border-radius: 50%;
}

.icon_list {
	display: inline-block;
	width: 100%;
	height: 50px;
	background: tomato;
	display: inline-block;
}

.icon_box {
	margin: auto;
	width: 335px;
	height: 100%;
	background: aquamarine;
}

.icon_list ul {
	display: inline-block;
	-webkit-margin-before: -1px;
	-webkit-margin-after: 0px;
	-webkit-margin-start: 0px;
	-webkit-margin-end: 0px;
	-webkit-padding-start: 22px;
}

.icon_list li {
	list-style: none;
	float: left;
	font-size: 30px;
	padding-left: 15px;
	padding-top: 4px;
}

.icon_list li:first-child {
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

.fa-male, .fa-female, .fa-child {
	padding-left: 0px;
	padding-top: 4px;
}

.icon_div img {
	width: 40px;
	height: 35px;
}

.map_wrap {
	position: relative;
	overflow: hidden;
	width: 100%;
	height: 100%;
}

.radius_border {
	border: 1px solid #919191;
	border-radius: 5px;
}

.custom_typecontrol {
	position: absolute;
	top: 10px;
	right: 10px;
	overflow: hidden;
	width: 130px;
	height: 30px;
	margin: 0;
	padding: 0;
	z-index: 1;
	font-size: 12px;
	font-family: 'Malgun Gothic', '맑은 고딕', sans-serif;
}

.custom_typecontrol span {
	display: block;
	width: 65px;
	height: 30px;
	float: left;
	text-align: center;
	line-height: 30px;
	cursor: pointer;
}

.custom_typecontrol .btn {
	background: #fff;
	background: linear-gradient(#fff, #e6e6e6);
}

.custom_typecontrol .btn:hover {
	background: #f5f5f5;
	background: linear-gradient(#f5f5f5, #e3e3e3);
}

.custom_typecontrol .btn:active {
	background: #e6e6e6;
	background: linear-gradient(#e6e6e6, #fff);
}

.custom_typecontrol .selected_btn {
	color: #fff;
	background: #425470;
	background: linear-gradient(#425470, #5b6d8a);
}

.custom_typecontrol .selected_btn:hover {
	color: #fff;
}

.custom_zoomcontrol {
	position: absolute;
	top: 50px;
	right: 10px;
	width: 36px;
	height: 80px;
	overflow: hidden;
	z-index: 1;
	background-color: #f5f5f5;
}

.custom_zoomcontrol span {
	display: block;
	width: 36px;
	height: 40px;
	text-align: center;
	cursor: pointer;
}

.custom_zoomcontrol span img {
	width: 15px;
	height: 15px;
	padding: 12px 0;
	border: none;
}

.custom_zoomcontrol span:first-child {
	border-bottom: 1px solid #bfbfbf;
}
</style>

</head>
<div class="map_wrap">
	<div id="map" style="width: 100%; height: 100%;"></div>
	<!-- 지도타입 컨트롤 div 입니다 -->
	<div class="custom_typecontrol radius_border">
		<span id="btnRoadmap" class="selected_btn"
			onclick="setMapType('roadmap')">지도</span> <span id="btnSkyview"
			class="btn" onclick="setMapType('skyview')">스카이뷰</span>
	</div>
	<!-- 지도 확대, 축소 컨트롤 div 입니다 -->
	<div class="custom_zoomcontrol radius_border">
		<span onclick="zoomIn()"><img
			src="http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_plus.png"
			alt="확대"></span> <span onclick="zoomOut()"><img
			src="http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_minus.png"
			alt="축소"></span>
	</div>
</div>
<p>
	<em>지도를 클릭해주세요!</em>
</p>
<div id="clickLatlng"></div>
<div id="myModal" class="modal">


	<div class='modal-content'>

		<div class="modal_head">



			<div class="modal_head_mid">
				<p>
					<span>title</span>
				</p>
			</div>

			<div class="modal_head_right" id="close">


				<i class="fa fa-times"></i>


			</div>


		</div>



		<div class="info_box_pic">
			<div class="info_box_pic_in">
				<div id="infoboxpicimg"></div>
			</div>
		</div>

		<div class="icon_list">
			<div class="icon_box">
				<ul>
					<li>
						<div class="icon_div">
							<span><i class="fa fa-wheelchair" style="font-size: 30px;"></i></span>
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
							<i class="fa fa-child" style="font-size: 26px; color: yellow;"></i>
						</div>
					</li>
					<li>
						<div class="icon_div">
							<img src='img/남녀공용.png' alt="5">
						</div>
					</li>
				</ul>
			</div>
		</div>


	</div>

</div>


<script type="text/javascript"
	src="http://apis.daum.net/maps/maps3.js?apikey=9e463126052fa6039c8a49cab4a65f43&libraries=clusterer,services"></script>

<script type="text/javascript">

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3, // 지도의 확대 레벨//레벨별 위도상의 변화 폭( 1cm단위 측정해야함.)
        maxZoom: 7
    };


var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

var clusterer = new daum.maps.MarkerClusterer({
    map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체 
    averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정 
    minLevel: 4 // 클러스터 할 최소 지도 레벨 
});
function 화장실상세(no){
	console.log(no);
	$.ajax(        
			   {
				type: "POST",
				url: "화장실정보받다",
				data: 	{'no':no},
				dataType:'json',
				success: function(data) { 
					var geocoder = new daum.maps.services.Geocoder();

					var coord = new daum.maps.LatLng(data.longitude,data.latitude);
					console.log(coord);
					var callback = function(status, result) {
					    if (status === daum.maps.services.Status.OK) {
					    $(".modal_head_mid").find("span").text(result[0].jibunAddress.name);	
					    }   
					};
					
					geocoder.coord2detailaddr(coord, callback);
					
					}

					

			    });     
			   }

function 화장실위치정보(slat,slon,nlat,nlon){	
	$.ajax(        
			   {
				type: "POST",
				url: "화장실표시",
				data: 	{"Nlatitude":nlat,
						"Nlongitude":nlon,
						"Slatitude":slat,
						"Slongitude":slon			
				},
			
				dataType:'json',
				success: function(data) { 
					
				
					var positions = [
						
					  
					    ];
					for(var e =0,len =data.length;e<len;e++){
						var position ={title: data[e].title, 
						        latlng: new daum.maps.LatLng( data[e].longitude,data[e].latitude) ,
						      	no: data[e].no}
							positions.push(position);
							
					};
					console.log(positions.length);
					    for (var i = 0, len = positions.length; i < len; i++) {
					    	  
					        
					       
					        addMarker(positions[i]);
					        

					    }
					  

				     
				       
					
			    }     
			   }
			);
}  
var marker = new daum.maps.Marker({});
function addMarker(position) {
	var imageSrc = "img/위치표시로고.png"; 
	imageSize = new daum.maps.Size(64, 69), // 마커이미지의 크기입니다
	imageOption = {offset: new daum.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
	var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize, imageOption);

     marker = new daum.maps.Marker({
        map: map,
        position: position.latlng,
        title: position.title,
        clickable: true,
        image: markerImage
        
    });
    marker.setMap(map);
 
    clusterer.addMarker(marker);
    daum.maps.event.addListener(marker, 'click', function() {
    	 
    	console.log(position.no);
    	화장실상세(position.no);
    	toggleRoadview(position.latlng);
    	var modal = $("#myModal");
   	   	var modalcontent =$("#modal-content");
   	   	var mcdiv=$("#mcdiv");
   			  modal.show();
   			 
   			
   			
   		modalcontent.on("click",function(e){
         e.stopPropagation();
          return null;
       });
      modal.on("click",function(e){
       
           modal.hide();
       });
  
  
    });
}


var rvContainer = document.getElementById('infoboxpicimg'); //로드뷰를 표시할 div
var rv = new daum.maps.Roadview(rvContainer); //로드뷰 객체
var rvClient = new daum.maps.RoadviewClient();


//HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
if (navigator.geolocation) {
 
 // GeoLocation을 이용해서 접속 위치를 얻어옵니다
 navigator.geolocation.getCurrentPosition(function(position) {
     
     var lat = position.coords.latitude, // 위도
         lon = position.coords.longitude; // 경도
     
     var locPosition = new daum.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
         message = '<div style="">여기에 계신가요?!</div>'; // 인포윈도우에 표시될 내용입니다
         var bounds = map.getBounds();
         var swLatLng = bounds.getSouthWest(); 
         var neLatLng = bounds.getNorthEast(); 
       
         var nlat=neLatLng.getLat();
         var nlnt=neLatLng.getLng();
         var slat=swLatLng.getLat();
         var slnt=swLatLng.getLng();
     // 마커와 인포윈도우를 표시합니다
     displayMarker(locPosition, message);
  
     
     
     화장실위치정보(slat,slnt,nlat,nlnt);
   });
 
} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
 
 var locPosition = new daum.maps.LatLng(33.450701, 126.570667),    
     message = 'geolocation을 사용할수 없어요..'
     
 displayMarker(locPosition, message);
}
function displayMarker(locPosition, message) {

    // 마커를 생성합니다
    var marker = new daum.maps.Marker({  	
        map: map, 
        position: locPosition
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

function setMapType(maptype) { 
    var roadmapControl = document.getElementById('btnRoadmap');
    var skyviewControl = document.getElementById('btnSkyview'); 
    if (maptype === 'roadmap') {
        map.setMapTypeId(daum.maps.MapTypeId.ROADMAP);    
        roadmapControl.className = 'selected_btn';
        skyviewControl.className = 'btn';
    } else {
        map.setMapTypeId(daum.maps.MapTypeId.HYBRID);    
        skyviewControl.className = 'selected_btn';
        roadmapControl.className = 'btn';
    }
}


// 지도 확대, 축소 컨트롤에서 확대 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
function zoomIn() {
    map.setLevel(map.getLevel() - 1);
  
    
}

 
 

daum.maps.event.addListener(map, 'idle', function() {

	
	  var bounds = map.getBounds();
	    var swLatLng = bounds.getSouthWest(); 
	    var neLatLng = bounds.getNorthEast(); 

	    var nlat=neLatLng.getLat();
	    var nlnt=neLatLng.getLng();
	    var slat=swLatLng.getLat();
	    var slnt=swLatLng.getLng();
	    
	    clusterer.clear();
	    marker.setMap(null);
	    var latlng = map.getCenter(); 
	    console.log(latlng.getLat());
	    console.log(  latlng.getLng());
	    if(map.getLevel()>7){
	    	nlat=latlng.getLat()+0.01836484613446;
	    	nlnt=latlng.getLng()+0.0507716203623;
	    	slat=latlng.getLat()-0.01838673134203;
	    	slnt= latlng.getLng()-0.050746683922;
	    }
	    
	    
	    화장실위치정보(slat,slnt,nlat,nlnt);
});

function zoomOut() {
    map.setLevel(map.getLevel() + 1);
   

}
function toggleRoadview(position){

    //전달받은 좌표(position)에 가까운 로드뷰의 panoId를 추출하여 로드뷰를 띄웁니다
    rvClient.getNearestPanoId(position, 50, function(panoId) {
     
            
        
           
            rv.setPanoId(panoId, position); //panoId를 통한 로드뷰 실행
            rv.relayout();
        
    });
}


</script>
</html>
