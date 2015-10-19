<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<title>折扣設定</title>
<jsp:include page="../inc.jsp"></jsp:include>
<c:choose>
	<c:when test="${choose == '0'}">
		<script type="text/javascript">
			$.choose = 0;
		</script>	
	</c:when>
	<c:when test="${choose == '1'}">
		<script type="text/javascript">
			$.choose = 1;
		</script>	
	</c:when>
	<c:when test="${choose == '2'}">
		<script type="text/javascript">
			$.choose = 2;
		</script>	
	</c:when>
	<c:when test="${choose == '101'}">
		<script type="text/javascript">
			$.choose = 101;
		</script>	
	</c:when>
	<c:when test="${choose == '102'}">
		<script type="text/javascript">
			$.choose = 102;
		</script>	
	</c:when>
	<c:when test="${choose == '103'}">
		<script type="text/javascript">
			$.choose = 103;
		</script>	
	</c:when>
	<c:when test="${choose == '104'}">
		<script type="text/javascript">
			$.choose = 104;
		</script>	
	</c:when>
</c:choose>
<script type="text/javascript">

	$(function() {
		switch ($.choose) {
		case 0:
			editLike();
			break;
		case 1:
			editFull();
			break;
		case 2:
			editShipment();
			break;
			
			
		case 101:
			editWorks();
			break;
		case 102 :
			editQA();
			break;
		case 103:
			editSize();
			break;
		case 104:
			editEmbroidery();
			break;	
		}
		
		
		
	});

	function editFull() {
		parent.$.modalDiscountDialog({
			title : '滿額折扣',
			width : 780,
			height : 500,
			href : '${pageContext.request.contextPath}/discountController/editFullPage',
			buttons : [ {
				text : '修改',
				handler : function() {
					var f = parent.$.modalDiscountDialog.handler.find('#form');
					f.submit();
				}
			} ]
		});
	}
	function editLike() {
		parent.$.modalDiscountDialog({
			title : '同品折扣',
			width : 780,
			height : 500,
			href : '${pageContext.request.contextPath}/discountController/editLikePage',
			buttons : [ {
				text : '修改',
				handler : function() {
					var f = parent.$.modalDiscountDialog.handler.find('#form');
					f.submit();
				}
			} ]
		});
	}
	function editShipment() {
		parent.$.modalDiscountDialog({
			title : '運費折扣',
			width : 780,
			height : 500,
			href : '${pageContext.request.contextPath}/discountController/editShipmentPage',
			buttons : [ {
				text : '修改',
				handler : function() {
					var f = parent.$.modalDiscountDialog.handler.find('#form');
					f.submit();
				}
			} ]
		});
	}
	
	
	
	/*
	*
	*	以下為圖片置換
	*
	*/	
	function editWorks() {
		parent.$.modalDiscountDialog({
			title : '作品參考',
			width : 780,
			height : 500,
			href : '${pageContext.request.contextPath}/discountController/editWorksPage',
			buttons : [ {
				text : '修改',
				handler : function() {
					var f = parent.$.modalDiscountDialog.handler.find('#form');
					f.submit();
				}
			} ]
		});
	}
	function editQA() {
		parent.$.modalDiscountDialog({
			title : '問與答',
			width : 780,
			height : 500,
			href : '${pageContext.request.contextPath}/discountController/editQAPage',
			buttons : [ {
				text : '修改',
				handler : function() {
					var f = parent.$.modalDiscountDialog.handler.find('#form');
					f.submit();
				}
			} ]
		});
	}
	function editSize() {
		parent.$.modalDiscountDialog({
			title : '尺寸對照表',
			width : 780,
			height : 500,
			href : '${pageContext.request.contextPath}/discountController/editSizePage',
			buttons : [ {
				text : '修改',
				handler : function() {
					var f = parent.$.modalDiscountDialog.handler.find('#form');
					f.submit();
				}
			} ]
		});
	}
	function editEmbroidery() {
		parent.$.modalDiscountDialog({
			title : '電繡範例',
			width : 780,
			height : 500,
			href : '${pageContext.request.contextPath}/discountController/editEmbroideryPage',
			buttons : [ {
				text : '修改',
				handler : function() {
					var f = parent.$.modalDiscountDialog.handler.find('#form');
					f.submit();
				}
			} ]
		});
	}
</script>
</head>
<body>

</body>
</html>