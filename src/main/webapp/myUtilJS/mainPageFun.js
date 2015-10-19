/**
 * 根據襪子分類ID取得襪子款式
 * @param basePath 基礎路徑${pageContext.request.contextPath}
 * @param pid 父ID
 * @param price 分類的價格
 */
function getStyle(basePath, pid, price, name) {
	$.post(basePath +'/homeController/getOptions', {
		pid : pid
	}, function(result) {
		if (result.success) {
			var element = document.getElementById('sm_sidebar2');
			var str = '';
			str += '<div id="owl-demo2-1" class="owl-carousel">';
			for ( var i = 0; i < result.obj.length; i++) {
				var o = result.obj[i];
				str += '<a class="sock" href="javascript: void(0)" onclick="getPattern(\''+basePath+'\', \''+o.id+'\', \''+o.url+'\', \''+o.name+'\', \''+o.price+'\');setOptionId(\''+o.id+'\', 1)">';
				str += '	<img src="' + o.url + '"  width="250">';
				str += '	' + o.name;
				str += '</a>';							
			}
			str += '</div>';
			element.innerHTML = str;
			//點擊顏色變換
			$('.sock').click(function() {  
		         $('.sock.active').removeClass('active');
		         $(this).addClass('active'); 
		    }); 
			reLoadOWL('owl-demo2-1',3);
			
			$('#step_1').attr("disabled",false);
			
			countTotal('total_one','total_two',price,1);
			
			setTitle('title_one', name, 1);
		} else {
			//如果Session超時，直接跳轉到開始的頁面。
			window.location.replace(basePath + "/homeController/startMainPage"); 
		}
	}, 'JSON');
}

/**
 * 根據襪子款式ID取得襪子花紋
 * @param basePath 基礎路徑${pageContext.request.contextPath}
 * @param pid 父ID
 * @param parentURL 襪子款式的圖片路徑
 * @param price 款式的價格
 */
function getPattern(basePath, pid, parentURL, name, price) {
	$.post(basePath +'/homeController/getOptions', {
		pid : pid
	}, function(result) {
		if (result.success) {
			var element = document.getElementById('sm_wrapper2-2');
			var str = '';
			str += '<div id="owl-demo2-2" class="owl-carousel">';			
			for ( var i = 0; i < result.obj.length; i++) {
				var o = result.obj[i];     				
				str += '<div style="text-align:center;">';
				str += '	<button id="detail" class="img-thumbnail button_focus"  onclick="getColor(\''+basePath+'\', \''+o.id+'\', \''+o.url+'\', \''+o.itemNo+'\', \''+o.name+'\', \''+o.price+'\', \''+o.remark+'\', \''+o.iconTop+'\', \''+o.iconLeft+'\', \''+o.iconHeight+'\', \''+o.iconWidth+'\', \''+o.iconDeg+'\', \''+o.textTop+'\', \''+o.textLeft+'\', \''+o.textHeight+'\', \''+o.textWidth+'\', \''+o.textDeg+'\');setOptionId(\''+o.id+'\', 2)" ><img  src=' + o.url + '></button>';
				str += '	<div class="product_name">' + o.name + '</div>';
				str += '	<div class="product_id">' + o.itemNo + '</div>';
				str += '	<div class="product_price">NT. ' + o.price + '</div>';
				str += '</div>';				
			}
			str += '</div>';
			str += '<div onclick="prevOWL(\'owl-demo2-2\')" class="glyphicon glyphicon-menu-left"></div>';
			str += '<div onclick="nextOWL(\'owl-demo2-2\')" class="glyphicon glyphicon-menu-right"></div>';
			element.innerHTML = str;	
			
			reLoadOWL('owl-demo2-2',4);	
			
		    $('#step_2-2').attr("disabled",false);	
		    
		    countTotal('total_two','total_three',price,2);	 
		    
		    setTitle('title_two', name, 2);
		    //點擊變色
		    $('.button_focus').click(function() {  
		         $('.button_focus.active').removeClass('active');
		         $(this).addClass('active'); 
		    });  
		    
		} else {
			//如果Session超時，直接跳轉到開始的頁面。
			window.location.replace(basePath + "/homeController/startMainPage"); 
		}
	}, 'JSON');
}

/**
 * 清除款式頁面參數
 */
function clearStyleParam() {
    $('#step_2-2').attr("disabled",true);
    countTotal('total_two','total_three',0,2);
}

/**
 * 根據襪子花紋ID取得襪子顏色
 * @param basePath 基礎路徑${pageContext.request.contextPath}
 * @param pid 父ID
 * @param parentURL 襪子花紋的圖片路徑
 * @param price 花紋的價格
 * @param remark 介紹內容
 * @param iconTop 電繡圖案位置TOP
 * @param iconLeft 電繡圖案位置LEFT
 * @param textTop 電繡文字位置TOP
 * @param textLeft 電繡文字位置LEFT
 */
