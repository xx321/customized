	

	function onSaleFun(id,url) {
		if (id != undefined) {
			treeGrid.treegrid('select', id);
		}
		var node = treeGrid.treegrid('getSelected');
		if (node) {
			parent.$.messager.progress({
				title : '提示',
				text : '數據處理中，請稍後....'
			});
			$.post(url, {
				id : node.id
			}, function(result) {
				if (result.success) {
					parent.$.messager.alert('提示', result.msg, 'info');
					treeGrid.treegrid('reload',result.obj);
				}
				parent.$.messager.progress('close');
			}, 'JSON');
		}
	}
	
	function offSaleFun(id,url) {
		if (id != undefined) {
			treeGrid.treegrid('select', id);
		}
		var node = treeGrid.treegrid('getSelected');
		if (node) {
			parent.$.messager.confirm('詢問', '您是否要停止銷售當前選項?', function(b) {
				if (b) {
					parent.$.messager.progress({
						title : '提示',
						text : '數據處理中，請稍後....'
					});
					$.post(url, {
						id : node.id
					}, function(result) {
						if (result.success) {
							parent.$.messager.alert('提示', result.msg, 'info');
							treeGrid.treegrid('reload',result.obj);
						}
						parent.$.messager.progress('close');
					}, 'JSON');
				}
			});
		}
	}
	
	function redo() {
		var node = treeGrid.treegrid('getSelected');
		if (node) {
			treeGrid.treegrid('expandAll', node.id);
		} else {
			treeGrid.treegrid('expandAll');
		}
	}

	function undo() {
		var node = treeGrid.treegrid('getSelected');
		if (node) {
			treeGrid.treegrid('collapseAll', node.id);
		} else {
			treeGrid.treegrid('collapseAll');
		}
	}