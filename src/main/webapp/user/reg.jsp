<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript" charset="utf-8">
	$(function() {
		$('#registerDialog').show().dialog({
			modal : true,
			closed : true,
			buttons : [ {
				text : '註冊',
				handler : function() {
					register();
				}
			} ]
		});
	});
	function register() {
		if ($('#regForm').form('validate')) {
			parent.$.messager.progress({
				title : '提示',
				text : '數據處理中，請稍後....'
			});
			$.post('${pageContext.request.contextPath}/userController/reg', $('#regForm').serialize(), function(result) {
				if (result.success) {
					$('#registerDialog').dialog('close');
					$.messager.show({
						title : '提示',
						msg : result.msg,
						showType : 'slide'
					});
					$('#loginForm').form('load', result.obj);
				} else {
					$.messager.alert('錯誤', result.msg, 'error');
				}
				parent.$.messager.progress('close');
			}, "JSON");
		}
	}
</script>
<div id="registerDialog" title="用戶註冊" style="width: 300px; height: 220px; overflow: hidden; display: none;">
	<form id="regForm" method="post">
		<table class="table table-hover table-condensed">
			<tr>
				<th>登錄名</th>
				<td><input name="name" type="text" placeholder="請輸入登錄名" class="easyui-validatebox" data-options="required:true"></td>
			</tr>
			<tr>
				<th>密碼</th>
				<td><input name="pwd" type="password" placeholder="請輸入密碼" class="easyui-validatebox" data-options="required:true"></td>
			</tr>
			<tr>
				<th>重複</th>
				<td><input name="rePwd" type="password" placeholder="請再次輸入密碼" class="easyui-validatebox" data-options="required:true,validType:'eqPwd[\'#regForm input[name=pwd]\']'"></td>
			</tr>
		</table>
	</form>
</div>
