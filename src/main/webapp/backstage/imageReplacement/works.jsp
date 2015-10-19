<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script type="text/javascript">
	$(function() {
		parent.$.messager.progress('close');
		
		window.setTimeout(function() {
		    var editor = KindEditor.editor({
				uploadJson : '${pageContext.request.contextPath}/fileController/upload',
				fileManagerJson : '${pageContext.request.contextPath}/fileController/fileManage',
				allowFileManager : true, //允許圖片管理 開啟後再挑選圖片的時候可以直接從圖片空間內挑選
				langType : 'zh_TW'
		    });  
			//給按鈕添加click事件给按钮添加click事件  
		 	KindEditor('#image').click(function() {  
				editor.loadPlugin('image', function() {  
					//圖片視窗的基本參數配置
					editor.plugin.imageDialog({
						showRemote : false, //網路圖片不開啟
						//點擊視窗內"確定"按鈕所執行的邏輯
						clickFn : function(url, title, width, height, border, align) {  
							KindEditor('#remark').val(url);//獲取圖片地址
							
							//即時顯示上傳的圖片
						    $('#imgDIV').attr({src : url});

							editor.hideDialog(); //隱藏視窗
						}  
	            	});  
       			}); 
		      });  
		}, 1);
				
		$('#form').form({
			url : '${pageContext.request.contextPath}/discountController/edit',
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
					parent.$.modalDiscountDialog.handler.dialog('close');
				} else {
					parent.$.messager.alert('錯誤', result.msg, 'error');
				}
			}
		});
	});
</script>
<div class="easyui-layout" data-options="fit:true,border:false">
	<div data-options="region:'center',border:false" title="" style="overflow: hidden;">
		<form id="form" method="post">
		<input type="hidden" name="factor" value="${discount.factor}" readonly="readonly"/>
		<input type="hidden" name="param" value="${discount.param}" readonly="readonly"/>
			<table class="table table-hover table-condensed">
				<tr>
					<th>編號</th>
					<td><input name="id" type="text" class="span2" value="${discount.id}" readonly="readonly"></td>
					<th>作品參考</th>
					<td><input name="name" type="text" placeholder="作品參考" class="easyui-validatebox span2" data-options="required:true" value="${discount.name}" readonly="readonly"></td>
				</tr>
				<tr>
					<th>圖片上傳</th>
					<td colspan="2">
						<input id="remark" name="remark" type="text" value="${discount.remark}" readonly="readonly"/>  
					</td>
					<td>
						<input type="button" id="image" value="選擇圖片" />
					</td>
				</tr>						
			</table>
		</form>
		
		<div id="result">
			<img id="imgDIV" src="${discount.remark}" style="margin:10px;width:300px;height:250px;" alt=""/>
		</div> 	
			
	</div>
</div>