function getColor(basePath, pid, parentURL, itemNo, name, price, remark, iconTop, iconLeft, iconHeight, iconWidth, iconDeg, textTop, textLeft, textHeight, textWidth, textDeg) {
	$.post(basePath +'/homeController/getOptions', {
		pid : pid
	}, function(result) {
		if (result.success) {
			var element = document.getElementById('colorResult');
			var str = '';
			str += '<div class="owl-carousel" id="owl-demo3">';
			for ( var i = 0; i < result.obj.length; i++) {
				var o = result.obj[i];
				str += '<input type="button" title="'+o.name+'" style="background-image:url(' + o.colorPic + ');" class="btn color_button button_focus" onclick="getSizes(\''+basePath+'\', \''+o.id+'\', \''+o.url+'\', \''+o.name+'\', \''+o.price+'\');setOptionId(\''+o.id+'\', 3)"/>';
				if (i == 0) {
					getSizes(basePath, o.id, o.url, o.name, o.price);
					setOptionId(o.id, 3);
				}
			}
			str += '</div>';
			element.innerHTML = str;
			//重新載入襪子顏色分頁息訊。
			reLoadOWL('owl-demo3',6);
		    
		    $('#step_2-4').attr("disabled",false);
		    
		    countTotal('total_three','total_four',price,3);
		    
		    setTitle('title_three', name, 3);
		    
			setValues('item_no', '貨號', itemNo);
			$('#goods_itemNo').val(itemNo);
			setValues('name', '品名', name);
			$('#goods_name').val(name);
			//點擊變色
		    $('.button_focus').click(function() {  
		         $('.button_focus.active').removeClass('active');
		         $(this).addClass('active'); 
		    });  	
		    //介紹內容
		    var introduction = document.getElementById('introduction');
		    introduction.innerHTML = remark;
		    
		    //設定電繡圖案位置
		    $('.iconE').css({
		    	top : parseInt(iconTop)*1.5+'px',
		    	left : parseInt(iconLeft)*1.5+'px',
		    	height : parseInt(iconHeight)*1.5+'px',
		    	width : parseInt(iconWidth)*1.5+'px'
		    });
		    //設定電繡文字位置
		    $('.textE').css({
		    	top : parseInt(textTop)*1.5+'px',
		    	left : parseInt(textLeft)*1.5+'px',
		    	height : parseInt(textHeight)+'px',
		    	width : parseInt(textWidth)*1.5+'px'
		    });
		    
			$('.iconE').css('transform','rotate(' + iconDeg + 'deg)');
	        $('.iconE').css('-webkit-transform','rotate(' + iconDeg + 'deg)'); //給Chrome看的css
	        $('.iconE').css('-ms-transform','rotate(' + iconDeg + 'deg)');  //給IE看的css
	        $('.iconE').css('-moz-transform','rotate(' + iconDeg + 'deg)');  	/* Firefox */
	        
			$('.textE').css('transform','rotate(' + textDeg + 'deg)');
	        $('.textE').css('-webkit-transform','rotate(' + textDeg + 'deg)'); //給Chrome看的css
	        $('.textE').css('-ms-transform','rotate(' + textDeg + 'deg)');  //給IE看的css
	        $('.textE').css('-moz-transform','rotate(' + textDeg + 'deg)');  	/* Firefox */
	        
	        //1:電繡圖top、2:電繡圖left、3:電繡圖height、4:電繡圖width、5:電繡字top
	        //6:電繡字left、7:電繡字height、8:電繡字width、9:電繡圖deg、10:電繡字deg
	        open_Arr[1] = iconTop;
	        open_Arr[2] = iconLeft;
	        open_Arr[3] = iconHeight;
	        open_Arr[4] = iconWidth;
	        open_Arr[5] = textTop;
	        open_Arr[6] = textLeft;
	        open_Arr[7] = textHeight;
	        open_Arr[8] = textWidth;
	        open_Arr[9] = iconDeg;
	        open_Arr[10] = textDeg;
		} else {
			//如果Session超時，直接跳轉到開始的頁面。
			window.location.replace(basePath + "/homeController/startMainPage"); 
		}
	}, 'JSON');	
}

/**
 * 清除花紋頁面參數
 */
function clearPatternParam() {
	$('#step_2-4').attr("disabled",true);
	 
	countTotal('total_three','total_four',0,3);
	
	setValues('item_no', '貨號', '');
	$('#goods_itemNo').val('');
	setValues('name', '品名', '');
	$('#goods_name').val('');
	
    var introduction = document.getElementById('introduction');
    introduction.innerHTML = '';
    
    
	var element = document.getElementById('chooseSize');
	var str = '';
	element.innerHTML = str;	
    $('#colorImg').attr({src : ''});
	countTotal('total_four','total_five',0,4);
	setValues('color', '顏色', '');
	$('#goods_color').val('');
}

/**
 * 根據顏色ID取得尺寸
 * 根據參數設定頁面
 * @param basePath 基礎路徑
 * @param id 襪子襪色ID
 * @param urlPic 顏色的襪字圖片
 * @param remark 介紹內容
 * @param price 顏色的價格
 */
function getSizes(basePath, id, urlPic, name, price) {
	$.post(basePath +'/homeController/getSizes', {
		id : id
	}, function(result) {
		if (result.success) {
			var element = document.getElementById('chooseSize');
			var str = '';
			for ( var i = 0; i < result.obj.length; i++) {
				var o = result.obj[i];         
				str += '<button type="button" onclick="changeSize(\''+o.name+'\', \''+o.stockSizeId+'\', \''+o.quantity+'\');" class="btn btn-default button_focus2" style="margin:5px;">' + o.name + '</button>';
			}
			element.innerHTML = str;

			$('#step_3-2').attr("disabled",true);
			 //點擊變色
		    $('.button_focus2').click(function() {  
		         $('.button_focus2.active').removeClass('active');
		         $(this).addClass('active'); 
		    });  
			countTotal('total_four','total_five',price,4);
		} else {
			//如果Session超時，直接跳轉到開始的頁面。
			window.location.replace(basePath + "/homeController/startMainPage"); 
		}
	}, 'JSON');
	
	//即時顯示圖片
    $('#colorImg').attr({src : urlPic});
    $('#colorImg_enlarge').attr({href : urlPic});
    
	//即時顯示圖片
    $('.showColorImg').attr({src : urlPic});
    
    setValues('color', '顏色', name);
    $('#goods_color').val(name);
    //0:襪子圖案url
    open_Arr[0] = urlPic;
}

/**
 * 清除顏色頁面參數
 */
function clearColorParam() {	
	$('#step_3-2').attr("disabled",true);
	setValues('size', '尺寸', '');
	$('#goods_size').val('');
	$('#quantity_input').attr('max', 25);
	$('#goods_stockSizeId').val('');
	$('#goods_stock').val(25);
}

