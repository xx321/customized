<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
	$(function() {
		parent.$.messager.progress('close');
		$('#form').form({
			url : '${pageContext.request.contextPath}/sizeController/edit',
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
					parent.$.modalDialogChildren.openner_combogrid.combogrid('grid').datagrid('reload'); 
					parent.$.modalDialogChildren.handler.dialog('close');
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
		<input type="hidden" name="status" value="${size.status}" readonly="readonly"/>
			<table class="table table-hover table-condensed">
				<tr>
					<th>编号</th>
					<td><input name="id" type="text" class="span2" value="${size.id}" readonly="readonly"></td>
					<th>尺寸名稱</th>
					<td>
						<input name="name" type="text" placeholder="请输入尺寸名稱" class="easyui-validatebox span2" data-options="required:true" value="${size.name}"/>
					</td>
				</tr>
				<tr>
					<th>排序</th>
					<td colspan="3">
						<input name="seq" class="easyui-numberspinner" style="width: 140px; height: 29px;" required="required" data-options="editable:false,min:1" value="${size.seq}"/>
					</td>
				</tr>				
			</table>
		</form>
	</div>
</div>