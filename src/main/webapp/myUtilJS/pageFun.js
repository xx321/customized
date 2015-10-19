/**
 * 根據襪子分類ID取得襪子款式
 * @param basePath 基礎路徑${pageContext.request.contextPath}
 * @param pid 父ID
 * @param price 分類的價格
 */
function getStyle(basePath, pid, price) {
	$.post(basePath +'/homeController/getOptions', {
		pid : pid
	}, function(result) {
		if (result) {
			var element = document.getElementById('sm_sidebar2-1');
			var str = '';
			for ( var i = 0; i < result.length; i++) {
				var o = result[i];
				str += '<button type="button" onclick="getPattern(\''+basePath+'\', \''+o.id+'\', \''+o.url+'\', \''+o.name+'\', \''+o.price+'\');setOptionId(\''+o.id+'\', 1)" class="btn btn-default edit2">'+o.name+'</button>'; 
			}
			element.innerHTML = str;
			
			$('#step_1').attr("disabled",false);
			
			countTotal('total_one','total_two',price,1);
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
		if (result) {
			var element = document.getElementById('Searchresult');
			var str = '';
			for ( var i = 0; i < result.length; i++) {
				var o = result[i];
				str += '    <li><button onclick="getColor(\''+basePath+'\', \''+o.id+'\', \''+o.url+'\', \''+o.price+'\');setOptionId(\''+o.id+'\', 2)" id="detail" class="img-thumbnail"><img src=' + o.url + '></button>';
				str += '      <div class="product_name">' + o.name + '</div>';
				str += '      <div class="product_id">' + o.itemNo + '</div>';
				str += '      <div class="product_price">NT. ' + o.price + '</div>';
				str += '    </li>';
			}
			element.innerHTML = str;
			//即時顯示圖片
		    $('#patternImg').attr({src : parentURL});
		    
		    //重新載入襪子款式分頁息訊。
		    reloadpagination();
		    
		    $('#step_2-2').attr("disabled",false);
		    
		    countTotal('total_two','total_three',price,2);
		}
	}, 'JSON');
	
	setValues('style', '商品款式', name);
}

/**
 * 清除款式頁面參數
 */
function clearStyleParam() {
    $('#patternImg').attr({src : ''});
    $('#step_2-2').attr("disabled",true);
    
    countTotal('total_two','total_three',0,2);
    setValues('style', '商品款式', '');
}

/**
 * 根據襪子花紋ID取得襪子顏色
 * @param basePath 基礎路徑${pageContext.request.contextPath}
 * @param pid 父ID
 * @param parentURL 襪子花紋的圖片路徑
 * @param price 花紋的價格
 */
function getColor(basePath, pid, parentURL, price) {
	$.post(basePath +'/homeController/getOptions', {
		pid : pid
	}, function(result) {
		if (result) {
			var element = document.getElementById('colorResult');
			var str = '';
			str += '<li id="prev" style="float:left; margin-right:4px;"><a aria-label="Previous"><span aria-hidden="true">«</span></a></li>';
			for ( var i = 0; i < result.length; i++) {
				var o = result[i];
				str += '<li class="color"><button onclick="getSizes(\''+basePath+'\', \''+o.id+'\', \''+o.iconTop+'\', \''+o.iconLeft+'\', \''+o.textTop+'\', \''+o.textLeft+'\', \''+o.url+'\', \''+o.remark+'\', \''+o.name+'\', \''+o.price+'\');setOptionId(\''+o.id+'\', 3)"><img class="color_button" src="' + o.colorPic + '"/></button></li>';
			}
			str += '<li id="next" style="float:right; margin-left:4px;"><a aria-label="Next"><span aria-hidden="true">»</span></a></li>';
			element.innerHTML = str;
			//重新載入襪子顏色分頁息訊。
		    reloadColorButton();
		    
		    $('#step_2-4').attr("disabled",false);
		    
		    countTotal('total_three','total_four',price,3);
		}
	}, 'JSON');	
}

/**
 * 清除花紋頁面參數
 */
function clearPatternParam() {
	$('#step_2-4').attr("disabled",true);
	 
	countTotal('total_three','total_four',0,3);
}

/**
 * 根據顏色ID取得尺寸
 * 根據參數設定頁面
 * @param basePath 基礎路徑
 * @param id 襪子襪色ID
 * @param iconTop 電繡圖案位置TOP
 * @param iconLeft 電繡圖案位置LEFT
 * @param textTop 電繡文字位置TOP
 * @param textLeft 電繡文字位置LEFT
 * @param urlPic 顏色的襪字圖片
 * @param remark 介紹內容
 * @param price 顏色的價格
 */
function getSizes(basePath, id, iconTop, iconLeft, textTop, textLeft, urlPic, remark, name, price) {
	$.post(basePath +'/homeController/getSizes', {
		id : id
	}, function(result) {
		if (result) {
			var element = document.getElementById('chooseSize');
			var str = '';
			str += ' <label>選擇尺寸</label>';
			str += '             <select id="selectSize" onclick="changeSize();">';
			for ( var i = 0; i < result.length; i++) {
				var o = result[i];         
				str += '<option sizeName="'+o.name+'">' + o.name + '</option>'; 
			}
			str += '             </select>';
			element.innerHTML = str;
			//預設選擇框選中的列為空白
			$('#selectSize').prop('selectedIndex', -1);
			$('#step_3-2').attr("disabled",true);
			
			countTotal('total_four','total_five',price,4);
		}
	}, 'JSON');
	
	//即時顯示圖片
    $('#colorImg').attr({src : urlPic});
    
    //介紹內容
    var introduction = document.getElementById('introduction');
    introduction.innerHTML = remark;
    
	//即時顯示圖片
    $('.showColorImg').attr({src : urlPic});
    //設定電繡圖案位置
    $('.iconE').css({
    	top : parseInt(iconTop)*1.5+'px',
    	left : parseInt(iconLeft)*1.5+'px'
    });
    //設定電繡文字位置
    $('.textE').css({
    	top : parseInt(textTop)*1.5+'px',
    	left : parseInt(textLeft)*1.5+'px'
    });
    
    setValues('color', '商品顏色', name);
}

/**
 * 清除顏色頁面參數
 */
function clearColorParam() {
	var element = document.getElementById('chooseSize');
	var str = '';
	str += ' <label>選擇尺寸</label>';
	str += '             <select id="selectSize" onclick="changeSize();">';
	str += '             </select>';
	element.innerHTML = str;
	
    $('#colorImg').attr({src : ''});	
	$('#step_3-2').attr("disabled",true);
	
	countTotal('total_four','total_five',0,4);
	setValues('color', '商品顏色', '');
	setValues('size', '商品尺寸', '');
	
    var introduction = document.getElementById('introduction');
    introduction.innerHTML = '';
}

/**
 * 根據選擇器的選擇改變尺寸訊息設定
 * 因為Google 不支持option 底下的onclick方法。
 * 所以改用select 上的 onclick 方法。
 * sizeName 為 option 的自定義屬性。息
 */
function changeSize() {
	var obj=document.getElementById("selectSize");  
	var index=obj.selectedIndex;  
	if (obj.options[index] != undefined) {
		var text=obj.options[index].getAttribute("sizeName");  
		setValues('size', '商品尺寸', text);
		
		$('#step_3-2').attr("disabled",false);
	}
}

/**
 * 根據電繡圖案ID取得電繡顏色
 * @param basePath 基礎路徑${pageContext.request.contextPath}
 * @param pid 父ID
 * @param embroideryName 電繡圖案名稱
 * @param price 電繡圖案的價格
 */
function getEmbroideryColor(basePath, pid,embroideryName, price) {
	$.post(basePath +'/homeController/getOptions', {
		pid : pid
	}, function(result) {
		if (result) {
			var element = document.getElementById('embroideryResult');
			var str = '';
			str += '<ul>';
			for ( var i = 0; i < result.length; i++) {
				var o = result[i];
				str += '<li><a><img onclick="getEmbroideryColorPic(\''+o.url+'\', \''+embroideryName+'\', \''+o.price+'\', \''+price+'\');setOptionId(\''+pid+'\', 4);setOptionId(\''+o.id+'\', 5)" src="' + o.url + '"></a></li>';
			}
			str += '</ul>';
			element.innerHTML = str;
		}
	}, 'JSON');
}

//電繡圖片確認旗標
embroideryPicFlag = false;
//電繡文字確認旗標
embroideryTextFlag = false;
/**
 * 設定電繡圖案顯示圖片
 * @param url 電繡圖路徑
 * @param embroideryName 電繡圖案名稱
 * @param price 電繡顏色的價格
 * @param embroideryPrice 電繡圖案的價格
 */
function getEmbroideryColorPic(url, embroideryName, price, embroideryPrice) {
	$('.iconEPic').attr({src : url});

    setValues('pattern', '電鏽圖案', embroideryName);
    
	//電繡圖片確認旗標
    embroideryPicFlag = true;
	//判斷旗標(如果選擇為 0:圖片，並且圖片旗標通過確認，開啟按鈕)、(否則兩個旗標都需要通過確認)
    if ($('input[name=embroideryRadios]:checked').val() == 0 & embroideryPicFlag) {
    	$('#step_4-2').attr("disabled",false);
    } else {
    	if (embroideryPicFlag & embroideryTextFlag) {
    		$('#step_4-2').attr("disabled",false);
    	}
    }
    
    countTotal('total_five','total_six',parseInt(price)+parseInt(embroideryPrice),5);
}

/**
 * 清除電繡頁面參數
 * 選擇電繡方法 0 : 圖案 、 1 : 文字 、 2 : 圖案 + 文字 、 -1 : 不變動
 * @param choose 參數 0 、 1 、 2 、 -1
 */
function clearEmbroideryParam(choose) {	
	var element = document.getElementById('embroideryResult');
	element.innerHTML = '';
	embroideryPicFlag = false;
	embroideryTextFlag = false;
	$('.iconEPic').attr({src : ''});
	$('#step_4-2').attr("disabled",true);
	clearEmbroidery(choose);
	
	
	countTotal('total_five','total_six',0,5);
}

/**
 * 點擊按鈕 設定電繡文字顏色(順便重新調整文字、顏色、字型)
 * @param color 顏色參數
 */
function showText(color) {
	//設定電繡文字輸入框顏色
	$(".insert_text").css("color",color);
	
	//設定電繡文字顏色
	$(".embroideryShowText").css("color",color);
}

/**
 * 點擊按鈕 設定電繡文字字型
 * @param family 字型參數
 */
function showFamily(family) {
	//設定字型按鈕顯示文字
    $(".dropdown-toggle").text(family);
    
	//設定電繡文字輸入框字型
    $(".insert_text").css("font-family",family);
    
	//設定電繡文字字型
	$(".embroideryShowText").css('font-family',family);
}

/**
 * 清空電繡文字與電繡圖案
 * 選擇電繡方法 0 : 圖案 、 1 : 文字 、 2 : 圖案 + 文字 、 -1 : 不變動
 * @param choose 參數 0 、 1 、 2 、 -1
 */
function clearEmbroidery(choose) {
	showChoose(choose);
	
	//清除電繡圖案
	var elementIcon = document.getElementById('iconE');
	var elementIconFinal = document.getElementById('iconEFinal');
	var strIcon = '<img class="iconEPic" style="width:15px;height:15px;position:absolute;" alt="" />';
	elementIcon.innerHTML = strIcon;
	elementIconFinal.innerHTML = strIcon;
	//清除電繡文字
	var elementText = document.getElementById('textE');
	var elementTextFinal = document.getElementById('textEFinal');
	var strText = '<font class="embroideryShowText"></font>';
	elementText.innerHTML = strText;
	elementTextFinal.innerHTML = strText;
	
	//清除電繡文字輸入框內容
	$('#embroideryText').val('');
	
	//還原電繡文字輸入框顏色
	$(".insert_text").css("color",'#000');
	
	//還原商品顯示訊息 - 電繡文字
	setValues('text', '電繡文字', '');
	
	//還原商品顯示訊息 - 電繡圖案
	setValues('pattern', '電鏽圖案', '');
}

/**
 * 選擇電繡方法 0 : 圖案 、 1 : 文字 、 2 : 圖案 + 文字 、 -1 : 不變動
 * @param choose 參數 0 、 1 、 2 、 -1
 */
function showChoose(choose) {
	switch (choose) {
	case 0:
			$('#sm_sidebar4-2-1').hide();
	     	$('#sm_sidebar4-2-2').show();
		break;
	case 1:
			$('#sm_sidebar4-2-1').show();
	     	$('#sm_sidebar4-2-2').hide();
		break;
	case 2:
			$('#sm_sidebar4-2-1').show();
			$('#sm_sidebar4-2-2').show();
		break;
	}
}

/**
 * 取得包裝名稱進行設定
 * @param packingName 包裝方式名稱
 */
function getPacking(packingName, price) {
	setValues('packing', '包裝方式', packingName);
	
	$('#step_5-2').attr("disabled",false);
	
	countTotal('total_six',undefined,price,6);
}

/**
 * 清除包裝頁面參數
 */
function clearPackingParam() {
	$('#step_5-2').attr("disabled",true);
	//清除包裝的選擇按鈕
	var $radios = $("input[name=optionsRadios]");
	$radios.attr("checked",false);
		
	countTotal('total_six',undefined,0,6);	
	setValues('packing', '包裝方式', '');
}

/**
 * 確認同意條款按鈕
 */
function checkAgree() {
	if($("#agreeCheck").prop("checked")) {
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
	$('#step_6-2').attr("disabled",true);
	
	$('#quantity_input').val('1');
	var sum = 0;
	for (var i=0; i<total_Arr.length; i++) {
		sum += parseInt(total_Arr[i]);
	}
    sum = sum * parseInt($('#quantity_input').val());                       
    setValues('total_amount', '訂單金額', sum+'&nbsp;&nbsp;元');
    $('#totalAmount').val(sum.toString());
}

function clearRecipientParam() {
	$('#step_7-2').attr("disabled",true);
	$("input[name=name]").val('');
	$("input[name=tel]").val('');
	$("input[name=phone]").val('');
	$("input[name=address]").val('');
	$("input[name=email]").val('');
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

/**
 * 根據選項編號no(1:分類、2:款式、3:花紋、4:顏色、5:電繡、6:包裝)，計算小計金額，並顯示。
 * @param total_ID 小計顯示DIV框 ID
 * @param price 商品價格
 * @param no 選項編號
 */
function countTotal(total_up,total_down,price,no) {
	total_Arr[parseInt(no)-1] = price;
	var sum = 0;
	for (var i=0; i<parseInt(no); i++) {
		sum += parseInt(total_Arr[i]);
	}
	var str = '小計:';
	for ( var i = 0; i < (8-sum.toString().length); i++) {
		str += '&nbsp;&nbsp;';
	}
	str += sum;
	str += '&nbsp;&nbsp;元';
	
	var totalUp = document.getElementById(total_up);
	var totalDown = document.getElementById(total_down);
	totalUp.innerHTML = str;	
	if (totalDown != null) {
		totalDown.innerHTML = str;
	} else {
		setValues('money', '商品單價', sum+'&nbsp;&nbsp;元');
		setValues('total_amount', '訂單金額', sum+'&nbsp;&nbsp;元');
		$('#totalAmount').val(sum.toString());
	}
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
	var showCount = 15;
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
 * 重新載入襪子顏色分頁息訊。
 */
function reloadColorButton() {	
	//3選擇您的襪子款式  分頁
	var obj = $(".color").find("button");
	var divsize = obj.size(); //數據條數
	var perpage = 3;  //每頁條數
	var sumpage = Math.ceil(divsize/perpage); //總頁數 
	var i = 1;  //默認第一頁
	obj.hide();
	obj.slice(0,perpage).show();  
	//上一頁   
	$("li.color").click(function(){
		$( "li.color" ).removeClass( "active" );
		$(this).addClass('active');
	});
	
	$("#prev").click(function(){      
		--i;
		if(i<=0)
		{
			i = 1;
			return false;
		}
		obj.hide();
		obj.slice(i*perpage-perpage,i*perpage).show();  
	});
	//下一頁
	$("#next").click(function(){      
		if(i>=sumpage)
		{
			i = sumpage;
			return false;
		}
		obj.hide();
		obj.slice(i*perpage,i*perpage+perpage).show();
		++i;
	});
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
 * 根據no (指標 -0:分類、1:款式、2:花紋、3:顏色、4:電繡圖案、5:電繡顏色、6:包裝)
 * 記錄選項ID
 */
function setOptionId(optionId, no) {
	tId_Arr[no] = optionId;
}

function addGoods(basePath) {
	$.post(basePath +'/goodsController/add', {
		text : $("#embroideryText").val().replace(/(^\s*)|(\s*$)/g, ""),
		quantity : $('#quantity_input').val(),
		totalAmount : $('#totalAmount').val(),
		t0Id : tId_Arr[0],
		t1Id : tId_Arr[1],
		t2Id : tId_Arr[2],
		t3Id : tId_Arr[3],
		t4Id : tId_Arr[4],
		t5Id : tId_Arr[5],
		t6Id : tId_Arr[6]
	}, function(result) {
		if (result) {
			//完成客製化商品，所有參數歸零。
			countTotal('total_one','total_two',0,1);
			clearStyleParam();
			clearPatternParam();
			clearColorParam();
			clearEmbroideryParam(2);
			clearPackingParam();
			clearAgreeParam();
			total_Arr= [0, 0, 0, 0, 0, 0];
			tId_Arr= ['', '', '', '', '', '', ''];
		}
	}, 'JSON');
}

function addOrder(basePath) {
	$.post(basePath +'/orderController/add', {
		name : $("input[name=name]").val(),
		tel : $("input[name=tel]").val(),
		phone : $("input[name=phone]").val(),
		postal : $("input[name=zipcode]").val(),
		city : $("select[name=county]").val(),
		town : $("select[name=district]").val(),
		addr : $("input[name=address]").val(),
		email : $("input[name=email]").val(),
	}, function(result) {
		if (result) {
			clearRecipientParam();
			convertion('finish-tab');
		}
	}, 'JSON');
}