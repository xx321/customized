<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
	$(function() {
		parent.$.messager.progress('close');
		$('#form').form({
			url : '${pageContext.request.contextPath}/customerController/add',
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
		<input name="agree" type="hidden" value="0" readonly="readonly"/>
			<table class="table table-hover table-condensed">
				<tr>
					<th>編號</th>
					<td><input name="id" type="text" class="span2" value="${customer.id}" readonly="readonly"></td>
					<th>登錄名稱</th>
					<td><input name="account" type="text" placeholder="请输入登錄名稱" class="easyui-validatebox span2" data-options="required:true" value=""></td>
				</tr>
				<tr>
					<th>密碼</th>
					<td><input name="pwd" type="password" placeholder="请输入密碼" class="easyui-validatebox span2" data-options="required:true"></td>
					<th></th>
					<td></td>
				</tr>
				<tr>
					<th>真實姓名</th>
					<td><input name="name" type="text" placeholder="请输入中文姓名" class="easyui-validatebox span2" data-options="required:true" value=""></td>
					<th>性別</th>
					<td>
						<input type="radio" name="sex" value="1" checked="checked"> 男生 
						&nbsp;&nbsp;&nbsp;
						<input type="radio" name="sex" value="0"> 女生
					</td>
				</tr>
				<tr>
					<th>住家電話</th>
					<td><input name="tel" type="text" placeholder="请输入住家電話" class="easyui-validatebox span2" data-options="required:true" value=""></td>
					<th>生日</th>
					<td><input name="birthdayStr" class="span2" placeholder="點擊選擇時間" onclick="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd'})" readonly="readonly" /></td>
				</tr>
				<tr>
					<th>行動電話</th>
					<td><input name="phone" type="text" placeholder="请输入行動電話" class="easyui-validatebox span2" data-options="required:true" value=""></td>
					<th>電子郵件</th>
					<td><input name="email" type="text" placeholder="请输入電子郵件" class="easyui-validatebox span2" data-options="required:true" value=""></td>
				</tr>
				<tr>
					<th>郵遞區號</th>
					<td><input name="postal" type="text" placeholder="请输入郵遞區號" class="easyui-validatebox span2" data-options="required:true" value=""></td>
					<th>縣/市</th>
					<td><input name="city" type="text" placeholder="请输入居住縣/市" class="easyui-validatebox span2" data-options="required:true" value=""></td>
				</tr>
				<tr>
					<th>鄉/鎮/區</th>
					<td><input name="town" type="text" placeholder="请输入居住鄉/鎮/區" class="easyui-validatebox span2" data-options="required:true" value=""></td>
					<th>地址</th>
					<td><input name="addr" type="text" placeholder="请输入居住地址" class="easyui-validatebox span2" data-options="required:true" value=""></td>
				</tr>
			</table>
		</form>
	</div>
</div>