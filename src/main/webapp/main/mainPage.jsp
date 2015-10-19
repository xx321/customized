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
<meta>
<base href="<%=basePath%>">
<title>製作您的襪子</title>
<script src="bruce/js/jquery-2.1.1.js"></script>
<script src="bruce/js/bootstrap.js"></script>
<!--<script src="bruce/js/wufuyangscript.js"></script>-->
<!-- 分頁js -->
<script src="bruce/js/jquery.pagination.js"></script>
<script src="bruce/js/xhdata.js"></script>

<link rel="stylesheet" type="text/css" href="bruce/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="bruce/css/mainStyle.css">

<!-- Owl Carousel Assets -->
<link rel="stylesheet" type="text/css" href="bruce/owl-carousel/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="bruce/owl-carousel/owl.theme.css">
<!-- fancybox -->
<script src="bruce/fancybox/jquery.fancybox.js"></script>
<link rel="stylesheet" type="text/css" href="bruce/fancybox/jquery.fancybox.css" media="screen" />

<!-- 數字輸入框 --> 
<script src="myUtilJS/autoNumeric.js"></script>
	  
<!-- 地址js -->
<script type="text/javascript" src="bruce/js/jquery.twzipcode.min.js"></script>


<c:if test="${finish == true}">
	<script type="text/javascript">
		$.finish = true;
	</script>
</c:if>
<c:if test="${sessionInfo != null}">
	<script type="text/javascript">
		$.onSite = true;
	</script>
</c:if>
</head>
<body>
<div id="wrapper"> 
   <div id="header">
      <div class="header-left">
        <img src="${pageContext.request.contextPath}/bruce/images/aa.gif"  height="77" width="87">
        <a href="${worksImage.remark}" class="fancybox-effects-a" ><span>作品參考<p>samples</p></span></a>    
        <a href="${qaImage.remark}" class="fancybox-effects-a"><span>問與答<p>Q&amp;A</p></span></a>
      </div>
  
       <div class="header-right">
        <!-- 購物車 -->
          <div class="dropdown">
            <a class="icon" id="dLabel" href="javascript: void(0)" onclick="loadShoppingCart('${pageContext.request.contextPath}');" data-toggle="dropdown">
              <img src="${pageContext.request.contextPath}/bruce/images/shopping.png" height="40" width="45">
            </a>
            <div id="shoppingCart_table" class="dropdown-menu pull-right">
	            <table style="width:300px;" class="table table-striped">
	                <thead>
	                  <tr>
	                    <th>品名</th>
	                    <th>數量</th>
	                    <th>價格</th>
	                  </tr>
	                </thead>
	                <tbody id="shoppingCart">
						<!-- 由jquery 返回參數設定li元件 -->	
	                </tbody>
	            </table>
			</div>
          </div>
        <a class="icon" href="http://www.wufuyang.com.tw/contact.asp" target="_blank"><img src="${pageContext.request.contextPath}/bruce/images/mail.png" height="35" width="50"></a>
        <a class="icon" href="http://www.facebook.com/wufuyang" target="_blank"><img src="${pageContext.request.contextPath}/bruce/images/fb.png" height="40" width="40"></a>
   
        
       </div>

   </div>
