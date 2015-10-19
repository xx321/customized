<%@ page language="java" pageEncoding="UTF-8"%>
<div class="well well-large" style="margin: 10px;">如果資料庫混亂，或出現資料異常，請點擊恢復資料庫至初始化狀態按鈕</div>
<div class="well well-small" style="margin: 10px;">
	<button class="btn btn-info" onclick="top.location.replace('${pageContext.request.contextPath}/init.jsp')">恢復資料庫至初始化狀態</button>
</div>