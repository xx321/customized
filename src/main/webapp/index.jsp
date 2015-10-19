<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<title>館內操作</title>
<script type="text/javascript" src="bruce/js/jquery-2.1.1.js"></script>

<script type="text/javascript" src="bruce/js/bootstrap.js"></script>
<link rel="stylesheet" href="bruce/css/bootstrap.css" type="text/css"></link>
</head>
<style type="text/css">
	
	#wrapper{
		width: 1000px;
		margin: 0 auto;
	}
	
    #content{
    	width: 100%;
    	margin: 0 auto;
    }
    .edit1{
       width: 250px;
       float: left;
       margin: 30px;
       height: 50px;
    }
    .edit2{
       width: 130px;
       float: left;
       height: 50px;
    }
    /*bootstrap edit*/
    .carousel{
		width: 870px;
		height: :127px;
		float: left;
	}
	.carousel-inner{
		height: 100px;
		margin: 10px 0 0 0;
	}

</style>
<body>
<div id="wrapper"> 
<!-- 
	<div id="logo_banner">
		<img src="${pageContext.request.contextPath}/bruce/images/aa.gif" style="float:left;" height="117" width="127">
	</div>
	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">

		<ol class="carousel-indicators">
	    	<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
	    	<li data-target="#carousel-example-generic" data-slide-to="1"></li>
		</ol>
	

		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="${pageContext.request.contextPath}/bruce/images/1.jpg" height="127" width="963" >
			</div>
			<div class="item">
				<img src="${pageContext.request.contextPath}/bruce/images/2.jpg" height="127" width="963"  >
				...
			</div>
		
	
			<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		    	<span class="sr-only">Previous</span>
			</a>
			<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>
-->
	<div id="content">
	 	<div>
	 		<img src="${pageContext.request.contextPath}/bruce/images/aa-16.gif" height="25" width="1000">
	 	</div>
<!-- 
	 	<div>
	 		<h1  style="width:300px;  margin:10px auto; font-size:21px;">館內操作登入</h1>
	 	</div>
-->	 	
		<div>
		    <form id="form" method="post" class="bg-warning" action="${pageContext.request.contextPath}/homeController/login">
		    <h1  style="width:300px;  margin:10px auto; font-size:21px;">館內操作登入</h1>
			     <div style="width:630px; margin:0 auto; height:400px; padding-top:50px;">
			    	<input name="name" type="text" class="form-control edit1"  placeholder="帳號">
			    	<input name="pwd" type="password" class="form-control edit1" placeholder="密碼">
			
					<div class="modal-footer" style="width:280px;  float:right; border-top: 0px !important; margin-right:120px;">
						<input type="submit" class="btn btn-warning edit2" value="START"/>
<!-- 
				        <p style="float: left; margin-left:10px;"><a href="#">立即註冊</a></p>
					    <p style="float: left; margin-left:10px;"><a href="#">以訪客身份登入</a></p>
-->					    
				  	</div>
				  	${message}	
				 </div> 
		    </form>
		</div>
		<div>
			<img src="${pageContext.request.contextPath}/bruce/images/aa-16.gif" height="25" width="1000">
		</div>
	</div>
</div>
</body>
</html>