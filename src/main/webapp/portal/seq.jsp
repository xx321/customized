<%@ page language="java" pageEncoding="UTF-8"%>
<script type="text/javascript">
	function flashPortalSeq() {
		$.cookie('portal-state', null);
		parent.$.messager.show({
			title : '提示',
			msg : 'Portal順序初始化成功!'
		});
		var panel = parent.index_tabs.tabs('getTab', 0);
		var frame = panel.find('iframe');
		try {
			if (frame.length > 0) {
				for ( var i = 0; i < frame.length; i++) {
					frame[i].contentWindow.document.write('');
					frame[i].contentWindow.close();
					frame[i].src = frame[i].src;
				}
				try {
					CollectGarbage();
				} catch (e) {
				}
			}
		} catch (e) {
		}
	}
</script>
<div class="well well-large" style="margin: 10px;">可以拖動面板的順序，下次訪問的時候，它會按照您更改後的順序顯示!</div>
<div class="well well-small" style="margin: 10px;">
	<button class="btn btn-primary" onclick="flashPortalSeq();">恢複初始portal順序</button>
</div>