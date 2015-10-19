<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script type="text/javascript">
	$(function() {
		parent.$.messager.progress('close');
		
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
			<table class="table table-hover table-condensed">
				<tr>
					<th>編號</th>
					<td><input name="id" type="text" class="span2" value="${discount.id}" readonly="readonly"></td>
					<th>折扣名稱</th>
					<td><input name="name" type="text" placeholder="折扣名稱" class="easyui-validatebox span2" data-options="required:true" value="${discount.name}" readonly="readonly"></td>
				</tr>
				<tr>
					<th>折扣條件</th>
					<td><input name="factor" type="text" placeholder="折扣條件" class="easyui-numberbox easyui-validatebox span2" data-options="required:true" value="${discount.factor}"></td>
					<th>折扣金額</th>
					<td><input name="param" type="text" placeholder="折扣金額" class="easyui-numberbox easyui-validatebox span2" data-options="required:true" value="${discount.param}"></td>
				</tr>
				<tr>
					<th>折扣描述</th>
					<td colspan="3"><textarea name="remark" id="remark" cols="50" rows="5" style="width:650px;">${discount.remark}</textarea></td>
				</tr>
			</table>
		</form>
	</div>
</div>