/**
 * 根據選擇器的選擇改變尺寸訊息設定
 * 因為Google 不支持option 底下的onclick方法。
 * 所以改用select 上的 onclick 方法。
 * sizeName 為 option 的自定義屬性。息
 */
function changeSize(name, stockSizeId, quantity) {
	$('#step_3-2').attr("disabled",false);
	setValues('size', '尺寸', name);
	$('#goods_size').val(name);
	quantity = quantity < 25 ? quantity : 25;
	$('#quantity_input').attr('max', quantity);
	$('#goods_stockSizeId').val(stockSizeId);
	$('#goods_stock').val(quantity);
}

function getEmbroidery(basePath) {
	$.post(basePath +'/homeController/getParentOptions', {
		pid : 4
	}, function(result) {
		if (result.success) {
			var element = document.getElementById('images');
			var str = '';
			
			str += '<div class="title"><button onclick="clearEmbroideryPic();" type="button" class="btn btn-default default" style="float:left;">取消圖案</button><span style="color:red;">NT.80/</span>個<span><a class="sample_button fancybox-effects-a" href="bruce/images/sample.png" style="float:right;" >Sample</a></span></div>';
			str += '<div id="owl-demo4" class="owl-carousel">';
			for ( var i = 0; i < result.obj.length; i++) {
				var o = result.obj[i];						
				if (i%4 == 0) 
					str += '<div>';			
				str += '<button type="button" class="btn btn-default button_focus" onclick="getEmbroideryColor(\''+basePath+'\', \''+o.url+'\', \''+o.name+'\', \''+o.price+'\');setOptionId(\''+o.id+'\', 4)">';
				str += '	<img src="'+o.url+'" title="'+o.name+'"/>';
				str += '</button>';		
				if (i%4 == 3) 
					str += '</div>';
			}
			str += '</div>';
			element.innerHTML = str;
			//點擊變色
		    $('.button_focus').click(function() {  
		         $('.button_focus.active').removeClass('active');
		         $(this).addClass('active'); 
		    });  
			reLoadOWL('owl-demo4',4);
		} else {
			//如果Session超時，直接跳轉到開始的頁面。
			window.location.replace(basePath + "/homeController/startMainPage"); 
		}
	}, 'JSON');
}

/**
 * 清除電繡頁面參數
 * 清空電繡文字與電繡圖案
 * 選擇電繡方法 0 : 圖案 、 1 : 文字 、 2 : 圖案 + 文字 、 -1 : 不變動
 * @param choose 參數 0 、 1 、 2 、 -1
 */
function clearEmbroideryParam() {	
	clearEmbroideryPic();
	clearEmbroideryText();
}

/**
 * 根據電繡圖案ID取得電繡顏色
 * @param basePath 基礎路徑${pageContext.request.contextPath}
 * @param pid 父ID
 * @param embroideryName 電繡圖案名稱
 * @param price 電繡圖案的價格
 */
function getEmbroideryColor(basePath, url,embroideryName, price) {
	//因應需求改變，電繡圖案取消了顏色選擇 所以方法不變直接將參數設為  '' 、 0 ;
	getEmbroideryColorPic(url, '', embroideryName, 0, price);
	
}

/**
 * 設定電繡圖案顯示圖片
 * @param url 電繡圖路徑
 * @param embroideryName 電繡圖案名稱
 * @param price 電繡顏色的價格
 * @param embroideryPrice 電繡圖案的價格
 */
function getEmbroideryColorPic(url, name, embroideryName, price, embroideryPrice) {
	var elementIcon = document.getElementById('iconE');
	var elementIconFinal = document.getElementById('iconEFinal');
	var strIcon = '<img class="iconEPic" style="position:absolute;" alt="" />';
	elementIcon.innerHTML = strIcon;
	elementIconFinal.innerHTML = strIcon;
    //設定電繡圖案 高跟寬
    $('.iconEPic').css({
    	height :  $('.iconE').css('height'),
    	width : $('.iconE').css('width'),
    });
		
	$('.iconEPic').attr({src : url});
    setValues('pattern', '電鏽圖案', embroideryName);
    
    $(".dte").html("●");
    if (embroideryTextisCount) {
    	countTotal('total_five','total_six',parseInt(price)+parseInt(embroideryPrice)+80,5);
    } else {
    	countTotal('total_five','total_six',parseInt(price)+parseInt(embroideryPrice),5);
    }
    
    //11:電繡圖url
    open_Arr[11] = url;
}
/**
 * 清除所選中的電繡圖案
 */
function clearEmbroideryPic() {
	var elementIcon = document.getElementById('iconE');
	var elementIconFinal = document.getElementById('iconEFinal');
	var strIcon = '';
	elementIcon.innerHTML = strIcon;
	elementIconFinal.innerHTML = strIcon;
	//還原商品顯示訊息 - 電繡圖案
	setValues('pattern', '電鏽圖案', '');
	
	$(".dte").html("○");
	if (embroideryTextisCount) {
		countTotal('total_five','total_six',80,5);
	} else {
		countTotal('total_five','total_six',0,5);
	}
	$('.button_focus.active').removeClass('active');
    //11:電繡圖url
    open_Arr[11] = '';
}

/**
 * 設定電繡文字內容
 */
