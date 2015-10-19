<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript" charset="utf-8">
	var loginDialog;
	var defaultUserInfoDialog;
	var loginTabs;
	//var userLoginCombobox;
	//var userLoginCombogrid;
	$(function() {
		loginDialog = $('#loginDialog').show().dialog({
			modal : true,
			closable : false,
			buttons : [ {
				text : '註冊',
				handler : function() {
					$('#registerDialog').dialog('open');
				}
			}, {
				text : '登錄',
				handler : function() {
					loginFun();
				}
			} ]
		});

		//userLoginCombobox = $('#userLoginCombobox').combobox({
		//	url : '${pageContext.request.contextPath}/userController/loginCombobox',
		//	valueField : 'name',
		//	textField : 'name',
		//	required : true,
		//	panelHeight : 'auto',
		//	delay : 500
		//});

		//userLoginCombogrid = $('#userLoginCombogrid').combogrid({
		//	url : '${pageContext.request.contextPath}/userController/loginCombogrid',
		//	panelWidth : 450,
		//	panelHeight : 200,
		//	idField : 'name',
		//	textField : 'name',
		//	pagination : true,
		//	fitColumns : true,
		//	required : true,
		//	rownumbers : true,
		//	mode : 'remote',
		//	delay : 500,
		//	sortName : 'name',
		//	sortOrder : 'asc',
		//	pageSize : 5,
		//	pageList : [ 5, 10 ],
		//	columns : [ [ {
		//		field : 'name',
		//		title : '登錄名',
		//		width : 150
		//	}, {
		//		field : 'createdatetime',
		//		title : '創建時間',
		//		width : 150
		//	}, {
		//		field : 'modifydatetime',
		//		title : '最後修改時間',
		//		width : 150
		//	} ] ]
		//});

		defaultUserInfoDialog = $('#defaultUserInfoDialog').show().dialog({
			top : 0,
			left : 200
		});

		var sessionInfo_userId = '${sessionInfo.id}';
		if (sessionInfo_userId) {/*目的是，如果已经登陆过了，那么刷新页面后也不需要弹出登录窗体*/
			loginDialog.dialog('close');
			defaultUserInfoDialog.dialog('close');
		}

		$('#loginDialog input').keyup(function(event) {
			if (event.keyCode == '13') {
				loginFun();
			}
		});
		//userLoginCombobox.combobox('textbox').keyup(function(event) {
		//	if (event.keyCode == '13') {
		//		loginFun();
		//	}
		//});
		//userLoginCombogrid.combogrid('textbox').keyup(function(event) {
		//	if (event.keyCode == '13') {
		//		loginFun();
		//	}
		//});
	});
	function loginFun() {
		if (layout_west_tree) {//当west功能菜单树加载成功后再执行登录

			loginTabs = $('#loginTabs').tabs('getSelected');//当前选中的tab
			var form = loginTabs.find('form');//选中的tab里面的form
			

			if (form.form('validate')) {
				parent.$.messager.progress({
					title : '提示',
					text : '數據處理中，請稍後....'
				});
				$.post('${pageContext.request.contextPath}/userController/login', form.serialize(), function(result) {
					if (result.success) {
						if (!layout_west_tree_url) {
							layout_west_tree.tree({
								url : '${pageContext.request.contextPath}/resourceController/tree',
								onBeforeLoad : function(node, param) {
									parent.$.messager.progress({
										title : '提示',
										text : '數據處理中，請稍後....'
									});
								}
							});
						}
						$('#loginDialog').dialog('close');
						$('#sessionInfoDiv').html($.formatString('[<strong>{0}</strong>]，欢迎你！您使用[<strong>{1}</strong>]IP登录！', result.obj.name, result.obj.ip));
					} else {
						$.messager.alert('錯誤', result.msg, 'error');
					}
					parent.$.messager.progress('close');
				}, "JSON");
			}
		}
	}
</script>
<div id="loginDialog" title="用戶登錄" style="width: 330px; height: 220px; overflow: hidden; display: none;">
	<div id="loginTabs" class="easyui-tabs" data-options="fit:true,border:false">
		<div title="用户输入模式" style="overflow: hidden; padding: 10px;">
			<form method="post">
				<table class="table table-hover table-condensed">
					<tr>
						<th>登錄名</th>
						<td><input name="name" type="text" placeholder="請輸入登錄名" class="easyui-validatebox" data-options="required:true" value="建龍"></td>
					</tr>
					<tr>
						<th>密碼</th>
						<td><input name="pwd" type="password" placeholder="請輸入密碼" class="easyui-validatebox" data-options="required:true" value="admin"></td>
					</tr>
				</table>
			</form>
		</div>
<!--		<div title="自動補全模式" style="overflow: hidden; padding: 10px;">
			<form method="post">
				<table class="table table-hover table-condensed">
					<tr>
						<th>登錄名</th>
						<td><input id="userLoginCombobox" name="name" type="text" placeholder="請輸入登錄名" class="easyui-validatebox" data-options="required:true" value="建龍" style="height: 29px;"></td>
					</tr>
					<tr>
						<th>密碼</th>
						<td><input name="pwd" type="password" placeholder="請輸入密碼" class="easyui-validatebox" data-options="required:true" value="123456"></td>
					</tr>
				</table>
			</form>
		</div>
		<div title="數據表格模式" style="overflow: hidden; padding: 10px;">
			<form method="post">
				<table class="table table-hover table-condensed">
					<tr>
						<th>登錄名</th>
						<td><input id="userLoginCombogrid" name="name" type="text" placeholder="請輸入登錄名" class="easyui-validatebox" data-options="required:true" value="建龍" style="height: 29px;"></td>
					</tr>
					<tr>
						<th>密碼</th>
						<td><input name="pwd" type="password" placeholder="請輸入密碼" class="easyui-validatebox" data-options="required:true" value="123456"></td>
					</tr>
				</table>
			</form>
		</div> -->
	</div>
</div>
<!-- 
<div id="defaultUserInfoDialog" title="系統測試帳號" style="width: 300px; height: 260px; overflow: hidden; display: none;">
	<div class="well well-small" style="margin: 3px;">請不要隨意更改系統默認帳號的信息，如果想測試，請自已櫎建立用戶進行測試!</div>
	<div class="well well-small" style="margin: 3px;">
		<div>
			<span class="badge">1</span>超級管理員：建龍/123456
		</div>
		<div>
			<span class="badge badge-success">2</span>資源管理員：admin1/123456
		</div>
		<div>
			<span class="badge badge-warning">3</span>角色管理員：admin2/123456
		</div>
		<div>
			<span class="badge badge-important">4</span>用户管理員：admin3/123456
		</div>
		<div>
			<span class="badge badge-info">5</span>數據源管理員：admin4/123456
		</div>
		<div>
			<span class="badge badge-inverse">6</span>BUG管理員：admin5/123456
		</div>
		<div>
			<span class="badge">7</span>來賓用戶：guest/123456
		</div>
	</div>
</div>
 -->