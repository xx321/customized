<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
	$(function() {
		parent.$.messager.progress('close');
		$('#form').form({
			url : '${pageContext.request.contextPath}/javaMailController/edit',
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
					parent.$.modalDialog.openner_dataGrid.datagrid('reload');//之所以能在这里调用到parent.$.modalDialog.openner_dataGrid这个对象，是因为user.jsp页面预定义好了
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
			<table class="table table-hover table-condensed">
				<tr>
					<th>編號</th>
					<td><input name="id" type="text" class="span2" value="${javaMail.id}" readonly="readonly"></td>
					<th>發件人信箱</th>
					<td><input name="from" type="text" placeholder="请输入發件人信箱" class="easyui-validatebox span2" data-options="required:true" value="${javaMail.from}"></td>
				</tr>
				<tr>
					<th>帳號</th>
					<td><input name="username" type="text" placeholder="请输入登錄帳號" class="easyui-validatebox span2" data-options="required:true" value="${javaMail.username}"></td>
					<th>密碼</th>
					<td><input name="password" type="password" placeholder="请输入密碼" class="easyui-validatebox span2" data-options="required:true" value="${javaMail.password}"></td>
					<th></th>
					<td></td>
				</tr>				
				<tr>
					<th>服務器名稱</th>
					<td><input name="host" type="text" placeholder="请输入服務器名稱" class="easyui-validatebox span2" data-options="required:true" value="${javaMail.host}"></td>
					<th>是否需要驗證</th>
					<td>
				        <c:choose>
				            <c:when test="${javaMail.auth == 1}">
								<input type="radio" name="auth" value="1" checked="checked"> 需要 
									&nbsp;&nbsp;&nbsp;
								<input type="radio" name="auth" value="0"> 不需要
				            </c:when>
				            <c:otherwise>
				     			<input type="radio" name="auth" value="1"> 需要
									&nbsp;&nbsp;&nbsp;
								<input type="radio" name="auth" value="0" checked="checked"> 不需要
				            </c:otherwise>
				        </c:choose>
					</td>
				</tr>
				<tr>
					<th>服務器端口</th>
					<td><input name="port" type="text" placeholder="请输入端口號" class="easyui-numberbox easyui-validatebox span2" data-options="required:true" value="${javaMail.port}"></td>
					<th>排序</th>
					<td><input name="seq" value="${javaMail.seq}" class="easyui-numberspinner" style="width: 140px; height: 29px;" required="required" data-options="editable:false"></td>
				</tr>
				<tr>
					<th>超時時間</th>
					<td><input name="timeout" type="text" placeholder="请输入超時時間" class="easyui-numberbox easyui-validatebox span2" data-options="required:true" value="${javaMail.timeout}"></td>
				</tr>				
			</table>			
		</form>
	</div>
</div>