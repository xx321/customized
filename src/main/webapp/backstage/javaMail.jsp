<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<title>郵件帳號設定</title>
<jsp:include page="../inc.jsp"></jsp:include>
<c:if test="${fn:contains(sessionInfo.resourceList, '/javaMailController/editPage')}">
	<script type="text/javascript">
		$.canEdit = true;
	</script>
</c:if>
<script type="text/javascript">
	var dataGrid;
	$(function() {
		dataGrid = $('#dataGrid').datagrid({
			url : '${pageContext.request.contextPath}/javaMailController/dataGrid',
			fit : true,
			fitColumns : true,
			border : false,
			pagination : true,
			idField : 'id',
			pageSize : 10,
			pageList : [ 10, 20, 30, 40, 50 ],
			sortName : 'seq',
			sortOrder : 'desc',
			checkOnSelect : false,
			selectOnCheck : false,
			nowrap : false,
			striped : true,
			rownumbers : true,
			singleSelect : true,
			frozenColumns : [ [ {
				title : '編號',
				field : 'id',
				width : 150,
				hidden : true
			} ] ],
			columns : [ [ {
				field : 'from',
				title : '發件人信箱',
				width : 150
			}, {
				field : 'username',
				title : '帳號',
				width : 150
			}, {
				field : 'password',
				title : '密碼',
				width : 80,
				formatter : function(value, row, index) {
					return '******';
				}
			}, {
				field : 'host',
				title : '服務器名稱',
				width : 120
			}, {
				field : 'port',
				title : '服務器端口',
				width : 100
			}, {
				field : 'auth',
				title : '驗證碼',
				width : 80
			}, {
				field : 'timeout',
				title : '超時時間',
				width : 100
			}, {
				field : 'seq',
				title : '排序',
				width : 60,
				sortable : true
			}, {
				field : 'action',
				title : '操作',
				width : 80,
				formatter : function(value, row, index) {
					var str = '';
					if ($.canEdit) {
						str += $.formatString('<img onclick="editFun(\'{0}\');" src="{1}" title="編輯"/>', row.id, '${pageContext.request.contextPath}/style/images/extjs_icons/pencil.png');
					}
					return str;
				}
			} ] ],
			toolbar : '#toolbar',
			onLoadSuccess : function() {
				$('#searchForm table').show();
				parent.$.messager.progress('close');

				$(this).datagrid('tooltip');
			},
			onRowContextMenu : function(e, rowIndex, rowData) {
				e.preventDefault();
				$(this).datagrid('unselectAll');
				$(this).datagrid('selectRow', rowIndex);
				$('#menu').menu('show', {
					left : e.pageX,
					top : e.pageY
				});
			}
		});
	});
	
	function editFun(id) {
		if (id == undefined) {
			var rows = dataGrid.datagrid('getSelections');
			id = rows[0].id;
		}
		parent.$.modalDialog({
			title : '編輯郵件帳號',
			width : 550,
			height : 650,
			href : '${pageContext.request.contextPath}/javaMailController/editPage?id=' + id,
			buttons : [ {
				text : '編輯',
				handler : function() {
					parent.$.modalDialog.openner_dataGrid = dataGrid;//因为添加成功之后，需要刷新这个dataGrid，所以先预定义好
					var f = parent.$.modalDialog.handler.find('#form');
					f.submit();
				}
			} ]
		});
	}
	
	function addFun() {	
		parent.$.modalDialog({
			title : '添加郵件帳號',
			width : 550,
			height : 650,
			href : '${pageContext.request.contextPath}/javaMailController/addPage',
			buttons : [ {
				text : '添加',
				handler : function() {
					parent.$.modalDialog.openner_dataGrid = dataGrid;//添加成功後，需要刷新treeGrid，所以先設定變數。
					var f = parent.$.modalDialog.handler.find('#form');
					f.submit();
				}
			} ]
		});
	}

	function searchFun() {
		dataGrid.datagrid('load', $.serializeObject($('#searchForm')));
	}
	function cleanFun() {
		$('#searchForm input').val('');
		dataGrid.datagrid('load', {});
	}
</script>
</head>
<body>
	<div class="easyui-layout" data-options="fit : true,border : false">
		<div data-options="region:'north',title:'查詢條件',border:false" style="height: 160px; overflow: hidden;">
			<form id="searchForm">
				<table class="table table-hover table-condensed" style="display: none;">
					<tr>
						<th>發件人信箱</th>
						<td><input name="from" placeholder="可以模糊查詢" class="span2" /></td>
					</tr>
				</table>
			</form>
		</div>
		<div data-options="region:'center',border:false">
			<table id="dataGrid"></table>
		</div>
	</div>
	<div id="toolbar" style="display: none;">
		<c:if test="${fn:contains(sessionInfo.resourceList, '/javaMailController/addPage')}">
			<a onclick="addFun();" href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:true,iconCls:'pencil_add'">添加郵件帳號</a>
		</c:if>
		<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'brick_add',plain:true" onclick="searchFun();">過濾條件</a><a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'brick_delete',plain:true" onclick="cleanFun();">清空條件</a>
	</div>

	<div id="menu" class="easyui-menu" style="width: 120px; display: none;">
		<c:if test="${fn:contains(sessionInfo.resourceList, '/javaMailController/addPage')}">
			<div onclick="addFun();" data-options="iconCls:'pencil_add'">增加</div>
		</c:if>
		<c:if test="${fn:contains(sessionInfo.resourceList, '/javaMailController/editPage')}">
			<div onclick="editFun();" data-options="iconCls:'pencil'">編輯</div>
		</c:if>
	</div>
</body>
</html>