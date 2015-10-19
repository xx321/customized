$(function(){
	//計算金額參數，價錢 : 全域變數
	//0:分類、1:款式、2:花紋、3:顏色、4:電繡圖案、5:包裝
	total_Arr= [0, 0, 0, 0, 0, 0];
	
	//記錄選項ID
	//0:分類、1:款式、2:花紋、3:顏色、4:電繡圖案、5:電繡顏色、6:包裝
	tId_Arr= ['', '', '', '', '', '', ''];
	
	//預設第一頁，下一步控制按鈕失能。
	$('#step_1').attr("disabled",true);
	
	//2頁 上下一步控制  
	$('#img_wrapper').hide();
	
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
                	var sum = 0;
                	for (var i=0; i<total_Arr.length; i++) {
                		sum += parseInt(total_Arr[i]);
                	}  
                    sum = sum * parseInt(input.val());                       
                    setValues('total_amount', '訂單金額', sum+'&nbsp;&nbsp;元');
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
                    var sum = 0;
                	for (var i=0; i<total_Arr.length; i++) {
                		sum += parseInt(total_Arr[i]);
                	} 
                    sum = sum * parseInt(input.val());  
                    setValues('total_amount', '訂單金額', sum+'&nbsp;&nbsp;元');
                    $('#totalAmount').val(sum.toString());
                }else{
                    btn.prop("disabled", true);
                }
                clearInterval(action);
            }, 50);
    	}
    });
    
	//載入電繡圖案分頁
	var obj = $(".embroideryColor").find("button");
	var divsize = obj.size(); //數據條數
	var perpage = 4;  //每頁條數
	var sumpage = Math.ceil(divsize/perpage); //總頁數 
	var i = 1;  //默認第一頁
	obj.hide();
	obj.slice(0,perpage).show();  
	//上一頁   
	$("li.embroideryColor").click(function(){
		$( "li.embroideryColor" ).removeClass( "active" );
		$(this).addClass('active');
	});
	$("#embroideryPrev").click(function(){      
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
	$("#embroideryNext").click(function(){      
		if(i>=sumpage)
		{
			i = sumpage;
			return false;
		}
		obj.hide();
		obj.slice(i*perpage,i*perpage+perpage).show();
		++i;
	});	
	
	//綁定電繡文字輸入框 - 改變電繡文字顯示框內容(文字、顏色、字型)
	$("#embroideryText").on('blur',function() {		
		//設定電繡文字內容
		var element = document.getElementById('textE');
		var elementFinal = document.getElementById('textEFinal');
		var str = '<font class="embroideryShowText">';
		str += $("#embroideryText").val().replace(/(^\s*)|(\s*$)/g, "");	
		str += '</font>';
		element.innerHTML = str;
		elementFinal.innerHTML = str;
		
		//設定電繡文字顏色
		$(".embroideryShowText").css({
			color : $("#embroideryText").css('color')
		});
		//設定電繡文字字型
		$(".embroideryShowText").css(
			'font-family' , $("#embroideryText").css('font-family')
		);
		
		setValues('text', '電繡文字', $("#embroideryText").val().replace(/(^\s*)|(\s*$)/g, ""));
		

		//電繡圖片確認旗標(如果電繡文字輸入長度大於0，通過確認。)
		if ($("#embroideryText").val().replace(/(^\s*)|(\s*$)/g, "").length > 0) {
			embroideryTextFlag = true;
		} else {
			embroideryTextFlag = false;
			$('#step_4-2').attr("disabled",true);
		}
		//判斷旗標(如果選擇為 1:文字，並且文字輸入大於0，開啟按鈕)、(否則兩個旗標都需要通過確認)
	    if ($('input[name=embroideryRadios]:checked').val() == 1 & embroideryTextFlag) {
	    	$('#step_4-2').attr("disabled",false);
	    } else {
	    	if (embroideryPicFlag & embroideryTextFlag) {
	    		$('#step_4-2').attr("disabled",false);
	    	}
	    }
	});
	
	//住址 : 動態下拉式選單
	$('#twzipcode').twzipcode({
	    'css': ['county', 'district', 'zipcode'] // 依序套用至縣市、鄉鎮市區及郵遞區號框
	});
	$("input[name=zipcode]").attr("readonly","readonly");
	$("select[name=county]").addClass('blurValidate'); 
	
	//收件人表單驗證事件
	$(".blurValidate").on('blur',function() {
		if (isNotNull($("input[name=name]")) && isNotNull($("input[name=tel]")) && isNotNull($("input[name=phone]")) 
				&& isNotNull($("input[name=address]")) && isEmail($("input[name=email]")) && $("input[name=zipcode]").val().length>0) {
			$('#step_7-2').attr("disabled",false);
		} else {
			$('#step_7-2').attr("disabled",true);
		}
	});
});