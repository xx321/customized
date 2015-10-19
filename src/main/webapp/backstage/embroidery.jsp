<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<title>電繡管理</title>
<jsp:include page="../inc.jsp"></jsp:include>
<c:if test="${fn:contains(sessionInfo.resourceList, '/embroideryController/editPage')}">
	<script type="text/javascript">
		$.canEdit = true;
	</script>
</c:if>
<c:if test="${fn:contains(sessionInfo.resourceList, '/embroideryController/addPage')}">
	<script type="text/javascript">
		$.canAdd = true;
	</script>
</c:if>
<c:if test="${fn:contains(sessionInfo.resourceList, '/optionController/onSale')}">
	<script type="text/javascript">
		$.canOnSale = true;
		$.OnSale = '${pageContext.request.contextPath}/optionController/onSale';
	</script>
</c:if>
<c:if test="${fn:contains(sessionInfo.resourceList, '/optionController/offSale')}">
	<script type="text/javascript">
		$.canOffSale = true;
		$.OffSale = '${pageContext.request.contextPath}/optionController/offSale';
	</script>
</c:if>
<script type="text/javascript" src="${pageContext.request.contextPath}/myUtilJS/saleOperation.js" charset="utf-8"></script>
<script type="text/javascript">
	var treeGrid;
	$(function() {
		treeGrid = $('#treeGrid').treegrid({
			url : '${pageContext.request.contextPath}/optionController/treeGrid?typeId=4',
			idField : 'id',
			treeField : 'name',
			parentField : 'pid',
			fit : true,
			fitColumns : false,
			border : false,
			frozenColumns : [ [ {
				title : '編號',
				field : 'id',
				width : 150,
				hidden : true
			} ] ],
			columns : [ [ {
				field : 'typeId',
				title : '選項類型ID',
				width : 150,
				hidden : true
			}, {
				field : 'typeName',
				title : '選項類型',
				width : 80,
				hidden : true
			}, {
				field : 'name',
				title : '選項名稱',
				width : 120
			}, {
				field : 'itemNo',
				title : '貨品編號',
				width : 60
			}, {
				field : 'price',
				title : '選項價格',
				width : 60
			}, {
				field : 'url',
				title : '圖片路徑',
				width : 230
			}, {
				field : 'pid',
				title : '上級選項ID',
				width : 150,
				hidden : true
			}, {
				field : 'pname',
				title : '上級選項',
				width : 80,
				hidden : true
			}, {
				field : 'seq',
				title : '排序',
				width : 40
			}, {
				field : 'action',
				title : '操作',
				width : 40,
				formatter : function(value, row, index) {
					var str = '';
					if ($.canEdit) {
						str += $.formatString('<img onclick="editFun(\'{0}\');" src="{1}" title="編輯當前選項"/>', row.id, '${pageContext.request.contextPath}/style/images/extjs_icons/pencil.png');
					}
					str += '&nbsp;';
					//if (row.typeId <= 4)
					//	if ($.canAdd) {
					//		str += $.formatString('<img onclick="addFun(\'{0}\',\'{1}\');" src="{2}" title="添加子選項"/>', row.typeId, row.id, '${pageContext.request.contextPath}/style/images/extjs_icons/pencil_add.png');
					//	}
					return str;
				}
			}, {
				field : 'remark',
				title : '備註',
				width : 120
			}, {
				field : 'statusStr',
				title : '銷售狀態',
				width : 60
			}, {
				field : 'on-off-Sale',
				title : '銷售操作',
				width : 60,
				formatter : function(value, row, index) {
					var str = '';
					if ($.canOnSale) {
						str += $.formatString('<img onclick="onSaleFun(\'{0}\',\'{1}\');" src="{2}" title="正常銷售"/>', row.id, $.OnSale, '${pageContext.request.contextPath}/style/images/extjs_icons/star.png');
					}
					str += '&nbsp;';
					if ($.canOffSale) {
						str += $.formatString('<img onclick="offSaleFun(\'{0}\',\'{1}\');" src="{2}" title="停止銷售"/>', row.id, $.OffSale, '${pageContext.request.contextPath}/style/images/extjs_icons/stop.png');
					}
					return str;
				}
			} ] ],
			toolbar : '#toolbar',
			onContextMenu : function(e, row) {
				e.preventDefault();
				$(this).treegrid('unselectAll');
				$(this).treegrid('select', row.id);
				$('#menu').menu('show', {
					left : e.pageX,
					top : e.pageY
				});
			},
			onLoadSuccess : function() {
				parent.$.messager.progress('close');

				$(this).treegrid('tooltip');
			}
		});
	});

	function editFun(id) {
		if (id != undefined) {
			treeGrid.treegrid('select', id);
		}
		var node = treeGrid.treegrid('getSelected');
		if (node) {
			parent.$.modalDialog({
				title : '編輯選項',
				width : 550,
				height : 500,
				href : '${pageContext.request.contextPath}/embroideryController/editPage?id=' + node.id,
				buttons : [ {
					text : '編輯',
					handler : function() {
						parent.$.modalDialog.openner_treeGrid = treeGrid;//編輯成功後，需要刷新treeGrid，所以先設定變數。
						var f = parent.$.modalDialog.handler.find('#form');
						f.submit();
					}
				} ]
			});
		}
	}

	function addFun(rowTypeId,pid) {
		var typeId = '';
		var typeName = '';
		switch (Number(rowTypeId))
		{
		case 4:
			typeId = '5';
			typeName = '電繡顏色';
			break;
		default:
			typeId = '4';
			typeName = '電繡分類';
		}
		
		parent.$.modalDialog({
			title : '添加' + typeName,
			width : 550,
			height : 500,
			href : '${pageContext.request.contextPath}/embroideryController/addPage?typeId='+typeId+'&pid='+pid,
			buttons : [ {
				text : '添加',
				handler : function() {
					parent.$.modalDialog.openner_treeGrid = treeGrid;//添加成功後，需要刷新treeGrid，所以先設定變數。
					var f = parent.$.modalDialog.handler.find('#form');
					f.submit();
				}
			} ]
		});
	}
</script>
</head>
<body>
	<div class="easyui-layout" data-options="fit:true,border:false">
		<div data-options="region:'center',border:false" title="" style="overflow: hidden;">
			<table id="treeGrid"></table>
		</div>
	</div>
	<div id="toolbar" style="display: none;">
		<c:if test="${fn:contains(sessionInfo.resourceList, '/embroideryController/addPage')}">
			<a onclick="addFun('null','');" href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:true,iconCls:'pencil_add'">添加電繡分類</a>
		</c:if>
		<a onclick="redo();" href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:true,iconCls:'resultset_next'">展開</a> <a onclick="undo();" href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:true,iconCls:'resultset_previous'">折疊</a> <a onclick="treeGrid.treegrid('reload');" href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:true,iconCls:'transmit'">刷新</a>
	</div>

	<div id="menu" class="easyui-menu" style="width: 120px; display: none;">
		<c:if test="${fn:contains(sessionInfo.resourceList, '/embroideryController/editPage')}">
			<div onclick="editFun();" data-options="iconCls:'pencil'">編輯當前選項</div>
		</c:if>
	</div>
</body>
</html>