<div class="wrapper_line"></div>
    
 <div id="content">

 	
   <div class="bs-example bs-example-tabs" data-example-id="togglable-tabs">
    <ul id="myTab" class="nav nav-tabs">
     <li class="active"><a href="#sock" id="sock-tab" data-toggle="tab" class="myActive">選擇襪款</a></li>
     <li class=""><a href="#sockmodel" id="sockmodel-tab" data-toggle="tab" class="myActive">選擇花紋</a></li>
     <li class=""><a href="#sockcolor" id="sockcolor-tab" data-toggle="tab" class="myActive">選擇顏色尺寸</a></li>
     <li class=""><a href="#sockimg" id="sockimg-tab" data-toggle="tab" class="myActive">選擇電繡圖文</a></li>
     <li class=""><a href="#boxing" id="boxing-tab" data-toggle="tab" class="myActive">選擇包裝</a></li>
     <li class=""><a href="#receipt" id="receipt-tab" data-toggle="tab" class="myActive">訂單確認</a></li>
     <li class=""><a href="#receiving" id="receiving-tab" data-toggle="tab" class="myActive">結帳</a></li>
    </ul>
    <div id="myTabContent"  class="tab-content">
    <!--１選擇您的襪子尺寸 -->
      <div class="tab-pane fade active in" id="sock">
        <div id="sm_wrapper1">
         <!-- title -->
              <div class="title_1">
                <h3>選擇您的商品</h3>
                <h4>CHOOSE YOUR ITEM</h4>
              </div>

        	<div id="sm_sidebar1-1">
               <!-- owl-demo -->
               <div id="owl-demo" class="owl-carousel">             
					<c:forEach items="${options}" var="option">
						<button type="button" onclick="getStyle('${pageContext.request.contextPath}','${option.id}','${option.price}','${option.name}');setOptionId('${option.id}',0);" class="btn sock_model">
 							<div style="height:50px; color:#FFF;">${option.name}</div>
 							<div style="height:50px; color:#FFF;">
 							<c:forTokens var="sizeName" items="${option.remark}" delims=",">
 								<c:set  var="sizeNamrTrim" value="${sizeName}"/>
								<p style="font-size:16px; padding:10px 0 0 0; height:0; color:#FFF;">${fn:trim(sizeNamrTrim)}</p>
							</c:forTokens>
							</div>
						</button>
					</c:forEach>                                   
               </div>
                <div style="margin:50px 20px 0 0; text-align:center; ">
                     <span style="text-align:left; float:left; color:red; font-family:'微軟正黑體'; font-size:13px;">
                                                為順利操作本客製化網站<br>
						建議您使用google chrome或safari瀏覽器。
				    </span>
                    <a href="${sizeImage.remark}" class="myButton fancybox-effects-a" style="margin-right: 250px;">
                      	襪子尺寸對照表
                    </a>
                   
                </div>
        	</div>
            <!-- 箭頭 -->
             <div onclick="prevOWL('owl-demo')" class="glyphicon glyphicon-menu-left prev"></div>
             <div onclick="nextOWL('owl-demo')" class="glyphicon glyphicon-menu-right next"></div>
             
			<!--底部-->
          	<div class="wrapper_line"></div>
          	<div id="shopping_box">
              <div class="left">
                 <span class="total">Total：</span><span id="total_one" class="print">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NT.0&nbsp;&nbsp;元</span>
              </div>
              <div class="right">
                <button id="step_1" class="btn btn-default" onclick="convertion('sockmodel-tab');clearStyleParam();" disabled="disabled">NEXT<span class="glyphicon glyphicon-triangle-right"></span></button>
              </div>  
          	</div>
          	
        </div>
      </div> 
     <!--2選擇您的襪子款式 -->
  <div class="tab-pane fade" id="sockmodel">
   
     <div id="sm_wrapper2">
       <div id="title_one" class="title_2">
           <!-- 由jquery 返回參數設定元件 -->
       </div>
           <div id="sm_sidebar2">
              <!-- owl -->
              <!-- 由jquery 返回參數設定元件 -->
           </div>
             <!-- 箭頭 -->
             <div onclick="prevOWL('owl-demo2-1')" class="glyphicon glyphicon-menu-left prev"></div>
             <div onclick="nextOWL('owl-demo2-1')" class="glyphicon glyphicon-menu-right next"></div>
    
          	<!--底部-->
         	<div class="wrapper_line"></div>
          	<div id="shopping_box">
              <div class="left">
                 <span class="total">Total：</span><span id="total_two" class="print">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NT.0&nbsp;&nbsp;元</span>
              </div>
              <div class="right">
               　		<button id="step_2-1" class="btn btn-default" type="button" onclick="convertion('sock-tab');clearStyleParam();"><span class="glyphicon glyphicon-triangle-left"></span>BACK│</button>
                <button id="step_2-2" class="btn btn-default" type="button" onclick="showImgWrapper();clearPatternParam();" disabled="disabled">NEXT<span class="glyphicon glyphicon-triangle-right"></span></button>
              </div>  
          	</div>    
 
    </div>
      
  <!--imgwrapper 分頁-->
  <div id="img_wrapper">
		    <div id="title_two" class="title_2">
				<!-- 由jquery 返回參數設定元件 -->
		    </div>
		    
		    <div id="sm_wrapper2-2">
				<!-- 由jquery 返回參數設定元件 -->
		    </div> 
 	    
            	<!--底部-->
         	<div class="wrapper_line"></div>
          	<div id="shopping_box">
              <div class="left">
                 <span class="total">Total：</span><span id="total_three" class="print">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NT.0&nbsp;&nbsp;元</span>
              </div>
              <div class="right">
               　			<button id="step_2-3" class="btn btn-default" onclick="showSmWrapper2();clearPatternParam();"><span class="glyphicon glyphicon-triangle-left"></span>BACK│</button>
                <button id="step_2-4" class="btn btn-default" onclick="convertion('sockcolor-tab');clearColorParam();" disabled="disabled">NEXT<span class="glyphicon glyphicon-triangle-right"></span></button>
              </div>  
          	</div>
  </div>
      </div>
   
      <!--3選擇您的襪子款式 -->
      <div class="tab-pane fade" id="sockcolor">
      <div id="sm_wrapper3">
        <div id="title_three" class="title_2">
           <!-- 由jquery 返回參數設定元件 -->
        </div>
        
           <div id="sm_sidebar3-1">
             <div class="panel panel-primary">
              
              <div id="introduction" class="panel-body">
				<!-- 由jquery 返回參數設定元件 -->
              </div>
              <div class="revision3">
                <label style="float:left;">選擇顏色</label>
                 <div id="colorResult">
                  <div id="owl-demo3" class="owl-carousel">
					<!-- 由jquery 返回參數設定元件 -->
                  </div>
                 </div>
                 <div style="color:red; font-size:11px;">*圖片顏色因電腦差異而有色偏、請一律以實品為準</div>

                  <!-- 箭頭 -->
                 <div onclick="prevOWL('owl-demo3')" class="glyphicon glyphicon-menu-left prev"></div>
                 <div onclick="nextOWL('owl-demo3')" class="glyphicon glyphicon-menu-right next"></div>
              </div>

             <div class="revision3-2">
             <label style="float:left; width:500px;">選擇尺寸</label>
                  <div id="chooseSize" style="float:left;width:360px;">
                  	<!-- 由jquery 返回參數設定元件 -->
                  </div>
                  <div style="float:right;">
                    <a href="${sizeImage.remark}" class="size_button2 fancybox-effects-a">
                      	襪子尺寸對照表
                    </a>
                  </div>
             </div>
           </div>
          </div>
          
       <div id="sm_sidebar3-2">
         <a id="colorImg_enlarge" class="fancybox-effects-a">
         	<img id="colorImg" class="img-thumbnail color_img " data-holder-rendered="true">
         </a>
         <p style="color:#B3B3B3;">圖片僅供參考 請依實際商品為準</p>
       </div>
        </div>
        
         	<!--底部-->
          	<div class="wrapper_line"></div>
          	<div id="shopping_box" style="margin-top:10px;">
              <div class="left">
                 <span class="total">Total：</span><span id="total_four" class="print">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NT.0&nbsp;&nbsp;元</span>
              </div>
              <div class="right">
               　		<button id="step_3-1" class="btn btn-default" onclick="convertion('sockmodel-tab');clearColorParam();"><span class="glyphicon glyphicon-triangle-left"></span>BACK│</button>
                <button id="step_3-2" class="btn btn-default" onclick="convertion('sockimg-tab');clearEmbroideryParam();" disabled="disabled">NEXT<span class="glyphicon glyphicon-triangle-right"></span></button>
              </div>  
          	</div>
      </div>

        <!--4選擇您的電繡圖案 -->
        <div class="tab-pane fade" id="sockimg">
         <div id="sm_wrapper4">
           <div id="sm_wrapper4-1">
                 
          <!-- Nav tabs -->
          <ul class="nav2 nav-tabs2" style="font-size:20px;">
            <li class="active"><a href="#images" data-toggle="tab"><span class="dte">○</span>電繡圖案</a></li>
            <li><a href="#font" data-toggle="tab"><span class="dtt">○</span>電繡名字</a></li>
           
          </ul>
          <!-- Tab panes -->
          <div class="tab-content">
            <div id="images" class="tab-pane tab-pane2 active">
                          
          		<!--  由jquery 返回參數設定li元件  --> 
          		 
            </div>
          
            <!-- 箭頭 -->
            <div onclick="prevOWL('owl-demo4')" class="glyphicon glyphicon-menu-left prev"></div>
            <div onclick="nextOWL('owl-demo4')" class="glyphicon glyphicon-menu-right next"></div>
	            
            <div class="tab-pane tab-pane1" id="font">
            	
                <div class="title"><button onclick="clearEmbroideryText();" type="button" class="btn btn-default default" style="float:left;">清除文字</button><span style="color:red;">NT.80/</span>限8個英文字母內<span><a class="sample_button fancybox-effects-a" href="${embroideryImage.remark}" style="float:right;">Sample</a></span></div>
                <input id="embroideryText" onkeyup="value=value.replace(/[^\w\s\`\~\!\@\#\$\%\^\*\(\)\-\=\+\|\[\]\{\}\;\:\/\?\,\.\&quot;\&amp;\&apos;\&lt;\&gt;\\]/ig,'')" type="text" maxlength="8" class="d1 form-control insert_text" placeholder="請輸入文字" >
                <div style="color:red;">※請留意字母大小寫及標點符號</div>
                <h4>選擇字體</h4>
                 
                  <button type="button" onclick="showFamily('NoxchiArialBold44540','NoxchiArialBold44540');" class="btn btn-default default arial button_focus1">Arial</button>
                  <button type="button" onclick="showFamily('Shrewsbury41088','Shrewsbury41088' );" class="btn btn-default default sacram button_focus1" >Boton</button>
                  <button type="button" onclick="showFamily('Script12PitchBT-Roman40310','Script12PitchBT-Roman40310');" class="btn btn-default default sail button_focus1">Script</button>
                  <button type="button" onclick="showFamily('Steinem-BoldItalic41697','Steinem-BoldItalic41697');" class="btn btn-default default times  button_focus1">Steinem</button>
                  <button type="button" onclick="showFamily('BotonProB46216','BotonProB46216');" class="btn btn-default default simHei button_focus1">Shrewsbury</button>
                <h4>選擇文字顏色</h4>
                  <button type="button" onclick="showText('#000','黑色');" style="background:#000;" class="btn black btn1 button_focus2"></button>
                  <button type="button" onclick="showText('#CCC','白色');" class="btn btn-default white btn1 button_focus2"></button>
                  <button type="button" onclick="showText('#337ab7','藍色');" class="btn btn-primary primary btn1 button_focus2"></button>
                  <button type="button" onclick="showText('#5cb85c','綠色');" class="btn btn-success success btn1 button_focus2"></button>
                  <button type="button" onclick="showText('#5bc0de','青色');" class="btn btn-info info btn1 button_focus2"></button>
                  <button type="button" onclick="showText('#f0ad4e','橙色');" class="btn btn-warning warning btn1 button_focus2"></button>
                  <button type="button" onclick="showText('#d9534f','紅色');" class="btn btn-danger danger btn1 button_focus2"></button>
            </div>
          </div>
        </div> 
        <!-- 秀圖VIEW部份 -->
      
          <div id="sm_sidebar4-3">
			<div id="result" onclick="showOpenImg(400, 600);" style="margin:5px;  margin-left:43px; height:450px;position:relative;overflow:hidden;" >
			   
				<img class="showColorImg" style="width:300px;height:450px;position:absolute;" data-holder-rendered="true" alt="" />
				
				<div id="iconE" class="iconE" style="width:15px;height:15px;position:absolute;top:10px;left:20px">
					<img class="iconEPic" style="width:auto;height:auto;position:absolute;" alt="" />
				</div>
			   
				<div class="textE" style="text-align:center;width:75px;height:15px;position:absolute;top:30px;left:10px">	
					<span id="textE" class="embroideryShowText" style="font-size:12px;">
						<!-- 由jquery 返回參數設定font 文字、顏色、字型 -->
					</span>
				</div>
				 
			</div> 
			<p style="color:#B3B3B3; margin-left:40px;">圖片僅供參考 請依實際商品為準</p>	
          </div>
          
          
      	</div>

          <!--底部-->
          <div class="wrapper_line"></div>
          <div id="shopping_box" style="margin-top:10px;">
              <div class="left">
                 <span class="total">Total：</span><span id="total_five" class="print">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NT.0&nbsp;&nbsp;元</span>
              </div>
              <div class="right">
               　		<button id="step_4-1" class="btn btn-default" onclick="convertion('sockcolor-tab');clearEmbroideryParam();"><span class="glyphicon glyphicon-triangle-left"></span>BACK│</button>
                <button id="step_4-2" class="btn btn-default" onclick="convertion('boxing-tab');clearPackingParam();">NEXT<span class="glyphicon glyphicon-triangle-right"></span></button>
              </div>
          </div>
      </div>
   
      <!-- 5頁面 選擇包裝方式 -->
      <div class="tab-pane fade" id="boxing">
        <div id="sm_wrapper5">
            
         <div id="sm_content5">
          <div id="owl-demo5" class="owl-carousel">
	         <c:forEach items="${packings}" var="packing">
	           <div id="sm_sidebar5">
	           	 <img src="${packing.url}" height="200" width="200">	      	
	             <div id="for_radio5">
	               <input type="radio" name="optionsRadios" onclick="getPacking('${packing.name}','${packing.price}');setOptionId('${packing.id}', 6)" class="radio5" value="${packing.id}">
	             </div>
	             <div class="center_text1">${packing.name}</div>
	             <div class="center_text2">$ ${packing.price}</div>
	           </div>
	         </c:forEach>         
           </div>
          <!--箭頭-->
          <div onclick="prevOWL('owl-demo5')" class="glyphicon glyphicon-menu-left prev"></div>
          <div onclick="nextOWL('owl-demo5')" class="glyphicon glyphicon-menu-right next"></div>          
          
        </div>
           <!--底部-->
          <div class="wrapper_line"></div>
          <div id="shopping_box" style="margin-top:10px;">
              <div class="left">
                 <span class="total">Total：</span><span id="total_six" class="print">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NT.0&nbsp;&nbsp;元</span>
              </div>
              <div class="right">
               　			<button id="step_5-1" class="btn btn-default" onclick="convertion('sockimg-tab');clearPackingParam();"><span class="glyphicon glyphicon-triangle-left"></span>BACK│</button>
                <button id="step_5-2" class="btn btn-default" onclick="convertion('receipt-tab');clearAgreeParam();showSmWrapper6();" disabled="disabled">NEXT<span class="glyphicon glyphicon-triangle-right"></span></button>
              </div>
          </div>
        </div> 
      </div>
      <!-- 6頁面 確認工單及條款 -->
      <div class="tab-pane fade" id="receipt">
        <div id="sm_wrapper6">
          <div id="sm_content6">
             <div id="sm_sidebar6-1">
               <div class="panel panel-warning">
                <div class="panel-heading">
                  <h3 class="panel-title" id="panel-title">客製商品內容<a class="anchorjs-link" href="#panel-title"><span class="anchorjs-icon"></span></a></h3>
                </div>
                <div class="panel-body receipt_content">
                  <div id="item_no">貨號：</div>
                  <div id="name">品名：</div>
                  <div id="color">顏色：</div>
                  <div id="size">尺寸：</div>
                  <div id="pattern">電繡圖案：</div>
                  <div id="text">電繡文字：</div>
                  <div id="text_color">文字顏色：</div>
                  <div id="text_font">文字字型：</div>
                  <div id="packing">包裝：</div>
                  <div id="money">單價：</div>
                  <div style="border:1px #000 dashed"></div>
                  <div>
                  <!--  數量選擇框 Bootstrap樣式-->  
					<div class="container">
					    <div class="row">
					    	<div class="col-xs-3" style="padding-right: 0px;padding-left: 0px;">
								製作數量
					    	</div>
							<div class="col-xs-9">
								<div class="input-group number-spinner">
									<span class="input-group-btn data-dwn">
										<button class="btn btn-default btn-info" data-dir="dwn"><span class="glyphicon glyphicon-minus"></span></button>
									</span>
									<input id="quantity_input" type="text" class="form-control text-center" value="1" min="1" max="25" readonly="readonly">
									<span class="input-group-btn data-up">
										<button class="btn btn-default btn-info" data-dir="up"><span class="glyphicon glyphicon-plus"></span></button>
									</span>
								</div>
							</div>
						</div>
					</div>                 
                  <!-- 數量選擇框 Bootstrap樣式 END -->   
                  </div>
                  <div style="font-size:13px; color:red;">*注意!客製化商品恕不接受退換貨</div>
                  <div style="font-size:18px; color:red;">
					<c:forTokens var="likeRemark" items="${like.remark}" delims=",">
	 					<c:set  var="likeRemarkTrim" value="${likeRemark}"/>
	 					${fn:trim(likeRemarkTrim)}<br/>
					</c:forTokens>   
                  </div>
                </div>
              </div>
             </div>

             <div id="sm_sidebar6-2">
             	<!-- 最終圖片顯示 -->
				<div id="result" onclick="showOpenImg(400, 600);" style="width:300px;height:450px;position:relative;overflow:hidden;" >
					<img class="showColorImg" style="width:300px;height:450px;position:absolute;" data-holder-rendered="true" alt="" />
			
					<div id="iconEFinal" class="iconE" style="width:15px;height:15px;position:absolute;top:10px;left:20px">
						<img class="iconEPic" style="position:absolute;" alt="" />
					</div>
					<div class="textE" style="text-align:center;width:75px;height:15px;position:absolute;top:30px;left:10px">	
						<span id="textEFinal" class="embroideryShowText" style="font-size:12px;">
							<!-- 由jquery 返回參數設定font 文字、顏色、字型 -->
						</span>
					</div>	
				</div> 	
				
			   	<!-- 最終圖片顯示END -->
             </div>

             <div id="sm_sidebar6-3">
               <div class="lang_line">客製化商品 服務條款</div>
               <div class="cte_lang">
					1. 服務說明
					<br>
