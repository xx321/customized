<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<title>結帳櫃台</title>
<jsp:include page="../inc.jsp"></jsp:include>
<c:if test="${fn:contains(sessionInfo.resourceList, '/orderController/checkoutOK')}">
	<script type="text/javascript">
		$.canEdit = true;
	</script>
</c:if>
<c:if test="${fn:contains(sessionInfo.resourceList, '/orderController/invalid')}">
	<script type="text/javascript">
		$.canInvalid = true;
	</script>
</c:if>
<script type="text/javascript" src="${pageContext.request.contextPath}/myUtilJS/webPrintJs/StarWebPrintBuilder.js" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/myUtilJS/webPrintJs/StarWebPrintTrader.js" charset="utf-8"></script>
<script type="text/javascript">
	var dataGrid;
	$(function() {
		dataGrid = $('#dataGrid').datagrid({         
			url : '${pageContext.request.contextPath}/orderController/checkoutDataGrid',
			fit : true,
			fitColumns : true,
			border : false,
			pagination : false,
			idField : 'id',
			pageSize : 10,
			pageList : [ 10, 20, 30, 40, 50 ],
			sortName : 'createDate',
			sortOrder : 'desc',
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
				field : 'createDate',
				title : '創建時間',
				width : 120,
				sortable : true
			}, {
				field : 'action',
				title : '操作',
				width : 100,
				formatter : function(value, row, index) {
					var str = '';
					if ($.canEdit) {
						str += $.formatString('<button class="btn btn-success" onclick="checkoutFun(\'{0}\');">確認結帳</button>', row.id);
					}
					if ($.canInvalid) {
						str += $.formatString('<button class="btn btn-error" onclick="invalidFun(\'{0}\');">訂單作廢</button>', row.id);
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

	function checkoutFun(id) {
		if (id == undefined) {//点击右键菜单才会触发这个
			var rows = dataGrid.datagrid('getSelections');
			id = rows[0].id;
		} else {//点击操作里面的删除图标会触发这个
			dataGrid.datagrid('unselectAll').datagrid('uncheckAll');
		}
		parent.$.messager.confirm('詢問', '確認帳結?', function(b) {
			if (b) {
				parent.$.messager.progress({
					title : '提示',
					text : '數據處理中，請稍後....'
				});
				$.post('${pageContext.request.contextPath}/orderController/getOrder', {
					id : id
				}, function(result) {
					parent.$.messager.progress('close');
					if (result.success) {						
						onSendMessage(result.obj);
					}
				}, 'JSON');
			}
		});
	}
	
	function invalidFun(id) {
		if (id == undefined) {//点击右键菜单才会触发这个
			var rows = dataGrid.datagrid('getSelections');
			id = rows[0].id;
		} else {//点击操作里面的删除图标会触发这个
			dataGrid.datagrid('unselectAll').datagrid('uncheckAll');
		}
		parent.$.messager.confirm('詢問', '確認作廢?', function(b) {
			if (b) {
				parent.$.messager.progress({
					title : '提示',
					text : '數據處理中，請稍後....'
				});
				$.post('${pageContext.request.contextPath}/orderController/invalid', {
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
	
	var UseIP="192.168.1.120";
	var request="";
	
	function onSendMessage(order) {

	    try{        
			parent.$.messager.progress({
				title : '提示',
				text : '收據列印中,請稍候!!....'
			});
	        
	        //收據頭部 Logo
		    var builder = new StarWebPrintBuilder();
		    request = '';
		    request += builder.createInitializationElement();
		    request += builder.createTextElement({characterspace:0, codepage:'utf8', international:'japan'});
	
		    request += builder.createTextElement({emphasis:true});
		    request += builder.createAlignmentElement({position:'center'});
		    request += builder.createTextElement({width:2, data:'吳福洋襪子故事館\n'});
		    request += builder.createTextElement({width:1});
		    request += builder.createTextElement({emphasis:false});
		    
		    request += builder.createAlignmentElement({position:'left'});
		    request += builder.createTextElement({data:'\n'});	  
	        
			//------------------------------------------------------------------------------------------------------
			
			request += builder.createTextElement({data:'訂單編號 : '+Verify(order.code)+'\n'});
			request += builder.createTextElement({data:Verify(order.createDate)+'\n'});
		    request += builder.createTextElement({data:'\n'});
		    request += builder.createTextElement({data:'購買明細\n'});
		  	request += builder.createTextElement({data:'--------------------------------------------\n'});
		    
			//------------------------------------------------------------------------------------------------------
			for ( var i = 0; i < order.goodses.length; i++) {
				var g = order.goodses[i];
			    request += builder.createTextElement({data:'品項 : '+Verify(g.itemNo)+' - '+Verify(g.name)+'\n'});
			    request += builder.createTextElement({data:'規格 : '+Verify(g.color)+' - '+Verify(g.size)+'\n'});
			    request += builder.createTextElement({data:'電繡圖案 : '+Verify(g.t4Name)+'\n'});
			    request += builder.createTextElement({data:'電繡文字 : '+Verify(g.text)+' - '+Verify(g.textColor)+'\n'});
			    request += builder.createTextElement({data:'電繡字體 : '+Verify(g.textFont)+'\n'});
			    request += builder.createTextElement({data:'包裝方式 : '+Verify(g.t6Name)+'\n'});
			    request += builder.createTextElement({data:'數量 : '+Verify(g.quantity)+'雙\n'});
			  	request += builder.createTextElement({data:'--------------------------------------------\n'});
			}
	    
		  	//------------------------------------------------------------------------------------------------------
		  	//總金額	  	
			request += builder.createTextElement({data:'預計交期 : '+Verify(order.deliveryDate).substr(0,10)+'\n'});
		    request += builder.createTextElement({emphasis:true});
		    request += builder.createTextElement({width:2, data:'總金額 : '+Verify(order.totalAmount)+'\n'});
		    request += builder.createTextElement({width:1});
		    request += builder.createTextElement({emphasis:false});
		    request += builder.createTextElement({data:'\n'});
		    
		  	//------------------------------------------------------------------------------------------------------
		  	
		    request += builder.createAlignmentElement({position:'center'});
			request += builder.createTextElement({data:'**注意事項**\n'});
			request += builder.createTextElement({data:'客製化商品不適用七天鑑賞期、無法退換貨\n'});
			request += builder.createTextElement({data:'本公司僅接受客戶委託製作服務，如有侵犯他人著作權法或仿冒事宜，由客戶負責並承擔法律責任及賠償\n'});
			
			request += builder.createTextElement({data:'\n'});
			
			request += builder.createCutPaperElement({feed:true});
		  			
			//------------------------------------------------------------------------------------------------------
			// Send Command to Printer
			SendMessage(order);               
	    }
	    catch(e){    
	        parent.$.messager.alert('錯誤', e.message, 'error');
	    }                              
	}
	
	function SendMessage(order) {     

	    var LocalUrl= 'http://' + UseIP  + '/StarWebPRNT/SendMessage';   

	    var trader = new StarWebPrintTrader({ url: LocalUrl});
		//完成列印後的通知
	    trader.onReceive = function (response) {             
	        var Pmsg = ' 收據列印完畢!<br/>';
	        if( response.traderSuccess =='false') {Pmsg = ' 收據列印失敗!<br/>';}  
	        if (trader.isCoverOpen({traderStatus:response.traderStatus})) {Pmsg += '<br/>上蓋打開';}
	        //if (trader.isOffLine({traderStatus:response.traderStatus})) { Pmsg += '<br/>離線中';}
	        if (trader.isCompulsionSwitchClose({traderStatus:response.traderStatus})) {Pmsg += '<br/>錢箱已打開';}
	        if (trader.isEtbCommandExecute({traderStatus:response.traderStatus})) {Pmsg += '<br/>ETB指令執行中';}
	        if (trader.isHighTemperatureStop({traderStatus:response.traderStatus})) {Pmsg += '<br/>印字頭過熱停止';}
	        if (trader.isNonRecoverableError  ({traderStatus:response.traderStatus})) {Pmsg += '<br/>不可恢復的故障發生';}
	        if (trader.isAutoCutterError      ({traderStatus:response.traderStatus})) {Pmsg += '<br/>裁刀錯誤';}
	        if (trader.isBlackMarkError       ({traderStatus:response.traderStatus})) {Pmsg += '<br/>黑標偵測錯誤';}
	        if (trader.isPaperEnd             ({traderStatus:response.traderStatus})) {Pmsg += '<br/>缺紙錯誤';}
	        if (trader.isPaperNearEnd         ({traderStatus:response.traderStatus})) {Pmsg += '<br/>紙張不足警告';}  	      
	       	
	       	//成功完成列印後，對資料庫操作結帳
	       	if (response.traderSuccess == 'true') {	       		
	       		$.ajax({
	       			url : '${pageContext.request.contextPath}/orderController/checkoutOK',
	       			type : 'post',
	                dataType:'json',//這裡使用json對象
	       			async: true,//使用同步的方式,true為非同步方式
	       			data : {
	       				id : order.id      				
	       			},
	       			success : function(result){
	       				parent.$.messager.progress('close');
						if (result.success) {
							parent.$.messager.alert('提示', Pmsg, 'info');
							dataGrid.datagrid('reload');
							goodsDataGrid.datagrid('load', {});
						}
	       			}
	       		});
	       	} else {
	       	 	parent.$.messager.progress('close'); 
	       	 	parent.$.messager.alert('錯誤', Pmsg, 'error');          
	       	}
	
	    };
	    //錯誤通知
	    trader.onError = function (response) {       
	        var Pmsg = ' 傳送錯誤\n';         
	        Pmsg += '<br/>無法傳送資料到 IP=' + UseIP  + ' 印表機，請檢查印表機！';
     
	        parent.$.messager.progress('close');     
	        parent.$.messager.alert('錯誤', Pmsg, 'error');             
	    };
	    
		trader.sendMessage({request:request});
	}
	
	function Verify(value) {
		if (value !== undefined && value !== null) {
			// v 有值
			return value;
		} else {
			// v 沒有值
			return '';
		}
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
		<c:if test="${fn:contains(sessionInfo.resourceList, '/orderController/checkoutOK')}">
			<div onclick="checkoutFun();" data-options="iconCls:'pencil_add'">確認結帳</div>
		</c:if>
		<c:if test="${fn:contains(sessionInfo.resourceList, '/orderController/invalid')}">
			<div onclick="invalidFun();" data-options="iconCls:'pencil_delete'">訂單作廢</div>
		</c:if>		
	</div>
</body>
</html>