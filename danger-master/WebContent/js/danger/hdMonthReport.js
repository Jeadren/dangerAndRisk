$(document).ready(function() {
	//初始化检查单位
	initChechUnit();

});
//初始化检查单位
function initChechUnit(){
	$.ajax({
		url:'initDic_initCheckUnit.action',
		data:'',
		dataType:'json',
		type:'POST',
		async:true,
		success:function(data){
			
			$("#checkUnitId option").remove();
			
			var str = "<option value='0'>--请选择--</option>";//<option value="安全小分组">安全小分组</option>
			for(var i=0;i<data.dictionaryList.length;i++){
				//str += data.dictionaryList[i].dictionary;
				//alert(data.dictionaryList[i].name)
				str +="<option value="+data.dictionaryList[i].name+">"+data.dictionaryList[i].name+"</option>";
			}
			$("#checkUnitId").append(str);
			//当点击查询按钮的时候，回显下拉框中的值
			var typevalue= $("#checkunitValue").val();
			$("#checkUnitId option[value='"+typevalue+"']").attr("selected","selected");
		}
	});
}




//===初始化责任单位的树=======