本網站得將依業務服務及消費者需求，視情況增減、修改或結束相關客製服務。
<br>
您同意服務變更都是您在同意使用本網站服務時，應自行承擔之風險，您不得因此向WUFUYANG或相關人士要求賠償。
<br>
2.消費者義務
<br>
消費者需依本網站指示完成客製化流程並於付費後，將可享受本網站客製化商品製作服務。本網站不擔保您所訂購、填寫的資料在網路傳輸中的正確性，如果您發現本網站有錯誤或疏失，請立即通知本網站。
<br>
本服務相關禁制行為包括但不限於以下條例：
<br>
(1)散佈或誹謗、侮辱、不雅、反公共秩序或善良風俗不法之文字、圖片或任何形式的檔案。
<br>
(2)侵害或毀損WUFUYANG或他人名譽、隱私權、營業秘密、專利權、肖像權、商標權、著作權其他智慧財產權及其他權利。
<br>
(3)違反依法律或本契約所應負之保密義務。
<br>
(4)惡意批評或在本網站傳輸、散佈電腦病毒等WUFUYANG客製化商品 視為不當行為。
<br>
(5)從事未經WUFUYANG 客製化商品 授權的商業行為。
<br>
3智慧財產權-商標權
<br>
(1)WUFUYANG 客製化商品 所提供的服務或內容，包括所有內文、圖片、頁面設計、商標、網站架設、架構，均受智慧財產權、商標及相關法律保護，在未取得WUFUYANG書面同意之前，所有使用者不可擅自使用、複製、抄襲、重製、授權或轉授權部分或全部本網站的服務內容，若有違反將依法提出刑民事訴訟。
<br>
(2)WUFUYANG提供線上編輯器 客製化商品 ，當您完成設計圖案時將直接經由電繡設備進行生產加工流程，若您無合法權利 得授權他人使用、修改、重製、公開播送、改作、散佈、發行、公開發表某資料，並將前述權利轉授權第三人，請勿擅自將該資料上載、傳送、輸入。任何資料一經您上載、傳送、輸入或提
供至WUFUYANG的公開頁面時，視為您已允許WUFUYANG可以基於宣傳網站之目的，無條件使用、修改、重製、公開播送、改作、散佈、發行、公開發表該等資料，用以製作網頁、電子郵件、印刷品，您對此絕無異議。您並應保證WUFUYANG使用、修改、重製、公開播送、改作、散佈、發行、公開發表、轉授權該
等資料，不致侵害任何第三人之智慧財產權，否則應對WUFUYANG負損害賠償責任 (包括但不限於訴訟費用及律師費用等)。
<br>
4. 客製化商品 規定
<br>
(1)因WUFUYANG商品客製化訂製部分，屬於消費者專屬訂製商品，故無七天鑑賞期及貨到付款服務，若造成不便請見諒。
<br>
(2) WUFUYANG客製化所有商品皆為先付款才寄貨，以免損失雙方權益，若造成不便請見諒。
<br>
(3)由於每台螢幕呈現色彩方式不同，故本身會有色差問題，一般10-15%的色差為合理範圍。色差在正常範圍內屬正常現象，WUFUYANG無法提供退換貨的服務。
<br>
(4)您確認訂單之前，請詳細確認您所選擇各項文字圖案設計，使用者不得以此為退貨及退款的請求，訂購一經確認，恕不退款。本公司不接受任何取消訂單，更換商品或退款要求，請客戶謹慎下單。
<br>
(5) WUFUYANG經消費者所編輯、設計的唯一原始製作資料，提供個別消費者的產品製作服務，本服務屬於客製商品非屬定型化商品或大量生產所取得之販售型商品，故本服務不適用網路購物七天鑑賞期間之退貨規定。
<br>
5.付款方式
<br>
本網站僅接受信用卡付款方式。請確保信用卡資料正確且真實。若發現您所填寫的信用卡資料有不實或盜刷其信用卡的情形時，本網站將暫停或終止您的客製化商品服務。若您的行為涉及違反相關法律，亦將依法追究。
<br>
6.準據法及管轄權
<br>
本服務條款的解釋、補充及適用均以中華民國法令為準據法。
<br>
因本服務條款所發生的訴訟，以臺灣新北市地方法院為第一審管轄法院。
<br>
倘若您無法接受以上客製化商品服務規範，此請勿下單訂製。有違反本約定條款或交易安全等情形時，WUFUYANG擁有暫停或終止您對本網站下所有服務之使用權。
<br>
如非消費者個人因素之商品損毀、運送損壞，其他可歸責於本公司之情況，
<br>
請您於收到產品的七日內，以相機拍下瑕疵發生的情形，並發信給客服人員，
<br>
並且請您將瑕疵品寄還給我們。我們收到商品並進行商品瑕疵或損壞鑑定確認無誤後，立即為您免費重新製作一份同樣規格同樣內容之印製品。
<br>
客服專線02-2603-5008 (週一至週五09:30-17:30) 
<br>
客服信箱service@wufuyang.com.tw
     
               </div>
                
                <p style="font-size:20px;"><input id="agreeCheck" onclick="checkAgree();" type="checkbox" value="1">我確認接受上述條款</p>
              
                <p style="font-size:20px;"><input id="agreeDblCheck" onclick="checkAgree();" type="checkbox" value="1">客製化商品恕不接受退換貨</p>
             </div>
          </div>
          
          <!--底部-->
          <div class="wrapper_line"></div>
          <div id="shopping_box" style="margin-top:10px;">
              <div class="left">
                 <span class="total">Total：</span><span id="total_seven" class="print">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NT.0&nbsp;&nbsp;元</span>
              </div>
              <div class="right">
               　		<button id="step_6-1" class="btn btn-default" onclick="convertion('boxing-tab');clearAgreeParam();showSmWrapper6();"><span class="glyphicon glyphicon-triangle-left"></span>BACK│</button>
                <button id="step_6-2" class="btn btn-default" onclick="showImgWrapper6();addGoods('${pageContext.request.contextPath}');" disabled="disabled">進入購物車<span class="glyphicon glyphicon-triangle-right"></span></button>
              </div>
          </div>
                    
         </div>
          
          <!-- img_wrapper6 -->
          <div id="img_wrapper6">
              <a  onclick="convertion('sock-tab');" ><img src="bruce/images/makeanother.png" height="285" width="290"></a>
              <a  onclick="convertion('receiving-tab');loadGoodses('${pageContext.request.contextPath}');showSmWrapper7();"><img src="bruce/images/checkout.png" height="281" width="272"></a>
            
              <div id="top">※商品將於確認結帳後七日內為您寄出</div>
              <div>
				<c:forTokens var="shipmentRemark" items="${shipment.remark}" delims=",">
 					<c:set  var="shipmentRemarkTrim" value="${shipmentRemark}"/>
 					${fn:trim(shipmentRemarkTrim)}<br/>
				</c:forTokens>               
              </div>            
          </div>
        </div>
    
      <!-- 7頁面 確認工單及條款 -->
      <div class="tab-pane fade" id="receiving">
         <div id="sm_wrapper7">
           <div id="product_table">
            <table class="table table-striped">
                <thead>
                  <tr>
                    <th>商品名稱</th>
                    <th>顏色</th>
                    <th>尺寸</th>
                    <th>數量</th>
                    <th>單價</th>
                    <th>折扣價</th>
                    <th>小計</th>
                    <th>刪除</th>
                  </tr>
                </thead>
                <tbody id="showGoodses">
         			<!-- 由jquery 返回參數設定li元件 -->
                </tbody>
            </table>
		</div>
            <div class="total">
              <table style="width:250;">
                <tbody>
                  <tr>
                     <td style="padding-right: 100px;" align="right">商品金額小計</td>
                     <td align="right" id="order_total"></td>
                  </tr>
                  <tr style="border-bottom:1px solid #CCC;">
                     <td style="padding-right: 100px;" align="right">運費小計</td>
                     <td align="right" id="shipping_cost"></td>
                  </tr>
                  <tr style="color:red;">
                     <td style="padding-right: 100px;" align="right">總計</td>
                     <td align="right" id="order_totalAmount"></td>
                  </tr>
                </tbody>
              </table>
            </div>
          
          <!--底部-->
          <div class="wrapper_line"></div>
               
          <div id="shopping_box" style="margin-top:10px;">
              <div class="right">
               　		<button id="step_7-1" class="btn btn-default" onclick="convertion('receipt-tab');"><span class="glyphicon glyphicon-triangle-left"></span>BACK│</button>
                <button id="step_7-2" class="btn btn-default" onclick="showCheckWrapper();">前往結帳<span class="glyphicon glyphicon-triangle-right"></span></button>
              </div>
          </div>            
	</div>          
         
          <!-- check_wrapper -->
          <div id="check_wrapper">
           <form id="orderControllerAddForm" method="post" action="${pageContext.request.contextPath}/homeController/addOrder">
            <div id="customer_data">
              <h3>訂購人資訊</h3>
				  <div class="form-group">
                    <label style="float:left;">中文全名:</label>
                   <input name="name" type="text" class="form-control" required="required" style="width:250px;">
                  </div>
