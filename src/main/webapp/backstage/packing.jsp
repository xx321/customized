<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<title>襪子分類</title>
<jsp:include page="../inc.jsp"></jsp:include>
<c:if test="${fn:contains(sessionInfo.resourceList, '/packingController/editPage')}">
	<script type="text/javascript">
		$.canEdit = true;
	</script>
</c:if>
<c:if test="${fn:contains(sessionInfo.resourceList, '/optionController/onSale')}">
	<script type="text/javascript">
		$.canOnSale = true;
	</script>
</c:if>
<c:if test="${fn:contains(sessionInfo.resourceList, '/optionController/offSale')}">
	<script type="text/javascript">
		$.canOffSale = true;
	</script>
</c:if>
<script type="text/javascript">
	var dataGrid;
	$(function() {
		dataGrid = $('#dataGrid').datagrid({
			url : '${pageContext.request.contextPath}/optionController/dataGrid?typeId=6',
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
				field : 'name',
				title : '包裝名稱',
				width : 120
			}, {
				field : 'itemNo',
				title : '貨品編號',
				width : 80
			}, {
				field : 'price',
				title : '包裝價格',
				width : 80
			}, {
				field : 'url',
				title : '圖片路徑',
				width : 180
			}, {
				field : 'typeId',
				title : '選項類型ID',
				width : 150,
				hidden : true
			}, {
				field : 'typeName',
				title : '選項類型',
				width : 80
			}, {
				field : 'seq',
				title : '排序',
				width : 40,
				sortable : true
			}, {
				field : 'action',
				title : '操作',
				width : 40,
				formatter : function(value, row, index) {
					var str = '';
					if ($.canEdit) {
						str += $.formatString('<img onclick="editFun(\'{0}\');" src="{1}" title="編輯"/>', row.id, '${pageContext.request.contextPath}/style/images/extjs_icons/pencil.png');
					}
					return str;
				}
			}, {
				field : 'remark',
				title : '備註',
				width : 120
			}, {
				field : 'statusStr',
				title : '銷售狀態',
				width : 80
			}, {
				field : 'on-off-Sale',
				title : '銷售操作',
				width : 80,
				formatter : function(value, row, index) {
					var str = '';
					if ($.canOnSale) {
						str += $.formatString('<img onclick="onSaleFun(\'{0}\');" src="{1}" title="正常銷售"/>', row.id, '${pageContext.request.contextPath}/style/images/extjs_icons/star.png');
					}
					str += '&nbsp;';
					if ($.canOffSale) {
						str += $.formatString('<img onclick="offSaleFun(\'{0}\');" src="{1}" title="停止銷售"/>', row.id, '${pageContext.request.contextPath}/style/images/extjs_icons/stop.png');
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
	
	function onSaleFun(id) {
		if (id == undefined) {
			var rows = dataGrid.datagrid('getSelections');
			id = rows[0].id;
		}
		if (id) {
			parent.$.messager.progress({
				title : '提示',
				text : '數據處理中，請稍後....'
			});
			$.post('${pageContext.request.contextPath}/optionController/onSale', {
				id : id
			}, function(result) {
				if (result.success) {
					parent.$.messager.alert('提示', result.msg, 'info');
					dataGrid.datagrid('reload');
				}
				parent.$.messager.progress('close');
			}, 'JSON');
		}
	}
	
	function offSaleFun(id) {
		if (id == undefined) {
			var rows = dataGrid.datagrid('getSelections');
			id = rows[0].id;
		}
		if (id) {
			parent.$.messager.confirm('詢問', '您是否要停止銷售當前選項?', function(b) {
				if (b) {
					parent.$.messager.progress({
						title : '提示',
						text : '數據處理中，請稍後....'
					});
					$.post('${pageContext.request.contextPath}/optionController/offSale', {
						id : id
					}, function(result) {
						if (result.success) {
							parent.$.messager.alert('提示', result.msg, 'info');
							dataGrid.datagrid('reload');
						}
						parent.$.messager.progress('close');
					}, 'JSON');
				}
			});
		}
	}
	
	function editFun(id) {
		if (id == undefined) {
			var rows = dataGrid.datagrid('getSelections');
			id = rows[0].id;
		}
		parent.$.modalDialog({
			title : '編輯包裝方式',
			width : 550,
			height : 650,
			href : '${pageContext.request.contextPath}/packingController/editPage?id=' + id,
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
			title : '添加包裝方式',
			width : 550,
			height : 650,
			href : '${pageContext.request.contextPath}/packingController/addPage',
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
		<div data-options="region:'north',title:'查詢條件',border:false" style="height: 80px; overflow: hidden;">
			<form id="searchForm">
				<table class="table table-hover table-condensed" style="display: none;">
					<tr>
						<th style="float: right">包裝名稱</th>
						<td><input name="name" placeholder="可以模糊查詢" class="span2" /></td>
					</tr>
				</table>
			</form>
		</div>
		<div data-options="region:'center',border:false">
			<table id="dataGrid"></table>
		</div>
	</div>
	<div id="toolbar" style="display: none;">
		<c:if test="${fn:contains(sessionInfo.resourceList, '/packingController/addPage')}">
			<a onclick="addFun();" href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:true,iconCls:'pencil_add'">添加包裝方式</a>
		</c:if>
		<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'brick_add',plain:true" onclick="searchFun();">過濾條件</a><a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'brick_delete',plain:true" onclick="cleanFun();">清空條件</a>
	</div>

	<div id="menu" class="easyui-menu" style="width: 120px; display: none;">
		<c:if test="${fn:contains(sessionInfo.resourceList, '/packingController/addPage')}">
			<div onclick="addFun();" data-options="iconCls:'pencil_add'">增加</div>
		</c:if>
		<c:if test="${fn:contains(sessionInfo.resourceList, '/packingController/editPage')}">
			<div onclick="editFun();" data-options="iconCls:'pencil'">編輯</div>
		</c:if>
	</div>
</body>
</html>