function setEmbroideryText() {
	//設定電繡文字內容
	var element = document.getElementById('textE');
	var elementFinal = document.getElementById('textEFinal');	                 
	var str = $("#embroideryText").val();	
	element.innerHTML = str;
	elementFinal.innerHTML = str;	
	setValues('text', '電繡文字', $("#embroideryText").val());
	//清除button focus樣式
	$('.button_focus.active').removeClass('active');
	if (!embroideryTextisCount) {//判斷金額未計算，執行
		$(".dtt").html("●");		
		countTotal('total_five','total_six',parseInt(total_Arr[4])+80,5);				
		embroideryTextisCount = true;	//電繡文字金額加上後，旗標變為TRUE(已計算)	
		//設定文字顏色-初始值為黑色
		showText('#000','黑色');
		//設定文字字型-初始值為Arial
		showFamily('NoxchiArialBold44540','NoxchiArialBold44540');
	}
}
/**
 * 清空電繡文字
 */
function clearEmbroideryText() {		
	//清除電繡文字
	var elementText = document.getElementById('textE');
	var elementTextFinal = document.getElementById('textEFinal');
	var strText = '';
	elementText.innerHTML = strText;
	elementTextFinal.innerHTML = strText;
	//還原商品顯示訊息 - 電繡文字 - 前台訂單訊息
	setValues('text', '電繡文字', '');	
	//清除電繡文字輸入框內容 - 後台給值用
	$('#embroideryText').val('');
	//清除button focus樣式
	$('.button_focus1.active').removeClass('active');
	$('.button_focus2.active').removeClass('active');
	$(".dtt").html("○");
	if (embroideryTextisCount) 
		countTotal('total_five','total_six',parseInt(total_Arr[4])-80,5);
	
	//還原商品顯示訊息 - 文字顏色-字型
	embroideryTextisCount = true;//還原之前必須為已計算狀態 
	showText('#000','');
	showFamily('NoxchiArialBold44540','');
	embroideryTextisCount = false;//電繡文字金額減去後，旗標變為FALSE(未計算)
}

/**
 * 點擊按鈕 設定電繡文字顏色(順便重新調整文字、顏色、字型)
 * @param color 顏色參數
 */
function showText(color, name) {
	if (embroideryTextisCount) {
		//設定電繡文字輸入框顏色
		$("#embroideryText").css("color",color);
		//設定電繡文字顏色
		$(".embroideryShowText").css("color",color);
		setValues('text_color', '文字顏色', name);
		$('#goods_textColor').val(name);
	    //13:電繡字顏色
	    open_Arr[13] = color;
	}
}

/**
 * 點擊按鈕 設定電繡文字字型
 * @param family 字型參數
 */
function showFamily(family, name) {
	if (embroideryTextisCount) {
		//設定電繡文字輸入框字型
	    $("#embroideryText").css("font-family",family); 
		//設定電繡文字字型
		$(".embroideryShowText").css('font-family',family);			
		setValues('text_font', '文字字型', name);
		$('#goods_textFont').val(name);
	    //14:電繡字字型
	    open_Arr[14] = family;
	}
}

/**
 * 取得包裝名稱進行設定
 * @param packingName 包裝方式名稱
 */
function getPacking(packingName, price) {
	setValues('packing', '包裝', packingName);
	
	$('#step_5-2').attr("disabled",false);
	
	countTotal('total_six','total_seven',price,6);
}

/**
 * 清除包裝頁面參數
 */
function clearPackingParam() {
	$('#step_5-2').attr("disabled",true);
	//清除包裝的選擇按鈕
	var $radios = $("input[name=optionsRadios]");
	$radios.attr("checked",false);
		
	countTotal('total_six','total_seven',0,6);	
	setValues('packing', '包裝', '');
}

/**
 * 確認同意條款按鈕
 */
function checkAgree() {
	if($("#agreeCheck").prop("checked") && $("#agreeDblCheck").prop("checked")) {
		$('#step_6-2').attr("disabled",false);
	} else {
		$('#step_6-2').attr("disabled",true);
	}
}

/**
 * 清除確認條款頁面參數
 */
function clearAgreeParam() {
	$("#agreeCheck").prop("checked",false);
	$("#agreeDblCheck").prop("checked",false);
	$('#step_6-2').attr("disabled",true);
	
	$('#quantity_input').val('1');
    var sum = getSum(6) * parseInt($('#quantity_input').val());
    document.getElementById('total_seven').innerHTML = getStr(sum);
    
    $('#goods_price').val(sum.toString());
    $('#totalAmount').val(sum.toString());
}

/**
 * 設定商品訊息
 * @param elementId 商品訊息顯示框ID
 * @param title 商品訊息抬頭
 * @param name 商品訊息名稱
 */
function setValues(elementId, title, name) {
	var element = document.getElementById(elementId);
	var str = title;
	str += '&nbsp;&nbsp;：&nbsp;&nbsp;';
	str += name;
	element.innerHTML = str;
}

/**
 * 通過頁籤ID指向下一頁
 * @param elementId 頁籤ID
 */
function convertion(elementId) {
	//指向下一頁
	var element = document.getElementById(elementId);
	element.click();
}

function showImgWrapper() {
	$('#img_wrapper').show();
	$('#sm_wrapper2').hide();
}

function showSmWrapper2() {
	$('#img_wrapper').hide();
	$('#sm_wrapper2').show();
}

function showImgWrapper6() {
    $('#img_wrapper6').show();
    $('#sm_wrapper6').hide();
}

function showSmWrapper6() {
    $('#img_wrapper6').hide();
    $('#sm_wrapper6').show();
}
function showCheckWrapper() {
    $('#check_wrapper').show();
    $('#sm_wrapper7').hide();
    $('#waitting').hide();
	$('#finish').hide();
}
function showSmWrapper7() {
    $('#check_wrapper').hide();
    $('#sm_wrapper7').show();
    $('#waitting').hide();
	$('#finish').hide();
}
function showWaitting() {
    $('#check_wrapper').hide();
    $('#sm_wrapper7').hide();
	$('#waitting').show();
	$('#finish').hide();
}
function showFinish() {
    $('#check_wrapper').hide();
    $('#sm_wrapper7').hide();
    $('#waitting').hide();
	$('#finish').show(); 
}
function showMainPage(basePath) {
	window.location.replace(basePath + "/homeController/startMainPage"); 
}
/**
 * 根據選項編號no(1:分類、2:款式、3:花紋、4:顏色、5:電繡、6:包裝)，計算小計金額，並顯示。
 * @param total_ID 小計顯示DIV框 ID
 * @param price 商品價格
 * @param no 選項編號
 */