<c:choose>
	<c:when test="${sessionInfo == null}"><!-- sessionInfo 為空表示不在現場，電子郵件需要確認與驗證 -->               
                  <div class="form-group">
                    <label style="float:left;">電子郵件:</label>
                    <input name="email" type="email" class="form-control" required="required" style="width:250px;">
                  </div>
                  <div class="form-group">
                    <label style="float:left;">郵件確認:</label>
                    <input name="reEmail" type="email" class="form-control" required="required" style="width:250px;">
                  </div>                  
	</c:when>   
	<c:otherwise>
                  <div class="form-group">
                    <label style="float:left;">電子郵件:</label>
                    <input name="email" type="email" class="form-control" style="width:250px;">
                  </div>	
	</c:otherwise>         
</c:choose>         
                  <div class="form-group">
                    <label style="float:left;">手機號碼:</label>
                    <input name="phone" type="tel" class="form-control" required="required" style="width:250px;">
                  </div>
                  <div class="form-group">
                    <label style="float:left;">郵遞區號:</label>
                    <div id="twzipcode" style="width:900px; height:30px;">
                        <div data-role="county"  data-style="form-control" style="float:left;"></div>
                        <div data-role="district" data-style="form-control" style="float:left;"></div>
                        <div data-role="zipcode" data-style="form-control" style="float:left; width:80px;"></div>
                    </div>
                  </div>
                  <div class="form-group">
                     <label style="float:left;">送貨地址:</label>
                     <input name="addr" type="text" class="form-control" required="required" style="width:400px;">
                  </div>
				  <div class="form-group">
                     <label style="float:left;">送貨備註:</label>
                     <input name="remark" type="text" class="form-control" style="width:400px;">
                  </div>     
               <div style="width:500px; float:left;">                 
                <h3 style="width:400px !important;">發票資訊</h3>
                  <div class="radio">
                    <label>
                      <input type="radio" name="invoiceType" id="two_invoice" value="0" checked="checked"/>
                     	 二聯式發票
                    </label>
                    <label>
                      <input type="radio" name="invoiceType" id="three_invoice" value="1"/>
                      	三聯式發票
                    </label>
                  </div>
                  <div class="form-group" style="width:500px; margin-left:120px;">
                    <label>公司抬頭:</label>
                    <input name="coTitle" type="text" class="form-control company_data" style="width:180px;">
                    <label>公司統編:</label>
                    <input name="taxNo" type="text" class="form-control company_data" style="width:180px;">
                  </div>
                 </div>
                <div style="width:300px; float:left;">
                 <h3 style="width:400px !important;">付款方式</h3>
