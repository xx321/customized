var json = 
$(function(){	
	var jsonData = eval(json);
	$.each(jsonData,function(i,n){
		$("#Searchresult").append("<li></li>");  
	});
	var num_entries = $("#Searchresult li").length;	
	var showCount = 14;
	var initPagination = function() {
		
		// 创建分页
		$("#pagination").pagination(num_entries, {
			num_edge_entries: 1, //边缘页数
			num_display_entries: 6, //主体页数
			callback: pageselectCallback,
			items_per_page:showCount //每页显示1项
		});
	 }();	 
	function pageselectCallback(page_index, jq){
		var max_elem = Math.min((page_index+1) *showCount, num_entries);		
		$("#htcList").html("");		
		for(var i=page_index*showCount;i<max_elem;i++){
			var new_content = $("#Searchresult li:eq("+i+")").clone();
			$("#htcList").append(new_content); //装载对应分页的内容
		}
		return false;
	}
});
