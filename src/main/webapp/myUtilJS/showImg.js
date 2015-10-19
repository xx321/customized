/**
 * 前台 file 輸入框 讀取圖片顯示在頁面上
 * 
 * 	前台元件配置
 *	<p> 
 *		<label>请选择一个图像文件：</label> 
 *		<input type="file" id="file_input" /> 
 *	</p>  
 *	<div id="result"></div> 
 * 
 * 
 */

	/**
	 * result 頁面返回圖片的顯示區塊
	 */
	var result = document.getElementById("result"); 
	/**
	 * file_input 頁面 file 輸入框
	 */
	var input = document.getElementById("file_input"); 
	 
	if(typeof FileReader==='undefined'){ 
	    result.innerHTML = "抱歉，你的浏览器不支持 FileReader"; 
	    input.setAttribute('disabled','disabled'); 
	}else{ 
	    input.addEventListener('change',readFile,false); 
	} 
	
	function readFile(){ 
	    var file = this.files[0]; 
	    if(!/image\/\w+/.test(file.type)){ 
	        alert("文件必须为图片！"); 
	        return false; 
	    } 
	    var reader = new FileReader(); 
	    reader.readAsDataURL(file); 
	    reader.onload = function(e){ 
	        result.innerHTML = '<img src="'+this.result+'" alt=""/>'; 
	    }; 
	} 