<c:choose>
	<c:when test="${sessionInfo == null}"><!-- sessionInfo 為空表示不在現場，只能用線上信用卡支付 -->  
                  <div class="radio">
                    <label>
                      <input type="radio" name="checkoutType" id="checkoutType" value="1" checked="checked"/>
                      	線上信用卡支付
                    </label>
                  </div>    	                     
	</c:when>
	<c:otherwise>
                  <div class="radio">
                    <label>
                      <input type="radio" name="checkoutType" id="checkoutType" value="0" checked="checked"/>
                      	臨櫃現金結帳
                    </label>
                  </div>
                  <div class="radio">
                    <label>
                      <input type="radio" name="checkoutType" id="checkoutType" value="1"/>
                      	線上信用卡支付
                    </label>
                  </div>   	
	</c:otherwise>
</c:choose>              
                </div>
               </div>          
          <!--底部-->
          <div class="wrapper_line"></div>
               
          <div id="shopping_box" style="margin-top:10px;">
              <div class="right">
               　		<button class="btn btn-default" onclick="showSmWrapper7();"><span class="glyphicon glyphicon-triangle-left"></span>BACK│</button>
                <button id="orderControllerAddSubmit" type="submit" class="btn btn-default">確認送出<span class="glyphicon glyphicon-triangle-right"></span></button>
              </div>
          </div> 
            
         </form>                    
        </div>   
        
      <!-- 8頁面 交易處理緩存頁面 -->
       <div id="waitting">
          <div style="width:1000px; height:300px; text-align:center; margin-top:120px; font-family:'微軟正黑體'">
            <h2>您的訂單已送出</h2>
            <h2>訂單資料處理中，請稍候....</h2>
          </div>
          
            <!--底部-->
            <div class="wrapper_line"></div>
       </div>
      <!-- 8頁面 交易處理緩存頁面 end -->     
             
      <!-- 8頁面 完成 -->
       <div id="finish">
          <div style="width:1000px; height:300px; text-align:center; margin-top:120px; font-family:'微軟正黑體'">
            <h2>感謝您的購買</h2>
            <h2>請至櫃台付費並確認交貨時間</h2>
            <h2>祝您有美好的一天。</h2>
          </div>
          
            <!--底部-->
            <div class="wrapper_line"></div>
            
             <div id="shopping_box" style="margin-top:10px;">
                <div class="right">
                	<button onclick="showMainPage('${pageContext.request.contextPath}');" class="btn btn-default" >回首頁<span class="glyphicon glyphicon-triangle-right"></span></button>
                </div>
             </div>  
       </div>
      <!-- 8頁面 end -->        
          
    </div>

    </div>
  </div>
 
