<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<jsp:include page="../inc.jsp"></jsp:include>
<script type="text/javascript">
	var userCreateDatetimeChart = '${userCreateDatetimeChart}';
	var data = eval("(" + userCreateDatetimeChart + ")");
	var countUser = 0;
	for ( var i = 0; i < data.length; i++) {
		countUser += data[i];
	}
	$(function() {
		$('#container').highcharts({
			credits : {
				enabled : false
			},
			chart : {
				type : 'column',
				margin : [ 50, 50, 100, 80 ]
			},
			title : {
				text : '用戶註冊時間(總用戶人數 : ' + countUser + ')'
			},
			xAxis : {
				categories : [ '00-02', '02-04', '04-06', '06-08', '08-10', '10-12', '12-14', '14-16', '16-18', '18-20', '20-22', '22-24' ],
				labels : {
					rotation : -45,
					align : 'right',
					style : {
						fontSize : '13px',
						fontFamily : 'Verdana, sans-serif'
					}
				}
			},
			yAxis : {
				min : 0,
				title : {
					text : '各段時間用戶註冊人數'
				}
			},
			legend : {
				enabled : false
			},
			tooltip : {
				formatter : function() {
					return '<b>' + this.x + '点</b><br/>' + '此段時間用戶註冊數量為 : ' + this.y + '個用戶';
				}
			},
			series : [ {
				data : data,
				dataLabels : {
					enabled : true,
					rotation : -90,
					color : '#FFFFFF',
					align : 'right',
					x : 4,
					y : 10,
					style : {
						fontSize : '13px',
						fontFamily : 'Verdana, sans-serif'
					}
				}
			} ]
		});

		parent.$.messager.progress('close');
	});
</script>
</head>
<body>
	<div class="easyui-layout" data-options="fit : true,border : false">
		<div data-options="region:'center',border:false">
			<div id="container"></div>
		</div>
	</div>
</body>
</html>