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
<title>製作您的襪子</title>
<script src="bruce/js/jquery-2.1.1.js"></script>
<script src="bruce/js/bootstrap.js"></script>

<!-- 分頁js -->
<script src="bruce/js/jquery.pagination.js"></script>
<script src="bruce/js/xhdata.js"></script>

<!-- 住址:動態下拉式選單 -->
<script src="myUtilJS/jquery.twzipcode.min.js"></script>

<link rel="stylesheet" type="text/css" href="bruce/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="bruce/css/style.css">
<link rel="stylesheet" type="text/css" href="bruce/css/swiper.min.css">
</head>
<body>

<div id="wrapper"> 
	
	<img src="${pageContext.request.contextPath}/bruce/images/aa.gif" style="float:left;" height="117" width="127">
	
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
      </ol>

      <!-- Wrapper for slides -->
      <div class="carousel-inner">
        <div class="item active">
          <img src="bruce/images/1.jpg" height="127" width="1013" >
        </div>
        <div class="item">
          <img src="bruce/images/2.jpg" height="127" width="1013"  >
        ...
      </div>
      
      <!-- Controls -->
      <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
        <span class="sr-only">Next</span>
      </a>
     </div>
    </div>

 <div id="content">

 	<div><img src="${pageContext.request.contextPath}/bruce/images/aa-16.gif" height="25" width="1050"></div>
 	
   <div class="bs-example bs-example-tabs" data-example-id="togglable-tabs">
    <ul id="myTab" class="nav nav-tabs"> 
     <li class="active"><a href="#sock" id="sock-tab">１選擇您的襪子</a></li>
     <li class=""><a href="#sockmodel" id="sockmodel-tab" data-toggle="tab">２選擇您的襪子款式</a></li>
     <li class=""><a href="#sockcolor" id="sockcolor-tab" data-toggle="tab">３選擇您的顏色尺寸</a></li>
     <li class=""><a href="#sockimg" id="sockimg-tab" data-toggle="tab">４選擇您的電繡圖樣</a></li>
     <li class=""><a href="#boxing" id="boxing-tab" data-toggle="tab">５選擇您的包裝方式</a></li>
     <li class=""><a href="#receipt" id="receipt-tab" data-toggle="tab">６查看工單及條款</a></li>
     <li class=""><a href="#receiving" id="receiving-tab" data-toggle="tab">７選擇您的取貨方式</a></li>
     <li class=""><a href="#finish" id="finish-tab" data-toggle="tab">８完成</a></li>
    </ul>
    <div id="myTabContent"  class="tab-content">
    
    
	<!--１選擇您的襪子類別 -->
	<div id="sock" class="tab-pane fade active in">
		<div id="sm_wrapper1">
			<div id="sm_sidebar1-1">

				<!-- Swiper -->
				<div class="swiper-container">
				<div class="swiper-wrapper">
					<c:forEach items="${options}" var="option">
						<button type="button" onclick="getStyle('${pageContext.request.contextPath}','${option.id}','${option.price}');setOptionId('${option.id}',0);" class="swiper-slide btn btn-warning sock_model" value="${option.id}">
 							${option.name}
						</button>
					</c:forEach>
				</div>
				<!-- Add Pagination -->             
				</div>
				<!-- 導滑動JS -->
				<script src="${pageContext.request.contextPath}/bruce/js/swiper.min.js"></script>
				<script src="${pageContext.request.contextPath}/bruce/js/swiper.custom1.js"></script>
			</div>      
			 	
         	<!--底部購物車 1 -->
			<div>
				<img src="${pageContext.request.contextPath}/bruce/images/aa-16.gif" height="25" width="1050">
			</div>
			<div id="shopping_box" style="margin-top:10px;">
				<div style="float:left;">
					<button type="button" class="btn btn-info glyphicon glyphicon-shopping-cart">您的購物車</button> 
				</div>
				<div style="float:left; margin-left:50px; margin-top:10px; font-weight:bold; color:#880000;">
					<span style="margin-right:15px;">目前金額</span><span id="total_one">小計:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0&nbsp;&nbsp;元</span>
				</div>
				<div style="float:right;">
					<button id="step_1" onclick="convertion('sockmodel-tab');clearStyleParam();" type="button" class="btn btn-info" disabled="disabled">下一步</button> 
				</div>  
			</div>
        </div>      
	</div> 
	<!--１選擇您的襪子類別END -->
	
	<!--2選擇您的襪子款式 -->
     <div class="tab-pane fade" id="sockmodel">
		<div id="sm_wrapper2">	
			<div id="sm_sidebar2-1">
				<!-- 由jquery 返回參數設定Button元件 -->
			</div>		
			<div id="sm_sidebar2-3">
				<img id="patternImg" class="img-thumbnail color_img" data-holder-rendered="true" height="440" width="340">
			</div>
			<!--底部購物車 2 -->
			<div>
				<img src="${pageContext.request.contextPath}/bruce/images/aa-16.gif" height="25" width="1050">
			</div>
			<div id="shopping_box" style="margin-top:10px;">
				<div style="float:left;">
					<button type="button" class="btn btn-info glyphicon glyphicon-shopping-cart">您的購物車</button> 
				</div>
				<div style="float:left; margin-left:50px; margin-top:10px; font-weight:bold; color:#880000;">
					<span style="margin-right:15px;">目前金額</span><span id="total_two">小計:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0&nbsp;&nbsp;元</span>
				</div>
				<div style="float:right;">
					<button id="step_2-1" onclick="convertion('sock-tab');clearStyleParam();" type="button" class="btn btn-info">上一步</button> 
					<button id="step_2-2" onclick="showImgWrapper();clearPatternParam();" type="button" class="btn btn-info" disabled="disabled">下一步</button> 
				</div>                                                         
			</div>			
		</div>
		
		<!--imgwrapper 分頁-->
		<div id="img_wrapper">
			<div id="model">
				<ul id="htcList">    
				</ul> 
				<ul id="Searchresult" style="display:none;" class="btn btn-info"> 
					<!-- 由jquery 返回參數設定li元件 -->
				</ul>
			</div>
		    <ul id="pagination" class="pagination"><!-- 这里显示分页 --></ul>
		    
			<!--底部購物車 2 -->
			<div>
				<img src="${pageContext.request.contextPath}/bruce/images/aa-16.gif" height="25" width="1050">
			</div>
			<div id="shopping_box" style="margin-top:10px;">
				<div style="float:left;">
					<button type="button" class="btn btn-info glyphicon glyphicon-shopping-cart">您的購物車</button> 
				</div>
				<div style="float:left; margin-left:50px; margin-top:10px; font-weight:bold; color:#880000;">
					<span style="margin-right:15px;">目前金額</span><span id="total_three">小計:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0&nbsp;&nbsp;元</span>
				</div>
				<div style="float:right;">
					<button id="step_2-3" onclick="showSmWrapper2();clearPatternParam();" type="button" class="btn btn-info">上一步</button> 
					<button id="step_2-4" onclick="convertion('sockcolor-tab');clearColorParam();" type="button" class="btn btn-info" disabled="disabled">下一步</button> 
				</div>  
			</div>		       
		</div>     
	</div>
	<!--2選擇您的襪子款式END -->
    
      <!--3選擇您的襪子顏色、尺寸 -->
      <div class="tab-pane fade" id="sockcolor">
        <div id="sm_wrapper3">
          <div id="sm_sidebar3-1">
              <img id="colorImg" class="img-thumbnail color_img" data-holder-rendered="true">
          </div>
          <div id="sm_sidebar3-2">
           <div class="panel panel-primary">
              <div class="panel-heading">
               	 介紹
              </div>
              <div id="introduction" class="panel-body">
              	<!-- 由jquery 返回參數設定介紹內容 -->
              </div>
           </div>
           <div id="chooseSize" class="revision3">             
             <label>選擇尺寸</label>
             <select id="selectSize" onclick="changeSize()">         
					<!-- 由jquery 返回參數設定select元件 -->
             </select>
           </div>
          </div>
           <div id="sm_sidebar3-3">
              <nav>
                <ul id="colorResult" class="pagination pagination-lg">
					<!-- 由jquery 返回參數設定li元件 -->
                </ul>
              </nav>
            </div>
        </div>
        
         	<!--底部購物車 3 -->
			<div>
				<img src="${pageContext.request.contextPath}/bruce/images/aa-16.gif" height="25" width="1050">
			</div>
			<div id="shopping_box" style="margin-top:10px;">
				<div style="float:left;">
					<button type="button" class="btn btn-info glyphicon glyphicon-shopping-cart">您的購物車</button> 
				</div>
				<div style="float:left; margin-left:50px; margin-top:10px; font-weight:bold; color:#880000;">
					<span style="margin-right:15px;">目前金額</span><span id="total_four">小計:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0&nbsp;&nbsp;元</span>
				</div>
				<div style="float:right;">
					<button id="step_3-1" onclick="convertion('sockmodel-tab');clearColorParam();" type="button" class="btn btn-info">上一步</button> 
					<button id="step_3-2" onclick="convertion('sockimg-tab');clearEmbroideryParam(-1);" type="button" class="btn btn-info" disabled="disabled">下一步</button> 
				</div>  
			</div>
      </div>
		<!--3選擇您的襪子顏色、尺寸END -->
		
    	<!--4選擇您的電繡圖案 -->
      <div class="tab-pane fade" id="sockimg">
         <div id="sm_wrapper4-1">
          <div id="sm_sidebar4-1">
              <div class="revision4">
                <input type="radio" onclick="clearEmbroideryParam(0);" name="embroideryRadios" class="radio5" value="0"/>
                	圖案
              </div>
              <div class="revision4">
                <input type="radio" onclick="clearEmbroideryParam(1);" name="embroideryRadios" class="radio5" value="1"/>
                	文字
              </div>
              <div class="revision4">
                <input type="radio" onclick="clearEmbroideryParam(2);" name="embroideryRadios" class="radio5" value="2" checked="checked"/>
                	圖案+文字
              </div>
          </div>
        
        <!-- 文字部份 -->
          <div id="sm_sidebar4-2-1">
              <div>
                <p  style="float:left; margin-left:20px;">請輸入文字</p>
                <span style="float:right;">
                <button type="button" onclick="showText('#000');" style="background:#000;" class="btn"></button>
                <button type="button" onclick="showText('#CCC');" class="btn btn-default"></button>
                <button type="button" onclick="showText('#337ab7');" class="btn btn-primary"></button>
                <button type="button" onclick="showText('#5cb85c');" class="btn btn-success"></button>
                <button type="button" onclick="showText('#5bc0de');" class="btn btn-info"></button>
                <button type="button" onclick="showText('#f0ad4e');" class="btn btn-warning"></button>
                <button type="button" onclick="showText('#d9534f');" class="btn btn-danger"></button>
                </span>
              </div>
              <div style="float:left; width:500px;">
              <div class="col-lg-6">
                <div class="input-group">
                  	<input id="embroideryText" type="text" maxlength="8" class="form-control insert_text">
                  <div class="input-group-btn">
                    <button type="button" style="height:50px;" class="btn btn-default dropdown-toggle" data-toggle="dropdown">Arial</button>
                    <ul class="dropdown-menu dropdown-menu-right">
                      <li><a onclick="showFamily('Arial');" class="Arial">Arial</a></li>
                      <li><a onclick="showFamily('Century');" class="Century">Century</a></li>
                    </ul>
                  </div>
                </div>
              </div>
              <span style="float:right;">中文限3字/英文限6字</span>
              <br>
              <span style="float:right;">每多一字酌收加工費30元</span>
              </div>
          </div>
        <!-- 圖案部份 -->  
          <div id="sm_sidebar4-2-2">
           <p style="margin-left:20px;">圖案款示</p>
             <div class="cte_img">      
               <ul>
                 <li id="embroideryPrev" style="float:left; margin-right:4px;"><a><span>«</span></a></li>
                   <c:forEach items="${embroiderys}" var="embroidery">
                      <li class="embroideryColor">
                        <button type="button" onclick="getEmbroideryColor('${pageContext.request.contextPath}','${embroidery.id}','${embroidery.name}','${embroidery.price}');">
                          <img class="color_button" src="${embroidery.url}" title="${embroidery.name}"/>       
                        </button>
                      </li>  
                   </c:forEach>
                 <li  id="embroideryNext" style="float:right; margin-left:4px;"><a><span>»</span></a></li>
               </ul>
             </div>
             <div id="embroideryResult" class="embroidery_img">
               <!-- 由jquery 返回參數設定li元件 -->
             </div>
          </div>
          </div>
               
        <!-- 秀圖VIEW部份 -->
        <div id="sm_wrapper4-2">
          <div id="sm_sidebar4-3">
			<div id="result" style="margin:10px;width:300px;height:450px;position:relative;overflow:hidden;" >
				<img class="showColorImg" style="width:300px;height:450px;position:absolute;" data-holder-rendered="true" alt="" />
				
				<div id="iconE" class="iconE" style="width:15px;height:15px;position:absolute;top:10px;left:20px">
					<img class="iconEPic" style="width:15px;height:15px;position:absolute;" alt="" />
				</div>
				<div id="textE" class="textE" style="text-align:center;width:75px;height:15px;position:absolute;top:30px;left:10px">	
					<font class="embroideryShowText">
						<!-- 由jquery 返回參數設定font 文字、顏色、字型 -->
					</font>
				</div>	
			</div> 			
          </div>
        </div>
		<!-- 秀圖VIEW部份END -->
		
         	<!--底部購物車 4 -->
			<div>
				<img src="${pageContext.request.contextPath}/bruce/images/aa-16.gif" height="25" width="1050">
			</div>
			<div id="shopping_box" style="margin-top:10px;">
				<div style="float:left;">
					<button type="button" class="btn btn-info glyphicon glyphicon-shopping-cart">您的購物車</button> 
				</div>
				<div style="float:left; margin-left:50px; margin-top:10px; font-weight:bold; color:#880000;">
					<span style="margin-right:15px;">目前金額</span><span id="total_five">小計:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0&nbsp;&nbsp;元</span>
				</div>
				<div style="float:right;">
					<button id="step_4-1" onclick="convertion('sockcolor-tab');clearEmbroideryParam();" type="button" class="btn btn-info">上一步</button> 
					<button id="step_4-2" onclick="convertion('boxing-tab');clearPackingParam();" type="button" class="btn btn-info" disabled="disabled">下一步</button> 
				</div>  
			</div>
      </div>
		<!--4選擇您的電繡圖案END -->
		
		
      <!-- 5頁面 選擇包裝方式 -->
      <div class="tab-pane fade" id="boxing">
        <div id="sm_wrapper5">
         <div id="sm_content5">
         <c:forEach items="${packings}" var="packing">
           <div id="sm_sidebar5">
             <div id="for_radio5">
               <input type="radio" name="optionsRadios" onclick="getPacking('${packing.name}','${packing.price}');setOptionId('${packing.id}', 6)" class="radio5" value="${packing.id}">
             </div>
             <div class="center_text1">${packing.name}</div>
             <div class="center_text2">$ ${packing.price}</div>
             <div>
               <img src="${packing.url}" height="250" width="150">
             </div>
           </div>
         </c:forEach>
        </div>
		
         	<!--底部購物車 5 -->
			<div>
				<img src="${pageContext.request.contextPath}/bruce/images/aa-16.gif" height="25" width="1050">
			</div>
			<div id="shopping_box" style="margin-top:10px;">
				<div style="float:left;">
					<button type="button" class="btn btn-info glyphicon glyphicon-shopping-cart">您的購物車</button> 
				</div>
				<div style="float:left; margin-left:50px; margin-top:10px; font-weight:bold; color:#880000;">
					<span style="margin-right:15px;">目前金額</span><span id="total_six">小計:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0&nbsp;&nbsp;元</span>
				</div>
				<div style="float:right;">
					<button id="step_5-1" onclick="convertion('sockimg-tab');clearPackingParam();" type="button" class="btn btn-info">上一步</button> 
					<button id="step_5-2" onclick="convertion('receipt-tab');clearAgreeParam();" type="button" class="btn btn-info" disabled="disabled">下一步</button> 
				</div>  
			</div>
        </div> 
      </div>
      <!-- 5頁面 選擇包裝方式END -->
      
      
      <!-- 6頁面 確認工單及條款 -->
      <div class="tab-pane fade" id="receipt">
        <div id="sm_wrapper6">
          <div id="sm_content6">
             <div id="sm_sidebar6-1">
             	<!-- 最終圖片顯示 -->
				<div id="result" style="width:300px;height:450px;position:relative;overflow:hidden;" >
					<img class="showColorImg" style="width:300px;height:450px;position:absolute;" data-holder-rendered="true" alt="" />
					
					<div id="iconEFinal" class="iconE" style="width:15px;height:15px;position:absolute;top:10px;left:20px">
						<img class="iconEPic" style="width:15px;height:15px;position:absolute;" alt="" />
					</div>
					<div id="textEFinal" class="textE" style="text-align:center;width:75px;height:15px;position:absolute;top:30px;left:10px">	
						<font class="embroideryShowText">
							<!-- 由jquery 返回參數設定font 文字、顏色、字型 -->
						</font>
					</div>	
				</div> 	
			   	<!-- 最終圖片顯示END -->
             </div>
             <div id="sm_sidebar6-2">
               <div class="panel panel-warning">
                <div class="panel-heading">
                  <h3 class="panel-title" id="panel-title">客製商品內容<a class="anchorjs-link" href="#panel-title"><span class="anchorjs-icon"></span></a></h3>
                </div>
                <div class="panel-body receipt_content">
                  <div id="size">商品尺寸&nbsp;&nbsp;：&nbsp;&nbsp;</div>
                  <div id="style">商品款式&nbsp;&nbsp;：&nbsp;&nbsp;</div>
                  <div id="color">商品顏色&nbsp;&nbsp;：&nbsp;&nbsp;</div>
                  <div id="pattern">電鏽圖案&nbsp;&nbsp;：&nbsp;&nbsp;</div>
                  <div id="text">電繡文字&nbsp;&nbsp;：&nbsp;&nbsp;</div>
                  <div id="packing">包裝方式&nbsp;&nbsp;：&nbsp;&nbsp;</div>
                  <div id="money">商品單價&nbsp;&nbsp;：&nbsp;&nbsp;</div>
                  <div id="quantity">									
                  <!--  數量選擇框 Bootstrap樣式-->  
					<div class="container">
					    <div class="row">
					    	<div class="col-xs-3" style="padding-right: 0px;padding-left: 0px;">
					    		訂製數量
					    	</div>
							<div class="col-xs-9">
								<div class="input-group number-spinner">
									<span class="input-group-btn data-dwn">
										<button class="btn btn-default btn-info" data-dir="dwn"><span class="glyphicon glyphicon-minus"></span></button>
									</span>
									<input id="quantity_input" type="text" class="form-control text-center" value="1" min="1" max="1000" readonly="readonly">
									<span class="input-group-btn data-up">
										<button class="btn btn-default btn-info" data-dir="up"><span class="glyphicon glyphicon-plus"></span></button>
									</span>
								</div>
							</div>
						</div>
					</div>                 
                  <!-- 數量選擇框 Bootstrap樣式 END -->        
                  </div>
                  <input type="hidden" id="totalAmount" readonly="readonly"/>
                  <div id="total_amount">訂單金額&nbsp;&nbsp;：&nbsp;&nbsp;</div>
                  <div style="font-size:13px; color:red;">*注意!客製化商品恕不接受退換貨</div>
                </div>
              </div>

             </div>
             <div id="sm_sidebar6-3">
               <div class="lang_line">法律條款</div>
               <div class="cte_lang">
					行政機關為發揮共同一體之行政機能，應於其權限範圍內互相協助。－－＞第一項
					行政機關執行職務時，有下列情形之一者，得向無隸屬關係之其他機關請求協助－－＞第二項
					一、因法律上之原因，不能獨自執行職務者。－－＞第二項第一款
					二、因人員、設備不足等事實上之原因，不能獨自執行職務者。
					三、執行職務所必要認定之事實，不能獨自調查者。
					四、執行職務所必要之文書或其他資料，為被請求機關所持有者。
					五、由被請求機關協助執行，顯較經濟者。
					六、其他職務上有正當理由須請求協助者。
					前項請求，除緊急情形外，應以書面為之。－－＞第三項
					被請求機關於有下列情形之一者，應拒絕之︰－－＞第四項
					一、協助之行為，非其權限範圍或依法不得為之者。－－＞第四項第一款
					二、如提供協助，將嚴重妨害其自身職務之執行者。
					被請求機關認有正當理由不能協助者，得拒絕之。－－＞第五項
					被請求機關認為無提供行政協助之義務或有拒絕之事由時，應將其理由通知請求協助機關。請求協助機關對此有異議時，由其共同上級機關決定之，無共同上級機關時，由被請求機關之上級機關決定之。
					被請求機關得向請求協助機關要求負擔行政協助所需費用。其負擔金額及支付方式，由請求協助機關及被請求機關以協議定之；協議不成時，由其共同上級機關定之。      
               </div>
                <input id="agreeCheck" onclick="checkAgree();" type="checkbox">我確認接受上述條款
             </div>
             <div id="sm_sidebar6-4">
                <button id="step_6-2" onclick="convertion('receiving-tab');clearRecipientParam();addGoods('${pageContext.request.contextPath}');" type="button" class="btn btn-primary btn-lg" style="float: right;" disabled="disabled">確認完成</button>
             </div>
          </div>
         	<!--底部購物車 6 -->
			<div>
				<img src="${pageContext.request.contextPath}/bruce/images/aa-16.gif" height="25" width="1050">
			</div>
			<div id="shopping_box" style="margin-top:10px;">
				<div style="float:left;">
					<button type="button" class="btn btn-info glyphicon glyphicon-shopping-cart">您的購物車</button> 
				</div>
				<div style="float:right;">
					<button id="step_6-1" onclick="convertion('boxing-tab');clearAgreeParam();" type="button" class="btn btn-info">上一步</button> 
				</div>  
			</div>
        </div>
      </div>
      <!-- 6頁面 確認工單及條款END -->
      
      <!-- 7頁面 確認工單及條款 -->
      <div class="tab-pane fade" id="receiving">
          <div id="sm_wrapper7">
            <div id="sm_content7">
              <div id="sm_sidebar7-1">
                <form>
                  <label class="title">收貨人基本資料</label>
                  <div class="form-group">
                    <label>收貨人姓名:</label>
                    <input name="name" type="text" class="form-control blurValidate" style="width:150px;height:23px;">
                  </div>
                  <div class="form-group">
                    <label>室內電話&nbsp;&nbsp;&nbsp;:</label>
                    <input name="tel" type="text" onkeyup="value=value.replace(/[^\d]/g,'')" class="form-control blurValidate" style="width:150px;height:23px;">

                    <label  style="margin-left:20px;">手機電話&nbsp;&nbsp;&nbsp;:</label>
                    <input name="phone" type="text" onkeyup="value=value.replace(/[^\d]/g,'')" class="form-control blurValidate" style="width:150px;height:23px;">
                  </div>
                  <div class="form-group">
                    <label>收貨地址&nbsp;&nbsp;&nbsp;:</label>                    
                    <input name="address" type="text" class="form-control blurValidate" style="width:380px;height:23px;">
                    <div id="twzipcode" style="float: right;"></div>
                  </div>
                  <div class="form-group">
                    <label>電子信箱&nbsp;&nbsp;&nbsp;:</label>
                    <input name="email" type="text" class="form-control blurValidate" style="width:200px;height:23px;">
                  </div>
                </form>
              </div>
               <!-- 
              <div id="sm_sidebar7-2">
                <form>
                  <div class="form-group">
                    <label>取貨方式&nbsp;&nbsp;&nbsp;:</label>
                    <input type="radio">
                     <label>宅配到府</label>
                    <div style="margin-left:110px; font-size:10px; color:#d44950;">
                    *滿千免運
                    <br>
                    *工作天2~3天出貨1~2天
                    </div>
                  </div>
                </form>
              </div>
              <div id="sm_sidebar7-3">
                <form>
                  <div class="form-group">
                    <label>取貨方式&nbsp;&nbsp;&nbsp;:</label>
                    <input type="radio" >
                    <label>現金付款</label>
                    <input type="radio" >
                    <label>線上刷卡</label>
                  </div>
                </form>
              </div>
              -->
              <div id="sm_sidebar7-4" >
                 <button id="step_7-2" onclick="addOrder('${pageContext.request.contextPath}');" type="button" class="btn btn-primary btn-lg" disabled="disabled">確認無誤送出</button>
				 <!-- <button type="button" class="btn btn-default btn-lg">我想再做一次</button> -->
              </div>
            </div>
              <!--底部-->
              <div><img src="${pageContext.request.contextPath}/bruce/images/aa-16.gif" height="25" width="1050"></div>
          </div>
      </div>
      <!-- 7頁面 確認工單及條款END -->
      
      
      <!-- 8頁面 完成 -->
      <div class="tab-pane fade" id="finish">
          <div id="sm_wrapper8">
            <div id="sm_content8">
              <div id="sm_sidebar8-1">
               <img id="change" class="img-thumbnail" src="${pageContext.request.contextPath}/bruce/images/short/file201312102142025.jpg" >
              </div>
              <div id="sm_sidebar8-2">
                <!-- <p>客製商品收據已寄到您的電子信箱</p> -->
                <p>您已完成吳福洋客製襪服務</p>
                <p>感謝您的購買</p>
                <button type="button" class="btn btn-primary">離開</button>
              </div>

            </div>
           <!--底部-->
                <div><img src="${pageContext.request.contextPath}/bruce/images/aa-16.gif" height="25" width="1050"></div>
          </div>      
      </div>
      <!-- 8頁面 end -->

    </div>
  </div>
 
</div>

	<!--dialog-->
	<div class="modal fade bs-example-modal-lg" tabindex="-1">
	  <div class="modal-dialog modal-lg">
	    <div class="modal-content">
	     <img src="${pageContext.request.contextPath}/bruce/images/圖片1.png" height="607" width="955">
	    </div>
	  </div>
	</div>

</div>
</body>
	<script src="myUtilJS/pageFun.js"></script> 
	<script src="myUtilJS/onReady.js"></script>
</html>