</div>

</div>
<form id="esafeForm" method="post" action="https://www.esafe.com.tw/Service/Etopm.aspx">
 <input type="hidden" id="web" name="web" readonly="readonly"/>
 <input type="hidden" id="MN" name="MN" readonly="readonly"/>
 <input type="hidden" id="OrderInfo" name="OrderInfo" readonly="readonly"/>
 <input type="hidden" id="Td" name="Td" readonly="readonly"/>
 <input type="hidden" id="sna" name="sna" readonly="readonly"/>
 <input type="hidden" id="sdt" name="sdt" readonly="readonly"/>
 <input type="hidden" id="email" name="email" readonly="readonly"/>
 <input type="hidden" id="note1" name="note1" readonly="readonly"/>
 <input type="hidden" id="note2" name="note2" readonly="readonly"/>
 <input type="hidden" id="Card_Type" name="Card_Type" readonly="readonly"/>
 <input type="hidden" id="Country_Type" name="Country_Type" readonly="readonly"/>
 <input type="hidden" id="ChkValue" name="ChkValue" readonly="readonly"/> 
</form>

<script src="bruce/owl-carousel/owl.carousel.js"></script>
<script src="myUtilJS/mainPageFun.js"></script> 
<script src="myUtilJS/mainOnReady.js"></script>
<script src="myUtilJS/layer/layer.js"></script>