function countTotal(total_up,total_down,price,no) {
	total_Arr[parseInt(no)-1] = price;
	
	var sum = getSum(no);
	var str = getStr(sum);
	
	var totalUp = document.getElementById(total_up);
	var totalDown = document.getElementById(total_down);
	totalUp.innerHTML = str;	
	totalDown.innerHTML = str;

	if (total_up == 'total_six') {
		setValues('money', '單價', sum+'&nbsp;&nbsp;元');
		$('#goods_price').val(sum.toString());
		$('#totalAmount').val(sum.toString());
	}
}

function getSum(no) {
	var sum = 0;
	for (var i=0; i<parseInt(no); i++) {
		sum += parseInt(total_Arr[i]);
	}
	return sum;
}

function getStr(sum) {
	var str = '';
	for ( var i = 0; i < (8-sum.toString().length); i++) {
		str += '&nbsp;&nbsp;';
	}
	str += 'NT.';
	str += sum;
	str += '&nbsp;&nbsp;元';
	return str;
}
/**
 * 重新載入襪子款式分頁息訊。
 */
function reloadpagination() {	
	var jsonData = eval(json);
	$.each(jsonData,function(i,n){
		$("#Searchresult").append("<li></li>");  
	});
	var num_entries = $("#Searchresult li").length;	
	var showCount = 10;
	var initpagination = function() {
		
		// 创建分页
		$("#pagination").pagination(num_entries, {
			num_edge_entries: 1, //边缘页数
			num_display_entries: 6, //主体页数
			callback: pageselectCallback,
			items_per_page:showCount //每页显示1项
		});
	 }();	 
	function pageselectCallback(page_index, jq){
		var max_elem = Math.min((page_index+1) *showCount, num_entries);		
		$("#htcList").html("");		
		for(var i=page_index*showCount;i<max_elem;i++){
		var new_content = $("#Searchresult li:eq("+i+")").clone();
			$("#htcList").append(new_content); //装载对应分页的内容
		}
		return false;
	}
}

/**
 * 驗證元件內容是否不為空
 * @param input 元件
 * @returns {Boolean}
 */
function isNotNull(input)
{
	if($(input).val().replace(/(^\s*)|(\s*$)/g, "").length == 0) {
		$(input).focus();
		return false;
	}
	return true;
}

/**
 * 驗證元件內容是否為正確Email
 * @param input 元件
 * @returns {Boolean}
 */
function isEmail(input)
{
	//Regular expression Testing  
	emailRule = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z]+$/;
	
	if ($(input).val().search(emailRule) == -1) {
		$(input).focus();		
		return false;
	}
	return true;
}

/**
 * 驗證元件內容是否為數字
 */
function ValidateNumber(e, pnumber)
{
    if (!/^\d+$/.test(pnumber))
    {
        $(e).val(/^\d+/.exec($(e).val()));
    }
    return false;
}

/**
 * 新增訂單表單驗證
 */
function ValidateForm() {	
	if (!isNotNull($("input[name=name]"))) {
		alert("請輸入收件人姓名!");
		return false;
	}
	if (!$.onSite) {
		if (!isNotNull($("input[name=email]"))) {
			alert("請輸入電子郵件!");
			return false;
		}
		if (!isEmail($("input[name=email]"))) {
			alert("請輸入正確的郵件地址!");
			return false;
		}
		if ($("input[name=email]").val() != $("input[name=reEmail]").val()) {
			alert("電子郵件確認錯誤!");
			return false;
		}
	}
	if (ValidateNumber($("input[name=phone]"), $("input[name=phone]").val())) {
		alert("收件人電話，請輸入全數字!");
		return false;
	}
	if (!isNotNull($("input[name=phone]"))) {
		alert("請輸入收件人電話!");
		return false;
	}
	if (!$("input[name=postal]").val().length>0) {
		alert("請選擇收件人縣市!");
		return false;
	}
	if (!isNotNull($("input[name=addr]"))) {
		lert("請輸入收件人地址!");
		return false;
	}	
	
	return confirm("確認送出嗎?");
}

/**
 * 根據no (指標 -0:分類、1:款式、2:花紋、3:顏色、4:電繡圖案、5:電繡顏色、6:包裝)
 * 記錄選項ID
 */
function setOptionId(optionId, no) {
	tId_Arr[no] = optionId;
}

/**
 * 增加商品訊息至後台Session
 * 成功後重置所有選項訊息
 * @param basePath
 */
function addGoods(basePath) {
	$.post(basePath +'/homeController/addGoods', {
		name : $('#goods_name').val(),
		itemNo : $('#goods_itemNo').val(),
		color : $('#goods_color').val(),
		size : $('#goods_size').val(),
		text : $("#embroideryText").val(),
		textColor : $('#goods_textColor').val(),
		textFont : $('#goods_textFont').val(),
		quantity : $('#quantity_input').val(),
		price : $('#goods_price').val(),
		totalAmount : $('#totalAmount').val(),
		t0Id : tId_Arr[0],
		t1Id : tId_Arr[1],
		t2Id : tId_Arr[2],
		t3Id : tId_Arr[3],
		t4Id : tId_Arr[4],
		t5Id : tId_Arr[5],
		t6Id : tId_Arr[6],
		stockSizeId : $('#goods_stockSizeId').val(),
		stock : $('#goods_stock').val()
	}, function(result) {
		if (result.success) {
			//完成客製化商品，所有參數歸零。
			resetParam();
		} else {
			//如果Session超時，直接跳轉到開始的頁面。
			window.location.replace(basePath + "/homeController/startMainPage"); 
		}
	}, 'JSON');
}

