<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
	$(function() {
		parent.$.messager.progress('close');
		$('#form').form({
			url : '${pageContext.request.contextPath}/stockController/edit',
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
					parent.$.modalDialog.openner_dataGrid.datagrid('reload');
					parent.$.modalDialog.handler.dialog('close');
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
		<input type="hidden" name="optionId" value="${optionMsize.optionId}" readonly="readonly"/>
		<input type="hidden" name="sizeId" value="${optionMsize.sizeId}" readonly="readonly"/>
			<table class="table table-hover table-condensed">
				<tr>
					<th>貨品編號</th>
					<td><input name="optionName" type="text" class="span2" value="${optionMsize.itemNo}" readonly="readonly"></td>
					<th>尺寸</th>
					<td><input name="optionName" type="text" class="span2" value="${optionMsize.sizeName}" readonly="readonly"></td>
				</tr>				
				<tr>
					<th>商品名稱</th>
					<td><input name="name" type="text" class="span2" value="${optionMsize.optionName}" readonly="readonly"></td>
					<th>庫存數量</th>
					<td>
						<input name="quantity" type="text" placeholder="请输入數量" class="easyui-numberbox span2" data-options="required:true" value="${optionMsize.quantity}"/>
					</td>
				</tr>			
			</table>
		</form>
	</div>
</div>