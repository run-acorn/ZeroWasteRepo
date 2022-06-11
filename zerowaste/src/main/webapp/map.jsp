<%@page import="com.model.StoreVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Map</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
   rel="stylesheet">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="images/icons/favicon.png" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="fonts/themify/themify-icons.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/slick/slick.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="vendor/lightbox2/css/lightbox.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<%
List<StoreVO> list = (List<StoreVO>)request.getAttribute("list");
%>
<body class="animsition">

   <!-- Header -->
   <header>
      <!-- Header desktop -->
      <div class="wrap-menu-header gradient1 trans-0-4">
         <div class="container h-full">
            <div class="wrap_header trans-0-3">
               <!-- Logo -->
               <div class="logo">
                  <a href="GoMain"> <img src="images/icons/logo.png"
                     alt="IMG-LOGO" data-logofixed="images/icons/logo2.png">
                  </a>
               </div>

               <!-- Menu -->
               <div class="wrap_menu p-l-45 p-l-0-xl">
                  <nav class="menu">
                     <ul class="main_menu">
                        <li><a href="GoMain">Home</a></li>

                        <li><a href="GoMap">Map</a></li>

                        <li><a href="GoTree">My Tree</a></li>

                        <li><a href="GoBoard">Review & Point</a></li>

                        <li><a href="GoRegi">Registration</a></li>
                     </ul>
                  </nav>
               </div>

               <!-- Social -->
               <div class="social flex-w flex-l-m p-r-20">
                  <button class="btn-show-sidebar m-l-33 trans-0-4"></button>
               </div>
            </div>
         </div>
      </div>
   </header>

   <!-- Sidebar -->
   <aside class="sidebar trans-0-4">
      <!-- Button Hide sidebar -->
      <button class="btn-hide-sidebar ti-close color0-hov trans-0-4"></button>

      <!-- - -->
      <ul class="menu-sidebar p-t-95 p-b-70">
         <li class="t-center m-b-13"><a href="GoMain" class="txt19">Home</a>
         </li>

         <li class="t-center m-b-13"><a href="GoMap" class="txt19">Map</a>
         </li>

         <li class="t-center m-b-13"><a href="GoTree" class="txt19">My
               Tree</a></li>

         <li class="t-center m-b-13"><a href="GoBoard" class="txt19">Review
               & Point</a></li>

         <li class="t-center m-b-33"><a href="GoRegi" class="txt19">Registration</a>
         </li>

         <li class="t-center">
            <!-- Button3 --> <a href="GoLogout"
            class="btn3 flex-c-m size13 txt11 trans-0-4 m-l-r-auto"> Sign
               Out </a>
         </li>
      </ul>
   </aside>

   <!-- Title Page -->
   <section class="bg-title-page flex-c-m p-t-160 p-b-80 p-l-15 p-r-15"
      style="background-image: url(images/bg-title-page-01.jpg);">
      <h2 class="tit6 t-center">Zero Waste 매장 안내</h2>
   </section>

   <!-- Main menu -->
   <section class="section-mainmenu p-t-70 p-b-70 p-l-70 p-r-70 bg1-pattern">
   
   	 <!-- 카테고리 버튼 -->
   	
   	<ul class="main_menu">
   		<li><input type="button" id="allMarkers" value="전체" class="btn3 flex-c-m size13 txt11 trans-0-4" display="inline"></li>
   		<li><input type="button" id="korean" value="한식" class="btn3 flex-c-m size13 txt11 trans-0-4" display="inline"></li>
		<li><input type="button" id="western" value="양식" class="btn3 flex-c-m size13 txt11 trans-0-4" display="inline"></li>
		<li><input type="button" id="japanese" value="일식" class="btn3 flex-c-m size13 txt11 trans-0-4" display="inline"></li>
		<li><input type="button" id="school" value="분식" class="btn3 flex-c-m size13 txt11 trans-0-4" display="inline"></li>
		<li><input type="button" id="midnight" value="야식" class="btn3 flex-c-m size13 txt11 trans-0-4" display="inline"></li>
		<li><input type="button" id="cafe" value="카페" class="btn3 flex-c-m size13 txt11 trans-0-4" display="inline"></li>
 	</ul>
 	
      <!-- 지도 들어갈 공간 -->
      <div id="map" style="width: 1780px; height: 1000px;"></div>
      <script type="text/javascript"
         src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b9d52b733842f8156d5455f83b6f4277&libraries=services"></script>

      <!-- 지도영역 -->

      <script>
       
      var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
        mapOption = {
           center : new kakao.maps.LatLng(35.14919736053822,
                 126.92650745620224), // 지도의 중심좌표
           level : 3
        // 지도의 확대 레벨
        };

        var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
        
        // DB에 있는 데이터 전부 가져오기
        // 여기서는 매장이름, 위도, 경도만 필요함 
        // **전체 & 음식 종류별로 가져오기**
        // 마커를 표시할 위치와 내용을 가지고 있을 객체 배열
        
        //한식 배열
        var korean = [];   //빈 배열
        
        //양식 배열
        var western = [];
        
        //일식
        var japanese = [];
        
        //분식
        var school = [];
        ////var sc_info ={content:/*매장명*/,latlng: new kakao.maps.LatLng(/*위도*/, /*경도*/) };
        
        //야식
        var midnight=[];
        //var mi_info ={content:/*매장명*/,latlng: new kakao.maps.LatLng(/*위도*/, /*경도*/) };
        
        //카페
        var cafe=[];
        //var ca_info ={content:/*매장명*/,latlng: new kakao.maps.LatLng(/*위도*/, /*경도*/) };
         
        var allMarkers = [];
        
        <%int i=0;%>
        
        /* ------- 전체 식당 가져오는 함수 ------- */

        let all_f = function(){
	        <%for(i = 0; i < list.size(); i++){%>
	    	
 				var all = {content:'<div><%=list.get(i).getStoreName()%><div>',         
 				latlng: new kakao.maps.LatLng(<%=list.get(i).getLatutude()%>, <%=list.get(i).getLongitude()%>) };   
 	                        
 				allMarkers.push(all);
 	   		<%}%>
 	        
	 		map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	 	    for (var i = 0; i < allMarkers.length; i ++) {
	 			var marker = new kakao.maps.Marker({
	 				/* map: map, // 마커를 표시할 지도 */
	 				position: allMarkers[i].latlng // 마커의 위치
	 			});
	 			marker.setMap(map);
	
	 			var infowindow = new kakao.maps.InfoWindow({
	 				content: allMarkers[i].content // 인포윈도우에 표시할 내용
	 			});
	 	
	 			kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
	 			kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
	 	    }
        }
        
        /* ------- 한식 식당 가져오는 함수 ------- */
        let korean_f = function(){


    		<%for(i = 0; i < list.size(); i++){%>
            	<%if (list.get(i).getFoodType().equals("한식")){%> 
		            //ko_info라는 객체 생성(매장이름, 위도, 경도) : 한식 데이터
		            var ko_info = {content:'<div><%=list.get(i).getStoreName()%><div>',         
		            latlng: new kakao.maps.LatLng(<%=list.get(i).getLatutude()%>, <%=list.get(i).getLongitude()%>) };   
		                           
		            korean.push(ko_info);            //배열변수.push(객체변수); 배열에 객체 추가
		
			     <%}%>
		    <%}%>
		            
		    map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		    for (var i = 0; i < korean.length; i ++) {
		        // 마커를 생성합니다
		        var marker = new kakao.maps.Marker({
		              /* map: map, // 마커를 표시할 지도 */
		              position: korean[i].latlng // 마커의 위치
		        });
		        marker.setMap(map);
		        // 마커에 표시할 인포윈도우를 생성합니다 
		        var infowindow = new kakao.maps.InfoWindow({
		              content: korean[i].content // 인포윈도우에 표시할 내용
		        });
		
		        // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
		        // 이벤트 리스너로는 클로저를 만들어 등록합니다 
		        // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
		        kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
		        kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
		    }

        }
        
        /* ------- 양식 식당 가져오는 함수 ------- */
        let western_f = function(){
    		<%for(i = 0; i < list.size(); i++){%>
            	<%if(list.get(i).getFoodType().equals("양식")){%>
		            //we_info 객체 : 양식 데이터
		            var we_info = {content:'<div><%=list.get(i).getStoreName()%><div>',         
		            latlng: new kakao.maps.LatLng(<%=list.get(i).getLatutude()%>, <%=list.get(i).getLongitude()%>) };   
		                        
		            western.push(we_info);
			     <%}%>
			<%}%>		
		            
		     map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		     for (var i = 0; i < western.length; i ++) {
		    	 	 var marker = new kakao.maps.Marker({
/* 		             map: map, // 마커를 표시할 지도 */
		             position: western[i].latlng
		         });
		         marker.setMap(map);

		         var infowindow = new kakao.maps.InfoWindow({
		              content: western[i].content 
		         });
		
		         kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
		         kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
		     }
        }
        
        /* ------- 일식 식당 가져오는 함수 ------- */
        let japanese_f = function(){

    		<%for(i = 0; i < list.size(); i++){%>
            	<%if(list.get(i).getFoodType().equals("일식")){%>
		            //ja_info 객체 : 일식 데이터
		            var ja_info = {content:'<div><%=list.get(i).getStoreName()%><div>',         
		            latlng: new kakao.maps.LatLng(<%=list.get(i).getLatutude()%>, <%=list.get(i).getLongitude()%>) };   
		                        
		            japanese.push(ja_info);
			    <%}%>
			<%}%>
			
			map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		    for (var i = 0; i < japanese.length; i ++) {
		    		  var marker = new kakao.maps.Marker({
		         /*      map: map, // 마커를 표시할 지도 */
		              position: japanese[i].latlng // 마커의 위치
		         });
		
		         marker.setMap(map);
		                
		         var infowindow = new kakao.maps.InfoWindow({
		              content: japanese[i].content // 인포윈도우에 표시할 내용
		         });
		
		         kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
		         kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
		    }
        }
        
        
        /* ------- 분식 식당 가져오는 함수 ------- */
        let school_f = function(){

    		<%for(i = 0; i < list.size(); i++){%>
            	<%if(list.get(i).getFoodType().equals("분식")){%>
		            //sc_info 객체 : 분식 데이터
		            var sc_info = {content:'<div><%=list.get(i).getStoreName()%><div>',         
		            latlng: new kakao.maps.LatLng(<%=list.get(i).getLatutude()%>, <%=list.get(i).getLongitude()%>) };   
		                        
		            school.push(sc_info);
			    <%}%>
			<%}%>
			map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		    for (var i = 0; i < school.length; i ++) {
		    	var marker = new kakao.maps.Marker({
		            /* map: map, // 마커를 표시할 지도 */
		            position: school[i].latlng // 마커의 위치
		         });
		                
		         marker.setMap(map);
		
		         var infowindow = new kakao.maps.InfoWindow({
		                    content: school[i].content
		         });
		
		         kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
		         kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
		     }

        }
        
        /* ------- 야식 식당 가져오는 함수 ------- */
        let midnight_f = function(){

    		<%for(i = 0; i < list.size(); i++){%>
            	<%if(list.get(i).getFoodType().equals("야식")){%>
		            //mi_info 객체 : 야식 데이터
		            var mi_info = {content:'<div><%=list.get(i).getStoreName()%><div>',         
		            latlng: new kakao.maps.LatLng(<%=list.get(i).getLatutude()%>, <%=list.get(i).getLongitude()%>) };   
		                        
		            midnight.push(mi_info);
			    <%}%>
			<%}%>
			map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		    for (var i = 0; i < midnight.length; i ++) {
		    		var marker = new kakao.maps.Marker({
		           /* map: map, // 마커를 표시할 지도 */
		           position: midnight[i].latlng // 마커의 위치
		        });
		
		        marker.setMap(map);

		        var infowindow = new kakao.maps.InfoWindow({
		           content: midnight[i].content // 인포윈도우에 표시할 내용
		        });
		
		        kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
		        kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
		     }

        }
        
        /* ------- 카페 가져오는 함수 ------- */
        let cafe_f = function(){

    		<%for(i = 0; i < list.size(); i++){%>
            	<%if(list.get(i).getFoodType().equals("카페")){%>
		            //ca_info 객체 : 카페 데이터
		            var ca_info = {content:'<div><%=list.get(i).getStoreName()%><div>',         
		            latlng: new kakao.maps.LatLng(<%=list.get(i).getLatutude()%>, <%=list.get(i).getLongitude()%>) };   
		                        
		            cafe.push(ca_info);
		            
			     <%}%>
			<%}%>
			map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		    for (var i = 0; i < cafe.length; i ++) {
		    		var marker = new kakao.maps.Marker({
		        	/* map: map, // 마커를 표시할 지도 */
		        	position: cafe[i].latlng
		        });
		        marker.setMap(map);

		        var infowindow = new kakao.maps.InfoWindow({
		            content: cafe[i].content
		        });
		
		        kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
		        kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
		    }
        }
        
        /* 접속했을 때 모든 매장 마커 찍어주는 구간 */
        all_f();
            
         /* 카테고리별로 매장위치 확인할 수 있는 구간 */
         // id값을 각각의 input에 준다
         // 특정 id를 클릭하면 한식 매장 나오게 한다
        let all = document.getElementById('allMarkers');
 		let kor = document.getElementById('korean');
 		let wes = document.getElementById('western');
 		let jap = document.getElementById('japanese');
 		let sch = document.getElementById('school');
 		let mid = document.getElementById('midnight');
 		let caf = document.getElementById('cafe');

 		all.addEventListener('click', function(){
 			all_f();
 		});
 		
        kor.addEventListener('click', function(){
        	korean_f();
        });

        wes.addEventListener('click', function(){
        	western_f();
        });
        
          jap.addEventListener('click', function(){
        	japanese_f();
        });
        
        sch.addEventListener('click', function(){
        	school_f();
        });
        
        mid.addEventListener('click', function(){
        	midnight_f();
        });
        
        caf.addEventListener('click', function(){
        	cafe_f();
        });
        
        function makeOverListener(map, marker, infowindow) {
            return function() {
                infowindow.open(map, marker);
            };
        }

        // 인포윈도우를 닫는 클로저를 만드는 함수입니다 
        function makeOutListener(infowindow) {
            return function() {
                infowindow.close();
            };
        }

      </script>

    </section>
            
   <!-- Back to top -->
   <div class="btn-back-to-top bg0-hov" id="myBtn">
      <span class="symbol-btn-back-to-top"> <i
         class="fa fa-angle-double-up" aria-hidden="true"></i>
      </span>
   </div>

   <!--===============================================================================================-->
   <script type="text/javascript" src="vendor/jquery/jquery-3.2.1.min.js"></script>
      <!--===============================================================================================-->
      <script type="text/javascript"
         src="vendor/animsition/js/animsition.min.js"></script>
      <!--===============================================================================================-->
      <script type="text/javascript" src="vendor/bootstrap/js/popper.js"></script>
      <script type="text/javascript"
         src="vendor/bootstrap/js/bootstrap.min.js"></script>
      <!--===============================================================================================-->
      <script type="text/javascript" src="vendor/select2/select2.min.js"></script>
      <!--===============================================================================================-->
      <script type="text/javascript"
         src="vendor/daterangepicker/moment.min.js"></script>
      <script type="text/javascript"
         src="vendor/daterangepicker/daterangepicker.js"></script>
      <!--===============================================================================================-->
      <script type="text/javascript" src="vendor/slick/slick.min.js"></script>
      <script type="text/javascript" src="js/slick-custom.js"></script>
      <!--===============================================================================================-->
      <script type="text/javascript" src="vendor/parallax100/parallax100.js"></script>
      <script type="text/javascript">
      $('.parallax100').parallax100();
      </script>
      <!--===============================================================================================-->
      <script type="text/javascript"
         src="vendor/countdowntime/countdowntime.js"></script>
      <!--===============================================================================================-->
      <script type="text/javascript"
         src="vendor/lightbox2/js/lightbox.min.js"></script>
      <!--===============================================================================================-->
      <script src="js/main.js"></script>
</body>
</html>