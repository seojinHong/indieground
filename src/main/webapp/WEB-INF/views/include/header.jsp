<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>인디그라운드</title>
    <link rel="stylesheet" href="resources/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Architects+Daughter">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:400,600,800">
    <link rel="stylesheet" href="resources/assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="resources/assets/css/--mp---Multiple-items-slider-responsive.css">
    <link rel="stylesheet" href="resources/assets/css/Navigation-with-Search.css">
    <link rel="stylesheet" href="resources/assets/css/styles.css">

    <link rel="stylesheet" type="text/css" href="resources/slick/slick.css">
    <link rel="stylesheet" type="text/css" href="resources/slick/slick-theme.css">

    <style type="text/css">
    html, body {
      margin: 0;
      padding: 0;
    }

    p{margin-left: 35px;
    font-weight: bold;
    font-size: 27px;
    }

    * {
      box-sizing: border-box;
    }

    .slider {
        width: 50%;
        margin: 100px auto;
    }

    .slick-slide {
      margin: 0px 20px;
    }

    .slick-slide img {
      width: 100%;
    }

    .slick-prev:before,
    .slick-next:before {
      color: black;
    }


    .slick-slide {
      transition: all ease-in-out .3s;
      opacity: .2;
    }
    
    .slick-active {
      opacity: 1;
    }

    .slick-current {
      opacity: 1;
    }
    


    
    

   .carousel1{
   margin: 35px;
   }

   .carousel2{
   margin: 35px;
   }


   .modal_test{
        display: none;
        width: 500px;
        height: 500px;
        position: absolute;
        top:50%;
        left: 50%;
        margin: -250px 0 0 -250px;
        background:#eee;
        z-index: 2;
    }

    .black_bg{
        display: none;
        position: absolute;
        content: "";
        width: 100%;
        height: 100%;
        background-color:rgba(0, 0,0, 0.5);
        top:0;
        left: 0;
        z-index: 1;
    }
    
    
    
    .container {
  position: relative;
  width: 50%;
}

.image {
  opacity: 1;
  display: block;
  width: 100%;
  height: auto;
  transition: .5s ease;
  backface-visibility: hidden;
}

.middle {
  transition: .5s ease;
  opacity: 0;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  text-align: center;
}

.container:hover .image {
  opacity: 0.3;
}

.container:hover .middle {
  opacity: 1;
}