/**
 * 重置所有選項訊息
 */
function resetParam() {
	total_Arr= [0, 0, 0, 0, 0, 0];
	tId_Arr= ['', '', '', '', '', '', ''];	
	open_Arr = ['','','','','','','','','','','','','','#000','Arial'];	
	
	$('.sock_model.active').removeClass('active');
	$('#step_1').attr("disabled",true);
	countTotal('total_one','total_two',0,1);
	showSmWrapper2();
	clearStyleParam();
	clearPatternParam();
	clearColorParam();
	clearEmbroideryParam();
	clearPackingParam();
	clearAgreeParam();	
}

/**
 * 加載購物車訊息
 * @param basePath
 */
function loadShoppingCart(basePath) {
	$.post(basePath +'/homeController/getSessionGoodses', {
	}, function(result) {
		if (result.success) {			
			var element = document.getElementById('shoppingCart_table');
			var str = '';
			str += '<table style="width:300px;" class="table table-striped">';
			str += '  <thead>';
			str += '    <tr>';
			str += '      <th>品名</th>';
			str += '      <th>數量</th>';
			str += '      <th>價格</th>';
			str += '    </tr>';
			str += '  </thead>';
			str += '<tbody id="shoppingCart">';	
			for ( var i = 0; i < result.obj.length; i++) {
				var g = result.obj[i];    
				str += '<tr>';
            	str += '	<td>'+g.name+'</td>';
            	str += '	<td>'+g.quantity+'</td>';
            	str += '	<td>'+g.price+'</td>';
            	str += '</tr>';
			}
			str += '    <tr>';
			str += '	  <td style="font-weight:bold;" colspan="4" align="center">';
			str += '		<a href="javascript: void(0)" onclick="resetParam();loadGoodses(\''+basePath+'\');convertion(\'receiving-tab\');showImgWrapper6();showSmWrapper7();">檢視購物車</a>';
			str += '	  </td>';
			str += '    </tr>';
			str += '  </tbody>';
			str += '</table>';	
			element.innerHTML = str;		
		} else {
			//如果Session超時，直接跳轉到開始的頁面。
			window.location.replace(basePath + "/homeController/startMainPage"); 
		}
	}, 'JSON');
}

/**
 * 加載商品訊息(檢視購物車所有內容)
 * @param basePath
 */
function loadGoodses(basePath) {	
	$.post(basePath +'/homeController/getSessionGoodses', {
	}, function(result) {
		if (result.success) {			
			var element = document.getElementById('product_table');
			var str = '';
			var sum = 0;			
			str += '<table class="table table-striped">';
			str += '  <thead>';
			str += '    <tr>';
			str += '      <th>商品名稱</th>';
			str += '      <th>顏色</th>';
			str += '      <th>尺寸</th>';
			str += '      <th>數量</th>';
			str += '      <th>單價</th>';
			str += '      <th>折扣價</th>';
			str += '      <th>小計</th>';
			str += '      <th>刪除</th>';
			str += '    </tr>';
			str += '  </thead>';
			str += '<tbody id="showGoodses">';						
			for ( var i = 0; i < result.obj.length; i++) {
				var g = result.obj[i];         
				str += '<tr>';
				str += '<td class="product_name">'+g.itemNo+'&nbsp;&nbsp;'+g.name+'</td>';
				str += '<td>'+g.color+'</td>';
				str += '<td>'+g.size+'</td>';
				str += '<td>';
				str += '	<input type="text" data-myid="'+g.id+'" stock="'+g.stock+'" style="width:30px;" maxlength="2" class="num_input" value="'+g.quantity+'"/>';
				str += '</td>';
				str += '<td>'+g.price+'</td>';
				str += '<td style="color:red;">'+g.totalAmount/g.quantity+'</td>';
				str += '<td>'+g.totalAmount+'</td>';
				str += '<td>';
				str += '	<button class="btn btn-danger" onclick="deleteGoods(\''+basePath+'\', \''+g.id+'\');">刪除</button>';
				str += '</td>';
				str += '</tr>';		
				//計算訂單小計金額(total)
				sum += parseInt(g.totalAmount);
			}
			str += '  </tbody>';
			str += '</table>';			
			element.innerHTML = str;
			//計算滿額折扣
			if (sum >= parseInt($('#fullFactor').val())) {	
				sum = sum - parseInt($('#fullParam').val());
			}
			//運費計算滿額免運	
			document.getElementById('order_total').innerHTML = 'NT$&nbsp;&nbsp;' + sum;
			if (sum >= parseInt($('#shipmentFactor').val())) {
				document.getElementById('shipping_cost').innerHTML = '';				
			} else {
				document.getElementById('shipping_cost').innerHTML = 'NT$&nbsp;&nbsp;' + $('#shipmentParam').val();
				sum += parseInt($('#shipmentParam').val());
			}
			
			document.getElementById('order_totalAmount').innerHTML = 'NT$&nbsp;&nbsp;' + sum;
				
			//綁定輸入框事件
			blurNumInput(basePath);
			initAutoNum();
			
			if (result.obj.length<1)
				$('#step_7-2').attr("disabled",true);
			else
				$('#step_7-2').attr("disabled",false);
		} else {
			//如果Session超時，直接跳轉到開始的頁面。
			window.location.replace(basePath + "/homeController/startMainPage"); 
		}
	}, 'JSON');
}

/**
 * 綁定數字輸入框功能
 * 使 class = "num_input" 
 * 能編輯商品數量，連動更新商品小計
 */
