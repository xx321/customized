<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
	$(function() {
		window.setTimeout(function() {
			parent.$.messager.progress('close');
			
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
							KindEditor('#url').val(url);//獲取圖片地址
							
							//即時顯示上傳的圖片
						    $('#imgDIV').attr({src : url});;

							editor.hideDialog(); //隱藏視窗
						}  
	            	});  
       			}); 
		      });  
		}, 1);

		$('#form').form({
			url : '${pageContext.request.contextPath}/optionController/edit',
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
					parent.$.modalDialog.openner_treeGrid.treegrid('reload');//因為在option.jsp頁面設定好treeGrid，所以添加成功後，使用這個變數刷新treeGrid。
					parent.$.modalDialog.handler.dialog('close');
				}
			}
		});
	});
</script>
<div class="easyui-layout" data-options="fit:true,border:false">
	<div data-options="region:'center',border:false" title="" style="overflow: hidden;">
		<form id="form" method="post">
		<input type="hidden" name="id" value="${option.id}" readonly="readonly"/>
		<input type="hidden" name="status" value="${option.status}" readonly="readonly"/>
		<input type="hidden" name="typeId" value="${option.typeId}" readonly="readonly"/>		
		<input type="hidden" name="pid" value="${option.pid}" readonly="readonly"/>
			<table class="table table-hover table-condensed">
				<tr>
					<th>貨號</th>
					<td><input name="itemNo" type="text" class="span2"/></td>
					<th>選項名稱</th>
					<td><input name="name" type="text" placeholder="请输入資源名稱" class="easyui-validatebox span2" data-options="required:true" value="${option.name}"></td>
				</tr>
				<tr>
					<th>選項價格</th>
					<td><input name="price" type="text" placeholder="请输入選項價格" class="easyui-numberbox span2" value="${option.price}"></td>
					<th>選項類型</th>
					<td>
						${option.typeName}
					</td>
				</tr>
				<tr>
					<th>排序</th>
					<td><input name="seq" value="${option.seq}" class="easyui-numberspinner" style="width: 140px; height: 29px;" required="required" data-options="editable:false"></td>
					<th>上級選項</th>
					<td>
						${option.pname}
					</td>
				</tr>
				<tr>
					<th>圖片上傳</th>
					<td colspan="2">
						<input id="url" name="url" type="text" value="${option.url}" readonly="readonly"/>  
					</td>
					<td>
						<input type="button" id="image" value="選擇圖片" />
					</td>
				</tr>
				<tr>
					<th>備註</th>
					<td colspan="3"><textarea name="remark" rows="" cols="" class="span6">${option.remark}</textarea></td>
				</tr>
			</table>
		</form>
		
		<div id="result">
			<img id="imgDIV" src="${option.url}" style="margin:10px;width:200px;height:300px;" alt=""/>
		</div> 
	</div>
</div>