.text {
  background-color: #04AA6D;
  color: white;
  font-size: 16px;
  padding: 16px 32px;
}


   .modal_close{
        width: 26px;
        height: 26px;
        position: absolute;
        top: -30px;
        right: 0;
    }
    .modal_close> a{
        display: block;
        width: 100%;
        height: 100%;
        background:url(https://img.icons8.com/metro/26/000000/close-window.png);
        text-indent: -9999px;
    }



	
	label {
            float: left;
        }

   </style>

<script src="https://code.jquery.com/jquery-2.2.1.js"></script>

</head>

<body class="mainbody" style="background: url(&quot;resources/assets/img/film-background-1334067869u9d.jpg&quot;);background-size: cover;">
    <div class="container">
        <nav class="navbar navbar-light navbar-expand-md headerbar" style="background: rgba(0,0,0,0);">
            <div class="container-fluid"><a class="navbar-brand logo" href="#" style="color: rgba(0,0,0,0.7);"><strong>인디그라운드</strong></a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navcol-1">
                    <ul class="navbar-nav ml-auto" style="border-style: none;">
                    
                    	<!-- HomeController.java의 home()에서 넘겨준 mainPage 값의 유무를 검사하여, mainPage 값이 없으면 출력한다. -->
                    	<c:if test="${mainPage == null}">
                        <li class="nav-item"><a class="nav-link" href="#"><i class="fa fa-search" style="width: 19.8594px;"></i><input type="search" style="margin: 5px;"></a></li>
                        <li class="nav-item"><a class="nav-link" href="#"><button class="btn btn-info" type="button" style="color: rgba(255,255,255,0.94);border-color: rgba(255,255,255,0.94);background: rgba(23,162,184,0.6);">검색</button></a></li>
                        </c:if>
                        <li class="nav-item"><a class="nav-link" data-toggle="modal" data-target="#log-in"><button class="btn btn-primary" type="button" style="background: rgba(0,123,255,0.6);color: rgba(255,255,255,0.9);border-color: rgba(255,255,255,0.9);">로그인</button></a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
    <nav class="navbar navbar-light navbar-expand-md">
        <div class="container-fluid"><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse text-center" id="navcol-1">
                <ul class="navbar-nav mx-auto" style="border-style: none;">
                    <li class="nav-item"><a class="nav-link active" href="#"><button class="btn btn-dark" type="button" style="width: 90px;background: rgba(52, 58, 64, 0.8);border-color: rgb(255, 255, 255);border-top-color: rgb(255,;border-right-color: 255,;border-bottom-color: 255);border-left-color: 255,;">홈</button></a></li>
                    <li class="nav-item"><a class="nav-link" href="#"><button class="btn btn-dark" type="button" style="background: rgba(52,58,64,0.8);border-color: rgb(255, 255, 255);border-top-color: rgb(255,;border-right-color: 255,;border-bottom-color: 255);border-left-color: 255,;">영화소개</button></a></li>
                    <li class="nav-item"><a class="nav-link" href="#"><button class="btn btn-dark" type="button" style="width: 90px;background: rgba(52,58,64,0.8);border-color: rgb(255, 255, 255);border-top-color: rgb(255,;border-right-color: 255,;border-bottom-color: 255);border-left-color: 255,;">리뷰</button></a></li>
                    <li class="nav-item"><a class="nav-link" href="#"><button class="btn btn-dark" type="button" style="width: 90px;background: rgba(52,58,64,0.8);border-color: rgb(255, 255, 255);border-top-color: rgb(255,;border-right-color: 255,;border-bottom-color: 255);border-left-color: 255,;">예고편</button></a></li>
                    <li class="nav-item"><a class="nav-link" href="#"><button class="btn btn-dark" type="button" style="width: 90px;background: rgba(52,58,64,0.8);border-color: rgb(255, 255, 255);">관리자</button></a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="modal fade" id="okja" role="dialog" tabindex="-1">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">티저 영상 보기</h4><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                </div>
                <div class="modal-body"><iframe class="embed-responsive-item" allowfullscreen="" width="100%" height="600" src="https://youtube.com/embed/eOdMVj1mnHE"></iframe></div>
                <div class="modal-footer"></div>
            </div>
        </div>
    </div>
    
    
    <div class="modal fade" id="parasite" role="dialog" tabindex="-1">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">티저 영상 보기</h4><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                </div>
                <div class="modal-body"><iframe id="parasiteVd" class="embed-responsive-item" allowfullscreen="" width="100%" height="600" src="https://youtube.com/embed/Q38h5XD4RKE"></iframe></div>
                <div class="modal-footer"></div>
            </div>
        </div>
    </div>
    
    <div class="modal fade" id="namhan" role="dialog" tabindex="-1">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">티저 영상 보기</h4><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                </div>
                <div class="modal-body"><iframe class="embed-responsive-item" allowfullscreen="" width="100%" height="600" src="https://youtube.com/embed/s2KFCmJ3XOM"></iframe></div>
                <div class="modal-footer"></div>
            </div>
        </div>
    </div>
    
    
    <div class="row justify-content-center">
        <div class="col-auto"><a class="text-muted" href="#">&nbsp;<i class="fa fa-search"></i>&nbsp;</a><input type="search"><a href="#">&nbsp;&nbsp;</a><button class="btn btn-info" type="button" style="background: rgba(23,162,184,0.6);">검색</button></div>
    </div>
    <div class="container" style="width: 1071px;">
        <div class="dropdown"><button class="btn btn-secondary dropdown-toggle" aria-expanded="false" data-toggle="dropdown" type="button" style="background: rgba(108,117,125,0.8);border-color: rgb(255, 255, 255);border-top-color: rgb(255,;border-right-color: 255,;border-bottom-color: 255);border-left-color: 255,;">장르순</button>
            <div class="dropdown-menu"><a class="dropdown-item" href="#">장르순</a><a class="dropdown-item" href="#">최신순</a><a class="dropdown-item" href="#">이름순</a></div>
        </div>
    </div>