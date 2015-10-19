<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<title>庫存管理</title>
<jsp:include page="../inc.jsp"></jsp:include>
<c:if test="${fn:contains(sessionInfo.resourceList, '/stockController/editPage')}">
	<script type="text/javascript">
		$.canEdit = true;
	</script>
</c:if>
<c:if test="${fn:contains(sessionInfo.resourceList, '/stockController/exportExcel')}">
	<script type="text/javascript">
		$.canExport = true;
	</script>
</c:if>
<script type="text/javascript">
	var dataGrid;
	$(function() {
		dataGrid = $('#dataGrid').datagrid({
			url : '${pageContext.request.contextPath}/stockController/dataGrid',
			fit : true,
			fitColumns : true,
			border : false,
			pagination : true,
			idField : 'id',
			pageSize : 10,
			pageList : [ 10, 20, 30, 40, 50 ],
			sortName : 'optionName',
			sortOrder : 'desc',
			checkOnSelect : false,
			selectOnCheck : false,
			nowrap : false,
			striped : true,
			rownumbers : true,
			singleSelect : true,
			frozenColumns : [ [ {
				title : '選項編號',
				field : 'optionId',
				width : 150,
				hidden : true
			}, {
				title : '尺寸編號',
				field : 'sizeId',
				width : 150,
				hidden : true
			} ] ],
			columns : [ [ {
				field : 'optionName',
				title : '商品名稱',
				width : 200,
				sortable : true
			}, {
				field : 'itemNo',
				title : '貨品編號',
				width : 120
			}, {
				field : 'sizeName',
				title : '尺寸',
				width : 80
			}, {
				field : 'quantity',
				title : '庫存數量',
				width : 60,
				sortable : true
			}, {
				field : 'action',
				title : '操作',
				width : 60,
				formatter : function(value, row, index) {
					var str = '';
					if ($.canEdit) {
						str += $.formatString('<img onclick="editFun(\'{0}\',\'{1}\');" src="{2}" title="手動調整"/>', row.optionId, row.sizeId, '${pageContext.request.contextPath}/style/images/extjs_icons/pencil.png');
					}
					return str;
				}
			} ] ],
			toolbar : '#toolbar',
			onLoadSuccess : function() {
				$(this).datagrid("autoMergeCells", {
					param : ['optionName', 'itemNo']
				}); 
				
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

	function editFun(optionId, sizeId) {
		if (optionId == undefined || sizeId == undefined) {
			var rows = dataGrid.datagrid('getSelections');
			optionId = rows[0].optionId;
			sizeId = rows[0].sizeId;
		}
		parent.$.modalDialog({
			title : '手動整調庫存數量',
			width : 550,
			height : 250,
			href : '${pageContext.request.contextPath}/stockController/editPage?optionId=' + optionId + '&sizeId=' + sizeId,
			buttons : [ {
				text : '確定',
				handler : function() {
					parent.$.modalDialog.openner_dataGrid = dataGrid;//因为添加成功之后，需要刷新这个dataGrid，所以先预定义好
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
	
	function exportFun() {
		if ($.canExport) {
			if (confirm("匯出庫存表?")) {
				var quantity = $('input[name="quantity"]').val();
				var url = '${pageContext.request.contextPath}/stockController/exportExcel?quantity=' + quantity;
				window.location.href = url;
			}
		}
	}
</script>
</head>
<body>
	<div class="easyui-layout" data-options="fit : true,border : false">
		<div data-options="region:'north',title:'查詢條件',border:false" style="height: 80px; overflow: hidden;">
			<form id="searchForm">
				<table class="table table-hover table-condensed" style="display: none;">
					<tr>
						<th style="float: right">庫存數量:少於</th>
						<td><input name="quantity" placeholder="請輸入數量" class="easyui-numberbox span2" /></td>
					</tr>
				</table>
			</form>
		</div>
		<div data-options="region:'center',border:false">
			<table id="dataGrid"></table>
		</div>
	</div>
	<div id="toolbar" style="display: none;">
		<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'brick_add',plain:true" onclick="searchFun();">過濾條件</a>
		<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'brick_delete',plain:true" onclick="cleanFun();">清空條件</a>
		<c:if test="${fn:contains(sessionInfo.resourceList, '/stockController/exportExcel')}">
			<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'building_go',plain:true" onclick="exportFun();">匯出庫存表</a>
		</c:if>
	</div>

	<div id="menu" class="easyui-menu" style="width: 120px; display: none;">
		<c:if test="${fn:contains(sessionInfo.resourceList, '/stockController/editPage')}">
			<div onclick="editFun();" data-options="iconCls:'pencil'">手動調整</div>
		</c:if>
	</div>
</body>
</html>