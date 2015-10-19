<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<title>出貨櫃台</title>
<jsp:include page="../inc.jsp"></jsp:include>
<c:if test="${fn:contains(sessionInfo.resourceList, '/orderController/shipOK')}">
	<script type="text/javascript">
		$.canEdit = true;
	</script>
</c:if>
<script type="text/javascript">
	var dataGrid;
	$(function() {
		dataGrid = $('#dataGrid').datagrid({         
			url : '${pageContext.request.contextPath}/orderController/shipDataGrid',
			fit : true,
			fitColumns : true,
			border : false,
			pagination : false,
			idField : 'id',
			pageSize : 10,
			pageList : [ 10, 20, 30, 40, 50 ],
			sortName : 'workingDate',
			sortOrder : 'asc',
			checkOnSelect : false,
			selectOnCheck : false,
			nowrap : false,
			singleSelect : true,
			frozenColumns : [ [ {
				field : 'id',
				title : '編號',
				width : 120,
				hidden : true
			}, {
				field : 'code',
				title : '訂單編號',
				width : 100
			}, {
				field : 'recipientName',
				title : '收件人姓名',
				width : 80
			} ] ],
			columns : [ [ {
				field : 'recipientPhone',
				title : '手機號碼',
				width : 120
			}, {
				field : 'recipientPostal',
				title : '郵遞區號',
				width : 80
			}, {
				field : 'recipientCity',
				title : '居住縣/市',
				width : 80
			}, {
				field : 'recipientTown',
				title : '居住地區',
				width : 80
			}, {
				field : 'recipientAddr',
				title : '居住地址',
				width : 150
			}, {
				field : 'totalAmount',
				title : '總金額',
				width : 80
			}, {
				field : 'workingDate',
				title : '加工時間',
				width : 120,
				sortable : true
			}, {
				field : 'action',
				title : '操作',
				width : 100,
				formatter : function(value, row, index) {
					var str = '';
					if ($.canEdit) {
						str += $.formatString('<button class="btn btn-success" onclick="shipFun(\'{0}\');">確認出貨</button>', row.id);
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
				$(this).datagrid('unselectAll').datagrid('uncheckAll');
				$(this).datagrid('selectRow', rowIndex);
				$('#menu').menu('show', {
					left : e.pageX,
					top : e.pageY
				});
			},
			onClickRow : function(rowIndex, rowData) {
				$('#goodsDataGrid').datagrid('load',{
					orderId : rowData.id
				});
			}
		});
			
		goodsDataGrid = $('#goodsDataGrid').datagrid({         
			url : '${pageContext.request.contextPath}/goodsController/dataGridByOrderId',
			title : '單據明細',
			fit : true,
			fitColumns : true,
			border : false,
			pagination : false,
			idField : 'id',
			pageSize : 10,
			pageList : [ 10, 20, 30, 40, 50 ],
			sortName : 'id',
			sortOrder : 'asc',
			checkOnSelect : false,
			selectOnCheck : false,
			nowrap : false,
			singleSelect : true,
			frozenColumns : [ [ {
				field : 'id',
				title : '編號',
				width : 100,
				hidden : true
			}, {
				field : 'itemNo',
				title : '貨號',
				width : 70
			}, {
				field : 'name',
				title : '品名',
				width : 110
			} ] ],
			columns : [ [ {
				field : 'color',
				title : '顏色',
				width : 170
			}, {
				field : 'size',
				title : '尺寸',
				width : 100
			}, {
				field : 't4Name',
				title : '電繡圖案',
				width : 120
			}, {
				field : 'text',
				title : '電繡文字',
				width : 120
			}, {
				field : 'textColor',
				title : '文字顏色',
				width : 80
			}, {
				field : 'textFont',
				title : '文字字體',
				width : 120
			}, {
				field : 't6Name',
				title : '包裝方式',
				width : 100
			}, {
				field : 'quantity',
				title : '數量',
				width : 50,
				sortable : true
			}, {
				field : 'totalAmount',
				title : '金額',
				width : 60,
				sortable : true
			} ] ],
			onLoadSuccess : function() {
				parent.$.messager.progress('close');
			}
		});
	});

	function shipFun(id) {
		if (id == undefined) {//点击右键菜单才会触发这个
			var rows = dataGrid.datagrid('getSelections');
			id = rows[0].id;
		} else {//点击操作里面的删除图标会触发这个
			dataGrid.datagrid('unselectAll').datagrid('uncheckAll');
		}
		parent.$.messager.confirm('詢問', '確認出貨?', function(b) {
			if (b) {
				parent.$.messager.progress({
					title : '提示',
					text : '數據處理中，請稍後....'
				});
				$.post('${pageContext.request.contextPath}/orderController/shipOK', {
					id : id
				}, function(result) {
					if (result.success) {
						parent.$.messager.alert('提示', result.msg, 'info');
						dataGrid.datagrid('reload');
						goodsDataGrid.datagrid('load', {});
					}
					parent.$.messager.progress('close');
				}, 'JSON');
			}
		});
	}

	function searchFun() {
		dataGrid.datagrid('load', $.serializeObject($('#searchForm')));
		dataGrid.datagrid('unselectAll').datagrid('uncheckAll');
		goodsDataGrid.datagrid('load', {});
	}
	function cleanFun() {
		$('#searchForm input').val('');
		dataGrid.datagrid('load', {});
		dataGrid.datagrid('unselectAll').datagrid('uncheckAll');
		goodsDataGrid.datagrid('load', {});
	}
</script>
</head>
<body>
	<div class="easyui-layout" data-options="fit : true,border : false">
		<div data-options="region:'north',title:'查詢條件',border:false" style="height: 60px; overflow: hidden;">
			<form id="searchForm">
				<table class="table table-hover table-condensed" style="display: none;">
					<tr>
						<th style="float: right">收件人姓名</th>
						<td><input name="recipientName" placeholder="可以模糊查詢收件人姓名" class="span2" /></td>
						<th style="float: right">手機號碼</th>
						<td><input name="recipientPhone" placeholder="查詢收件人手機號碼" class="span2" /></td>
					</tr>
				</table>
			</form>
		</div>
		<div data-options="region:'center',border:false">
			<table id="dataGrid"></table>
		</div>
		
		<div data-options="region:'south',border:false" style="height: 180px; overflow: hidden;" > 
			<table id="goodsDataGrid"></table>
		</div>
		
	</div>
	<div id="toolbar" style="display: none;">
		<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'brick_add',plain:true" onclick="searchFun();">過濾條件</a>
		<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'brick_delete',plain:true" onclick="cleanFun();">清空條件</a>
	</div>
	
	<div id="menu" class="easyui-menu" style="width: 120px; display: none;">
		<c:if test="${fn:contains(sessionInfo.resourceList, '/orderController/shipOK')}">
			<div onclick="shipFun();" data-options="iconCls:'pencil_add'">確認出貨</div>
		</c:if>
	</div>
</body>
</html>