<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.revision_button {
	-moz-box-shadow:inset 0px 1px 0px 0px #ffffff;
	-webkit-box-shadow:inset 0px 1px 0px 0px #ffffff;
	box-shadow:inset 0px 1px 0px 0px #ffffff;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ededed), color-stop(1, #dfdfdf));
	background:-moz-linear-gradient(top, #ededed 5%, #dfdfdf 100%);
	background:-webkit-linear-gradient(top, #ededed 5%, #dfdfdf 100%);
	background:-o-linear-gradient(top, #ededed 5%, #dfdfdf 100%);
	background:-ms-linear-gradient(top, #ededed 5%, #dfdfdf 100%);
	background:linear-gradient(to bottom, #ededed 5%, #dfdfdf 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ededed', endColorstr='#dfdfdf',GradientType=0);
	background-color:#ededed;
	-moz-border-radius:4px;
	-webkit-border-radius:4px;
	border-radius:4px;
	border:2px solid #dcdcdc;
	display:inline-block;
	cursor:pointer;
	color:#777777;
	font-family:Arial;
	font-size:13px;
	font-weight:bold;
	padding:5px 8px;
	text-decoration:none;
	margin:0 5px 5px 5px;
	text-shadow:0px 1px 0px #ffffff;
}
.revision_button:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #dfdfdf), color-stop(1, #ededed));
	background:-moz-linear-gradient(top, #dfdfdf 5%, #ededed 100%);
	background:-webkit-linear-gradient(top, #dfdfdf 5%, #ededed 100%);
	background:-o-linear-gradient(top, #dfdfdf 5%, #ededed 100%);
	background:-ms-linear-gradient(top, #dfdfdf 5%, #ededed 100%);
	background:linear-gradient(to bottom, #dfdfdf 5%, #ededed 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#dfdfdf', endColorstr='#ededed',GradientType=0);
	background-color:#dfdfdf;
}
.revision_button:active {
	position:relative;
	top:1px;
}
#result{
	float:left;
}
.revision{
	float:left;
}
.revision h5{
	border-bottom:solid 1px #ccc;
}
.revision .button_group{
  margin: auto;
  width: 250px;
  text-align: center;
}
.revision .button_group{
  margin: auto;
  width: 250px;
  text-align: center;
}
</style>
<script type="text/javascript">
	$(function() {
		parent.$.messager.progress('close');
		
		window.setTimeout(function() {
		    var editor = KindEditor.create('#remark', {
		    	width : '500px',
				height : '50px',
				items : [ 'source', '|', 'justifyleft', 'justifycenter', 'justifyright', 'justifyfull', 'insertorderedlist', 'insertunorderedlist', 'indent', 'outdent', 'subscript', 'superscript', 'clearhtml', 'quickformat', 'selectall', '|', 'formatblock', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline', 'strikethrough', 'lineheight', 'removeformat' ],
				uploadJson : '${pageContext.request.contextPath}/fileController/upload',
				fileManagerJson : '${pageContext.request.contextPath}/fileController/fileManage',
				allowFileManager : true, //允許圖片管理 開啟後再挑選圖片的時候可以直接從圖片空間內挑選
				langType : 'zh_TW',
				afterBlur: function(){this.sync();}
		    }, 1); 
			//給按鈕添加click事件给按钮添加click事件  
		 	KindEditor('#image').click(function() {  
				editor.loadPlugin('image', function() {  
					//圖片視窗的基本參數配置
					editor.plugin.imageDialog({
						showRemote : false, //網路圖片不開啟
						//點擊視窗內"確定"按鈕所執行的邏輯
						clickFn : function(url, title, width, height, border, align) {  
							KindEditor('#url').val(url);//獲取圖片地址
							
							//即時顯示上傳的圖片
						    $('#imgDIV').attr({src : url});

							editor.hideDialog(); //隱藏視窗
						}  
	            	});  
       			}); 
		      });  
			//給按鈕添加click事件给按钮添加click事件  
		 	KindEditor('#colorPicBtn').click(function() {  
				editor.loadPlugin('image', function() {  
					//圖片視窗的基本參數配置
					editor.plugin.imageDialog({
						showRemote : false, //網路圖片不開啟
						//點擊視窗內"確定"按鈕所執行的邏輯
						clickFn : function(url, title, width, height, border, align) {  
							KindEditor('#colorPic').val(url);//獲取圖片地址
							
							//即時顯示上傳的圖片
						    $('#colorPicDIV').attr({src : url});

							editor.hideDialog(); //隱藏視窗
						}  
	            	});  
       			}); 
		      });
		}, 1);
		
		sizeCombogrid = $('#sizeIds').combogrid({
			url : '${pageContext.request.contextPath}/sizeController/sizeCombogrid',
			panelWidth : 350,
			panelHeight : 200,
			idField : 'id',
			textField : 'name',
			multiple : true,
			fitColumns : true,
			nowrap : false,
			striped : true,
			rownumbers : true,
			delay : 500,
			sortName : 'seq',
			sortOrder : 'asc',
			pageSize : 5,
			pageList : [ 5, 10 ],
			columns : [ [ {
				field : 'id',
				title : '編號',
				width : 150,
				checkbox : true
			}, {
				field : 'name',
				title : '尺寸',
				width : 100
			}, {
				field : 'action',
				title : '操作',
				width : 50,
				formatter : function(value, row, index) {
					var str = '';
					str += $.formatString('<img onclick="editFun(\'{0}\');" src="{1}" title="編輯"/>', row.id, '${pageContext.request.contextPath}/style/images/extjs_icons/pencil.png');
					return str;
				}
			} ] ]
		});
		
		$('#form').form({
			url : '${pageContext.request.contextPath}/socksController/add',
			onSubmit : function() {
				parent.$.messager.progress({
					title : '提示',
					text : '數據處理中，請稍後....'
				});
				var isValid = $(this).form('validate');
				if (!isValid) {
					parent.$.messager.progress('close');
				}
				return isValid;
			},
			success : function(result) {
				parent.$.messager.progress('close');
				result = $.parseJSON(result);
				if (result.success) {
					parent.$.modalDialog.openner_treeGrid.treegrid('reload',result.obj);//因為在option.jsp頁面設定好treeGrid，所以添加成功後，使用這個變數刷新treeGrid。
					parent.$.modalDialog.handler.dialog('close');
				} else {
					parent.$.messager.alert('錯誤', result.msg, 'error');
				}
			}
		});
		
		$('.mc').draggable().draggable();  
		$('#dd1').draggable({  
			onStopDrag:function(){
				$('input[name="iconTop"]').val($(this).css('top'));
				$('input[name="iconLeft"]').val($(this).css('left'));
            }  
        });
		$('#dd2').draggable({  
			onStopDrag:function(){  
				$('input[name="textTop"]').val($(this).css('top'));
				$('input[name="textLeft"]').val($(this).css('left'));
            }  
        });
		
		objectDeg = { 'dd1' : 0, 'dd2' : 0 };
	});
	//DIV框 向右旋轉
	function rotateRight(id) {
		objectDeg[id]++;
		editDeg(id);
		editRotate(id);
	}
	//DIV框 向左旋轉
	function rotateLeft(id) {
		objectDeg[id]--;		
		editDeg(id);	
		editRotate(id);
	}
	//設定輸入框 旋轉角度 (給後台的資料)
	function editDeg(id) {
		if (id == 'dd1') {
			$('input[name="iconDeg"]').val(objectDeg[id]);
			document.getElementById('dd1Deg').innerHTML = '傾斜 : ' + objectDeg[id] + '度';
		}
		if (id == 'dd2') {
			$('input[name="textDeg"]').val(objectDeg[id]);
			document.getElementById('dd2Deg').innerHTML = '傾斜 : ' + objectDeg[id] + '度';
		}
	}
	//設定DIV框 旋轉角度
	function editRotate(id) {
		$('#'+id).css('transform','rotate(' + objectDeg[id] + 'deg)');
        $('#'+id).css('-webkit-transform','rotate(' + objectDeg[id] + 'deg)'); //給Chrome看的css
        $('#'+id).css('-ms-transform','rotate(' + objectDeg[id] + 'deg)');  //給IE看的css
        $('#'+id).css('-moz-transform','rotate(' + objectDeg[id] + 'deg)');  	/* Firefox */
	}
	//div框 高度放大
	function enlargeHeight(id) {
		var height = parseInt($('#'+id).css('height'))+1;
		$('#'+id).css('height',height+'px');
		changHeight(id);
	}
	//div框 高度縮小
	function narrowHeight(id) {
		var height = parseInt($('#'+id).css('height'))-1;
		$('#'+id).css('height',height+'px');
		changHeight(id);
	}
	//設定輸入框 高度 (給後台的資料)
	function changHeight(id) {
		if (id == 'dd1') {
			$('input[name="iconHeight"]').val($('#'+id).css('height'));
			$('.iconEPic').css('height',$('#'+id).css('height'));
			document.getElementById('dd1Height').innerHTML = '高 : ' + $('#'+id).css('height');
		}
		if (id == 'dd2') {
			$('input[name="textHeight"]').val($('#'+id).css('height'));
			document.getElementById('dd2Height').innerHTML = '高 : ' + $('#'+id).css('height');
		}
	}
	//div框 寬度放大
	function enlargeWidth(id) {
		var width = parseInt($('#'+id).css('width'))+1;
		$('#'+id).css('width',width+'px');
		changWidth(id);
	}
	//div框 寬度縮小
	function narrowWidth(id) {	
		var width = parseInt($('#'+id).css('width'))-1;
		$('#'+id).css('width',width+'px');
		changWidth(id);
	}
	//設定輸入框 寬度 (給後台的資料)
	function changWidth(id) {
		if (id == 'dd1') {
			$('input[name="iconWidth"]').val($('#'+id).css('width'));
			$('.iconEPic').css('width',$('#'+id).css('width'));
			document.getElementById('dd1Width').innerHTML = '寬 : ' + $('#'+id).css('width');
		}
		if (id == 'dd2') {
			$('input[name="textWidth"]').val($('#'+id).css('width'));	
			document.getElementById('dd2Width').innerHTML = '寬 : ' + $('#'+id).css('width');
		}
	}
	
	function addFun() {
		parent.$.modalDialogChildren({
			title : '添加尺寸',
			width : 500,
			height : 180,
			href : '${pageContext.request.contextPath}/sizeController/addPage',
			buttons : [ {
				text : '添加',
				handler : function() {
					parent.$.modalDialogChildren.openner_combogrid = sizeCombogrid;//因为添加成功之后，需要刷新这个dataGrid，所以先预定义好
					var f = parent.$.modalDialogChildren.handler.find('#form');
					f.submit();
				}
			} ]
		});
	}
	
	function editFun(id) {
		if (id == undefined) {
			var rows = dataGrid.datagrid('getSelections');
			id = rows[0].id;
		}
		parent.$.modalDialogChildren({
			title : '編輯尺寸',
			width : 500,
			height : 180,
			href : '${pageContext.request.contextPath}/sizeController/editPage?id=' + id,
			buttons : [ {
				text : '編輯',
				handler : function() {
					parent.$.modalDialogChildren.openner_combogrid = sizeCombogrid;//因为添加成功之后，需要刷新这个dataGrid，所以先预定义好
					var f = parent.$.modalDialogChildren.handler.find('#form');
					f.submit();
				}
			} ]
		});
	}
</script>
<div class="easyui-layout" data-options="fit:true,border:false">
	<div data-options="region:'center',border:false" title="" style="overflow: hidden;">
		<form id="form" method="post">
		<input type="hidden" name="id" value="${option.id}" readonly="readonly"/>
		<input type="hidden" name="status" value="0" readonly="readonly"/>
			<table class="table table-hover table-condensed">
				<tr>
					<th>貨號</th>
					<td>
						<c:if test="${option.typeId == 2||option.typeId ==3}">
							<input name="itemNo" type="text" class="easyui-validatebox span2" data-options="required:true" value=""/>
						</c:if>
					</td>										
					<th>選項名稱</th>
					<td>
						<input name="name" type="text" placeholder="请输入資源名稱" class="easyui-validatebox span2" data-options="required:true" value=""/>
					</td>
				</tr>
				<tr>
					<th>選項價格</th>
					<td><input name="price" type="text" placeholder="请输入選項價格" class="easyui-numberbox span2" data-options="required:true" value="" />
					</td>
					<th>選項類型</th>
					<td>
						<input name="typeId" type="hidden" class="span2" value="${option.typeId}" readonly="readonly" />
						${option.typeName}
					</td>
				</tr>
				<tr>
					<th>排序</th>
					<td><input name="seq" value="100" class="easyui-numberspinner" style="width: 140px; height: 29px;" required="required" data-options="editable:false,min:100">
					</td>
					<th>上級選項</th>
					<td>
						<input name="pid" type="hidden" class="span2" value="${option.pid}" readonly="readonly" />
						${option.pname}
					</td>
				</tr>
				<tr>
					<th>圖片上傳</th>
					<td colspan="2">
						<input id="url" name="url" type="text" value="" data-options="required:true" readonly="readonly"/>  
					</td>
					<td>
						<input type="button" id="image" value="選擇圖片" />
					</td>
				</tr>			
				<tr>
					<th>備註</th>
					<td colspan="3">
						<c:choose>
							<c:when test="${option.typeId == 2}">
								<textarea name="remark" id="remark" rows="5" cols="50" class="span6" style="visibility: hidden;"></textarea>
							</c:when>
							<c:otherwise>
								<input type="hidden" name="remark" id="remark" readonly="readonly"/>
							</c:otherwise>
						</c:choose>
					</td>
				</tr>
			</table>

			<div id="result" style="margin:10px;width:200px;height:300px;position:relative;border:1px solid Black;overflow:hidden;" >
				<img id="imgDIV" style="width:200px;height:300px;position:absolute;" alt="" />
				
				<c:if test="${option.typeId == 2}">
					<div id="dd1" class="mc" style="width:30px;height:30px;position:absolute;border:1px solid Blue;top:10px;left:20px">
						<img class="iconEPic" src="${pageContext.request.contextPath}//bruce/images/example.png" style="width:30px;height:30px;position:absolute;" alt="" />
					</div>
					<div id="dd2" class="mc" style="width:60px;height:15px;position:absolute;border:1px solid Red;top:80px;left:10px">	
						<span style="font-size:12px;color:red;">@@@@@</span>
					</div>	
				</c:if>
				
			</div> 
				<!-- 調整button -->	
				<div class="revision">
				<c:if test="${option.typeId == 2}">
				    <h5>藍色框調整</h5>
				    <div class="button_group">
				    	<label style="float:left;" id="dd1Deg">傾斜 : 0度</label>
				    	<input type="button" onclick="rotateLeft('dd1')" class="revision_button" value="左方向" />
				    	<input type="button" onclick="rotateRight('dd1')" class="revision_button" value="右方向" />
					</div>
				    <div class="button_group">
				    	<label style="float:left;" id="dd1Width">寬 : 30px</label>
				    	<input type="button" onclick="enlargeWidth('dd1')" class="revision_button" value="放大" />
				    	<input type="button" onclick="narrowWidth('dd1')" class="revision_button" value="縮小" />
					</div>
					<div class="button_group">
				    	<label style="float:left;" id="dd1Height">高 : 30px</label>
				    	<input type="button" onclick="enlargeHeight('dd1')" class="revision_button" value="放大" />
				    	<input type="button" onclick="narrowHeight('dd1')" class="revision_button" value="縮小" />
					</div>
					<h5>紅色框調整</h5>
					<div class="button_group">
						<label style="float:left;" id="dd2Deg">傾斜 : 0度</label>
						<input type="button" onclick="rotateLeft('dd2')" class="revision_button" value="左方向" />
						<input type="button" onclick="rotateRight('dd2')" class="revision_button" value="右方向" />
					</div>
					<!-- 
				    <div class="button_group">
				    	<label style="float:left;" id="dd2Width">寬 : 50px</label>
				    	<input type="button" onclick="enlargeWidth('dd2')" class="revision_button" value="放大" />
				    	<input type="button" onclick="narrowWidth('dd2')" class="revision_button" value="縮小" />
					</div>
					<div class="button_group">
				    	<label style="float:left;" id="dd2Height">高 : 10px</label>
				    	<input type="button" onclick="enlargeHeight('dd2')" class="revision_button" value="放大" />
				    	<input type="button" onclick="narrowHeight('dd2')" class="revision_button" value="縮小" />
					</div>
					 -->
				</c:if>
				<c:if test="${option.typeId == 3}">
					<h5>色卡上傳</h5>
					<div class="button_group">
				    	<label style="float:left;">路徑:</label>
						<input id="colorPic" name="colorPic" type="text" value="" readonly="readonly"/>
					</div>						
					<div class="button_group">						
						<img id="colorPicDIV" style="width:24px;height:24px;" alt=""/>				    	
				    	<input type="button" id="colorPicBtn" value="選擇色卡" />
					</div>					
					<h5>設定尺寸</h5>
					<div class="button_group">
				    	<label style="float:left;">選擇:</label>
				    	<input id="sizeIds" name="sizeIds" data-options="editable:false"/>
					</div>		
					<div class="button_group">
						<input type="button" value="新增尺寸" class="revision_button" onclick="addFun();"/>
					</div>	
				</c:if>		
				<c:if test="${option.typeId == 0}">
					<label>★ 設定分類備註尺寸時，請以<span style="color:red;">英文逗號</span>分割。</label>
					<label>★ 請以<span style="color:red;">原始碼樣式</span>編輯，編輯器<span style="color:red;">左上角</span>選項!</label>
					<label>★ 示例 : 14~16cm, 16~18cm, 19~22cm</label>
				</c:if>	
				</div>				
			<c:if test="${option.typeId == 2}">	
				<input type="hidden" name="iconTop" value="10px" readonly="readonly"/>
				<input type="hidden" name="iconLeft" value="20px" readonly="readonly"/>
				<input type="hidden" name="iconHeight" value="30px" readonly="readonly"/>
				<input type="hidden" name="iconWidth" value="30px" readonly="readonly"/>
				<input type="hidden" name="iconDeg" value="0" readonly="readonly"/>
				
				<input type="hidden" name="textTop" value="80px" readonly="readonly"/>
				<input type="hidden" name="textLeft" value="10px" readonly="readonly"/>
				<input type="hidden" name="textHeight" value="15px" readonly="readonly"/>
				<input type="hidden" name="textWidth" value="60px" readonly="readonly"/>
				<input type="hidden" name="textDeg" value="0" readonly="readonly"/>				
			</c:if>				
		</form>	
	</div>
</div>