function blurNumInput(basePath) {
	//設定輸入框不能為空 也不能為0 (會強制改成1)
	$(".num_input").on('blur',function() {		
		input = $(this);
		if (input.val().replace(/(^\s*)|(\s*$)/g, "") == '' || input.val() == '0') {
			input.val('1');
		}
		if (input.val() > 25) {
			input.val('25');
		}
		if (input.val() - input.attr('stock') > 0) {
			input.val(input.attr('stock'));
		}
		
		editGoodsQuantity(basePath, input.data('myid'), input.val());
	}); 
}

/**
 * 啟動數字輸入框功能(套件)
 */
function initAutoNum() {
	//數字輸入框套件: 選擇商品數量
	var opts = {   
		    vMin: '0',   
		    vMax: '99'  
	}; 
	$(".num_input").autoNumeric('init', opts); 
}

/**
 * 刪除Session 裡的商品
 * @param basePath 
 * @param id 商品ID
 */
function deleteGoods(basePath, id) {
	$.post(basePath +'/homeController/deleteGoods', {
		id : id
	}, function(result) {
		if (result.success) {			
			loadGoodses(basePath);
		} else {
			//如果Session超時，直接跳轉到開始的頁面。
			window.location.replace(basePath + "/homeController/startMainPage"); 
		}
	}, 'JSON');
}

/**
 * 編輯Session 裡的商品數量，連動更新前台商品小計
 * @param basePath
 * @param id 商品ID
 * @param quantity 商品數量
 */
function editGoodsQuantity(basePath, id, quantity) {
	$.post(basePath +'/homeController/editGoodsQuantity', {
		id : id,
		quantity : quantity
	}, function(result) {
		if (result.success) {			
			loadGoodses(basePath);
		} else {
			//如果Session超時，直接跳轉到開始的頁面。
			window.location.replace(basePath + "/homeController/startMainPage"); 
		}
	}, 'JSON');
}

/**
 * 新增一筆訂單 
 * ★這個功能現在並沒有使用到，考慮後期完成所有事項後，刪除掉!
 * @param basePath
 */
function addOrder(basePath) {
	$.post(basePath +'/homeController/addOrder', {
		name : $("input[name=name]").val(),
		tel : $("input[name=tel]").val(),
		phone : $("input[name=phone]").val(),
		postal : $("input[name=zipcode]").val(),
		city : $("select[name=county]").val(),
		town : $("select[name=district]").val(),
		addr : $("input[name=address]").val(),
		email : $("input[name=email]").val(),
	}, function(result) {
		if (result.success) {
			clearRecipientParam();
			convertion('finish-tab');
		} else {
			//如果Session超時，直接跳轉到開始的頁面。
			window.location.replace(basePath + "/homeController/startMainPage"); 
		}
	}, 'JSON');
}

/**
 * 清除所有收件人訊息(前台form輸入框)
 */
function clearRecipientParam() {
	$("input[name=name]").val('');
  	$("input[name=email]").val('');
	$("input[name=phone]").val('');
	$("input[name=postal]").val('');
	$("select[name=city]").val('');
	$("select[name=town]").val('');
	$("input[name=addr]").val('');
	$("input[name=remark]").val('');
	$("input[name=invoiceType]").val('');
	$("input[name=coTitle]").val('');
	$("input[name=taxNo]").val('');
}

/**
 * 完成新增訂單後，取得後台回傳的BuySafeForm
 * 做頁面跳轉至信用卡交易畫面
 * @param BuySafeForm
 */
function BuySafeAction(BuySafeForm) {
	$('#web').val(BuySafeForm.web);
	$('#MN').val(BuySafeForm.mn);
	$('#OrderInfo').val(BuySafeForm.orderInfo);
	$('#Td').val(BuySafeForm.td);
	$('#sna').val(BuySafeForm.sna);
	$('#sdt').val(BuySafeForm.sdt);
	$('#email').val(BuySafeForm.email);
	$('#note1').val(BuySafeForm.note1);
	$('#note2').val(BuySafeForm.note2);
	$('#Card_Type').val(BuySafeForm.card_Type);
	$('#Country_Type').val(BuySafeForm.country_Type);
	$('#ChkValue').val(BuySafeForm.chkValue);
	$('#esafeForm').submit();
}

/**
 * 重新載入滑動塊
 * @param id 區域DIV的ID
 */
function reLoadOWL(id,quantity) {
    $('#' + id).owlCarousel({
	    items : quantity, //10 items above 1000px browser width
	    itemsDesktop : [1000,quantity], //5 items between 1000px and 901px
	    itemsDesktopSmall : [900,quantity], // 3 items betweem 900px and 601px
	    itemsTablet: [600,3], //2 items between 600 and 0;
	    pagination : false,
	    itemsMobile : false // itemsMobile disabled - inherit from itemsTablet option		    
	});
}
/**
 * 導滑動區塊右移
 * @param id
 */
function nextOWL(id) {
	$('#' + id).trigger('owl.next');
}
/**
 * 導滑動區塊左移
 * @param id
 */
function prevOWL(id) {
	$('#' + id).trigger('owl.prev');
}

/**
 * 設定所選流程名稱(分類one>款式two>花紋three)
 * @param id	顯示區塊ID
 * @param name	流程名稱
 * @param no	流程步驟
 */
function setTitle(id, name, no) {
	var title_Name = '';
	switch (no) {
	case 1:
		title_one = name;
		title_Name = title_one;
		break;
	case 2:
		title_two = name;
		title_Name = title_one +'/'+ title_two;
		break;
	case 3:
		title_three = name;
		title_Name = title_one +'/'+ title_two +'/'+ title_three;
		break;
	}
	var element = document.getElementById(id);
	element.innerHTML = '<h5>'+title_Name+'</h5>';
}

/**
 * 購物車視圖中，商品小圖點擊放大
 * @param o 後台回傳的商品物件
 */
