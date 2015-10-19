$(function(){
	var localObj = window.location;

	var contextPath = localObj.pathname.split("/")[1];
	
	var basePath = localObj.protocol+"//"+localObj.host+"/"+contextPath;
	
	//計算金額參數，價錢 : 全域變數
	//0:分類、1:款式、2:花紋、3:顏色、4:電繡圖案、5:包裝
	total_Arr= [0, 0, 0, 0, 0, 0];
	
	//記錄選項ID
	//0:分類、1:款式、2:花紋、3:顏色、4:電繡圖案、5:電繡顏色、6:包裝
	tId_Arr= ['', '', '', '', '', '', ''];
	
	//記錄商品圖案訊息
	//0:襪子圖案url、1:電繡圖top、2:電繡圖left、3:電繡圖height、4:電繡圖width
	//5:電繡字top、6:電繡字left、7:電繡字height、8:電繡字width、9:電繡圖deg
	//10:電繡字deg、11:電繡圖url、12:電繡文字、13:電繡字顏色、14:電繡字字型
	open_Arr = ['','','','','','','','','','','','','','#000','Arial'];
	
	//記錄所選擇的襪子流程名稱(分類one>款式two>花紋three)
	title_one = '';
	title_two = '';
	title_three = '';
	
	//記錄電繡文字價格是否計算
	embroideryTextisCount = false;
	
	// 點圖片放大
	$(".fancybox-effects-a").fancybox({
    	helpers: {
        	title : {type : 'outside'},
          overlay : {speedOut : 0}
        }
	});
	$(".fancybox-effects-b").fancybox({
		helpers: {
			title : {type : 'outside'},
			overlay : {speedOut : 0}
		}
	});
	
	
	//載入電繡圖案 資訊
	getEmbroidery(basePath);
	
	//預設第一頁，下一步控制按鈕失能。
	$('#step_1').attr("disabled",true);
	
	//2頁 上下一步控制  
	$('#img_wrapper').hide();
	
	//6頁 上下一步控制  
	$('#img_wrapper6').hide();
	
	//7頁 上下一步控制  
	$('#check_wrapper').hide();
	$('#waitting').hide();
	$('#finish').hide();
	
	//7頁 公司統編
	$('.company_data').attr('disabled', true);
	$("#three_invoice").click(function() {
	    $('.company_data').attr('disabled', false);
	});
	$("#two_invoice").click(function() {
	    $('.company_data').attr('disabled', true);
	    $("input[name=coTitle]").val('');
	    $("input[name=taxNo]").val('');
	});
	//數量選擇框
    var action;
    $(".number-spinner button").click(function () {
        btn = $(this);
        input = btn.closest('.number-spinner').find('input');
        btn.closest('.number-spinner').find('button').prop("disabled", false);

    	if (btn.attr('data-dir') == 'up') {
            action = setInterval(function(){
                if ( input.attr('max') == undefined || parseInt(input.val()) < parseInt(input.attr('max')) ) {
                    input.val(parseInt(input.val())+1);
                    quantity = parseInt(input.val());

                    var sum = 0;
                    if (quantity >= parseInt($('#likeFactor').val())) {
                    	sum = getSum(6) * quantity * parseInt($('#likeParam').val()) /100;
                    } else {
                    	sum = getSum(6) * quantity;
                    }
                    
                    document.getElementById('total_seven').innerHTML = getStr(sum);
                    
                    $('#totalAmount').val(sum.toString());
                }else{
                    btn.prop("disabled", true);
                }
                clearInterval(action);
            }, 50);
    	} else {
            action = setInterval(function(){
                if ( input.attr('min') == undefined || parseInt(input.val()) > parseInt(input.attr('min')) ) {
                    input.val(parseInt(input.val())-1);
                    quantity = parseInt(input.val());

                    var sum = 0;
                    if (quantity >= parseInt($('#likeFactor').val())) {
                    	sum = getSum(6) * quantity * parseInt($('#likeParam').val()) /100;
                    } else {
                    	sum = getSum(6) * quantity;
                    }
                    
                    document.getElementById('total_seven').innerHTML = getStr(sum);
                    
                    $('#totalAmount').val(sum.toString());
                }else{
                    btn.prop("disabled", true);
                }
                clearInterval(action);
            }, 50);
    	}
    });	
	
	
	//<!-- 1.襪子導滑動JS -->
    $("#owl-demo").owlCarousel({
	    items : 3, //10 items above 1000px browser width
	    itemsDesktop : [1000,3], //5 items between 1000px and 901px
	    itemsDesktopSmall : [900,3], // 3 items betweem 900px and 601px
	    itemsTablet: [600,3], //2 items between 600 and 0;
	    pagination : false,
	    itemsMobile : false // itemsMobile disabled - inherit from itemsTablet option
	    
    });   
    //<!-- 5.包裝導滑動JS -->  
    $("#owl-demo5").owlCarousel({
    		items : 4, //10 items above 1000px browser width
    		itemsDesktop : [1000,4], //5 items between 1000px and 901px
    		itemsDesktopSmall : [900,3], // 3 items betweem 900px and 601px
    		itemsTablet: [600,3], //2 items between 600 and 0;
    		pagination : false,
    		itemsMobile : false // itemsMobile disabled - inherit from itemsTablet option
    });

    
	//綁定電繡文字輸入框 - 改變電繡文字顯示框內容(文字、顏色、字型)
	$("#embroideryText").on('blur',function() {				
		$("#embroideryText").val($("#embroideryText").val().replace());
		//移除輸入框 - 字串 前後的空白字元
		var stringObj = $("#embroideryText").val();
		$("#embroideryText").val(stringObj.trim());
		
		if ($("#embroideryText").val().length > 0) {
			setEmbroideryText();
		} else {
			clearEmbroideryText();
		}
	});
		
	//地址套件
    $('#twzipcode').twzipcode({
        'detect': true, // 預設為 false
        'countyName': 'city',     // 預設為 county
        'districtName': 'town', // 預設為 district
        'zipcodeName': 'postal',   // 預設為 zipcode
    });
    
    //重寫添加訂單的Submit事件，改成ajax形式(為了新增成功可以換頁面!)
    $('#orderControllerAddForm').submit(function(event) {
    	event.preventDefault();
    	//驗證表單，如果不成功，返回不動作!
    	success = ValidateForm();
    	if (!success)
    		return;    	
    	showWaitting();
    	
    	$.post($("#orderControllerAddForm").attr( "action"), {
      		name : $("input[name=name]").val(),
      		email : $("input[name=email]").val(),
    		phone : $("input[name=phone]").val(),
    		postal : $("input[name=postal]").val(),
    		city : $("select[name=city]").val(),
    		town : $("select[name=town]").val(),
    		addr : $("input[name=addr]").val(),
    		remark : $("input[name=remark]").val(),
    		invoiceType : $("input[name=invoiceType]").val(),
    		coTitle : $("input[name=coTitle]").val(),
    		taxNo : $("input[name=taxNo]").val(),
    		checkoutType : $("input[name=checkoutType]:checked").val()
    	}, function(result) {
    		if (result.success) {
    			clearRecipientParam();
    			//convertion('finish-tab');
    			
    			//新增訂單完成後，判斷是否選擇信用卡交易
    			//如果是，直接跳轉到紅陽交易系統
    			if (result.obj.checkoutType == 1) {
    				//金流功能有關個資，此功能不演示
    				//BuySafeAction(result.obj);
    				window.location.replace(basePath + "/homeController/finishMainPage"); 
    			} else {
    				window.location.replace(basePath + "/homeController/finishMainPage"); 
    			}
    			
    		} else {
    			alert("庫存數量不足! <br/> 請重新操作，選擇您要的客制化商品。");
    			//如果Session超時，直接跳轉到開始的頁面。
    			window.location.replace(basePath + "/homeController/startMainPage"); 
    		}
    	}, 'JSON');      
    });
    
    //第一頁點擊變色
    //$('.sock_model:first').addClass('active');
    $('.sock_model').click(function() {  
         $('.sock_model.active').removeClass('active');
         $(this).addClass('active'); 
    });  
    $('.button_focus1').click(function() {  
        $('.button_focus1.active').removeClass('active');
        $(this).addClass('active'); 
    });  
    $('.button_focus2').click(function() {  
        $('.button_focus2.active').removeClass('active');
        $(this).addClass('active'); 
    });  
    if ($.finish) {
    	convertion('receiving-tab');
    	showFinish();
    }
});