<input type="hidden" id="goods_name" readonly="readonly"/>
<input type="hidden" id="goods_itemNo" readonly="readonly"/>
<input type="hidden" id="goods_color" readonly="readonly"/>
<input type="hidden" id="goods_size" readonly="readonly"/>
<input type="hidden" id="goods_textColor" readonly="readonly"/>
<input type="hidden" id="goods_textFont" readonly="readonly"/>
<input type="hidden" id="goods_price" readonly="readonly"/>	
<input type="hidden" id="totalAmount" readonly="readonly"/>	
<input type="hidden" id="goods_stockSizeId" readonly="readonly"/>
<input type="hidden" id="goods_stock" readonly="readonly"/>	

<!-- 折扣條件與參數 -->
<input type="hidden" id="likeFactor" value="${like.factor}" readonly="readonly"/>	
<input type="hidden" id="likeParam" value="${like.param}" readonly="readonly"/>
<input type="hidden" id="fullFactor" value="${full.factor}" readonly="readonly"/>
<input type="hidden" id="fullParam" value="${full.param}" readonly="readonly"/>
<input type="hidden" id="shipmentFactor" value="${shipment.factor}" readonly="readonly"/>
<input type="hidden" id="shipmentParam" value="${shipment.param}" readonly="readonly"/>
</body>
<!-- 字體載入js -->
<script type="text/javascript" src="http://www.youziku.com/UserDownFile/webfont.js"></script> 
<script type="text/javascript">
    WebFont.load({
        custom: {
            urls: ['http://www.youziku.com/webfont/NameCSS/40740','http://www.youziku.com/webfont/NameCSS/44986','http://www.youziku.com/webfont/NameCSS/41519','http://www.youziku.com/webfont/NameCSS/42131','http://www.youziku.com/webfont/NameCSS/46752']
        }
    }); 
</script>
</html>