function checkOpenImg(o,viewWidth, viewHeight) {
	openImg(o.openImgUrl, o.iconTop, o.iconLeft, o.iconHeight, o.iconWidth, 
			o.textTop, o.textLeft, o.textHeight, o.textWidth, o.iconDeg, 
			o.textDeg, o.goodsEmbroideryPicUrl, o.embroideryText, o.embroideryTextColor, o.embroideryTextFamily,viewWidth, viewHeight);
}

/**
 * 商品選購流程中，點圖放大觀看
 * @param viewWidth
 * @param viewHeight
 */
function showOpenImg(viewWidth, viewHeight) {
	openImg(open_Arr[0], open_Arr[1], open_Arr[2], open_Arr[3], open_Arr[4], 
			open_Arr[5], open_Arr[6], open_Arr[7], open_Arr[8], open_Arr[9], 
			open_Arr[10], open_Arr[11], $("#embroideryText").val(), open_Arr[13], open_Arr[14], viewWidth,viewHeight);
}
/**
 * 
 * @param goodsImgUrl 襪子圖案url
 * @param iconTop 電繡圖top
 * @param iconLeft 電繡圖left
 * @param iconHeight 電繡圖height
 * @param iconWidth 電繡圖width
 * @param textTop 電繡字top
 * @param textLeft 電繡字left
 * @param textHeight 電繡字height
 * @param textWidth 電繡字width
 * @param iconDeg 電繡圖deg
 * @param textDeg 電繡字deg
 * @param goodsEmbroideryPicUrl 電繡圖url
 * @param embroideryText 電繡文字
 * @param embroideryTextColor 電繡字顏色
 * @param embroideryTextFamily 電繡字字型
 * @param viewWidth 視圖寬度
 * @param viewHeight 視圖高度
 */
function openImg(goodsImgUrl, iconTop, iconLeft, iconHeight, iconWidth, 
		textTop, textLeft, textHeight, textWidth, iconDeg, 
		textDeg, goodsEmbroideryPicUrl, embroideryText, embroideryTextColor, embroideryTextFamily, 
		viewWidth, viewHeight) {
	var str = '<div id="openView" style="position:relative;overflow:hidden;">';
	str+= '	<img id="openImg" class="openImg" style="width:position:absolute;" data-holder-rendered="true" alt="" />';
	str+= '		<div id="openIconDiv" class="openIconDiv" style="position:absolute;">';
	if (goodsEmbroideryPicUrl != '')
		str+= '		<img class="openEmbroideryPic" style="position:absolute;" alt="" />';
	str+= '		</div>';
	str+= '		<div id="openTextDiv" class="openTextDiv" style="text-align:center;position:absolute;">';
	str+= '			<span id="openEmbroideryText" class="embroideryShowText" style="text-align:center;">';
	str+= '				' + embroideryText;
	str+= '			</span>';
	str+= '		</div>';
	str+= '	   </div>';
		
	layer.open({
	    type: 1,
	    title: false,
	    closeBtn: false,
	    area: [viewWidth+'px', viewHeight+'px'],
	    skin: 'layui-layer-nobg', //没有背景色
	    shadeClose: true,
	    content: str
	});
	
    //設定視圖大小
    $('#openView').css({
    	height : viewHeight+'px',
    	width : viewWidth+'px'
    });
    //設定襪子圖片大小
    $('#openImg').css({
    	height : viewHeight+'px',
    	width : viewWidth+'px'
    });
    //設定襪子圖片
	$('#openImg').attr({src : goodsImgUrl});
	
    //設定電繡圖案位置
    $('.openIconDiv').css({
    	top : parseInt(iconTop)*(viewHeight/300)+'px',
    	left : parseInt(iconLeft)*(viewWidth/200)+'px',
    	height : parseInt(iconHeight)*(viewHeight/300)+'px',
    	width : parseInt(iconWidth)*(viewWidth/200)+'px'
    });
    //設定電繡文字位置
    $('.openTextDiv').css({
    	top : parseInt(textTop)*(viewHeight/300)+'px',
    	left : parseInt(textLeft)*(viewWidth/200)+'px',
    	height : parseInt(textHeight)+'px',
    	width : parseInt(textWidth)*(viewWidth/200)+'px'
    });
    //設定電繡圖案角度
	$('.openIconDiv').css('transform','rotate(' + iconDeg + 'deg)');
    $('.openIconDiv').css('-webkit-transform','rotate(' + iconDeg + 'deg)'); //給Chrome看的css
    $('.openIconDiv').css('-ms-transform','rotate(' + iconDeg + 'deg)');  //給IE看的css
    $('.openIconDiv').css('-moz-transform','rotate(' + iconDeg + 'deg)');  	/* Firefox */
    //設定電繡文字角度
	$('.openTextDiv').css('transform','rotate(' + textDeg + 'deg)');
    $('.openTextDiv').css('-webkit-transform','rotate(' + textDeg + 'deg)'); //給Chrome看的css
    $('.openTextDiv').css('-ms-transform','rotate(' + textDeg + 'deg)');  //給IE看的css
    $('.openTextDiv').css('-moz-transform','rotate(' + textDeg + 'deg)');  	/* Firefox */
    
    //設定電繡圖案 高跟寬
    $('.openEmbroideryPic').css({
    	height :  $('.openIconDiv').css('height'),
    	width : $('.openIconDiv').css('width'),
    });
    //設定電繡圖案
	$('.openEmbroideryPic').attr({src : goodsEmbroideryPicUrl});
	//設定電繡文字大小
	$("#openEmbroideryText").css("font-size",8*(viewWidth/200)+'px'); 
	//設定電繡文字顏色
	$("#openEmbroideryText").css("color",embroideryTextColor); 
	//設定電繡文字字型
	$("#openEmbroideryText").css("font-family",embroideryTextFamily); 
}