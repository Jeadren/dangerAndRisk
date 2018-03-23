function monthRiskControlPlanAnalyze(){
	var choosePlan = 0;// 判断是否有风险被选中

	$(".planCheck").each(function() { // 获取选择的风险

		if ($(this).prop("checked")) {// 如果选中。。。
			choosePlan++;

		}
	})

	if (choosePlan >= 2) {
		
			$("#monthRiskControlPlanAnalyze2").modal();
			//多条风险信息分析
			$(".planCheck").each(function() { // 获取选择的风险

				if ($(this).prop("checked")) {// 如果选中。。。
					$(this).parents('tr').find("#riskmsgid").val()
					$("#addRiskmsgid2").val($(this).parents('tr').find("#myriskmsgid").val());
					$("#addIdentiryid2").val($(this).parents('tr').find("#myrictrlplanid").val());
					$("#monthRiskControlPlanAnalyze2").modal();
	
					//analyze2();
				}
			})
			
	}else if(choosePlan == 1){
		//$("#monthRiskControlPlanAnalyze1").modal();
		analyze1();
	} 
	
	else {
		alert("请先选择要分析的风险！")
	}
	
	
	
}
function analyze1(){

	//风险信息
	$tds = $("input[name='riskAna']:checked").parents('tr').find('td');
	
	//单条风险信息分析
	$("#addRiskmsgid1").val($("input[name='riskAna']:checked").parents('tr').find("#myriskmsgid").val());
	$("#addRiCtrlPlanId1").val($("input[name='riskAna']:checked").parents('tr').find("#myrictrlplanid").val());
	
	
	
	$("#riskaddress").html($tds.eq(2).html());
	$("#riskdescribe").html($tds.eq(3).html());
	$("#risktype").html($tds.eq(4).html());
	$("#professionaltypes").html($tds.eq(5).html());
	$("#ctrlmeasure").html($tds.eq(6).html());
	$("#principal").html($tds.eq(7).html());
	$("#superintendent").html($tds.eq(8).html());
	$("#monitoringperiod").html($tds.eq(9).html());
	
	//管控计划分析信息
	
	
	//打开模态框
	$("#monthRiskControlPlanAnalyze1").modal();
}



function addAnalysisRisk1(){
	$.ajax({
		url : 'analysisPlan_addControlPlanAnalysis.action',
		data : $("#addAnalysisPlanForm1").serialize(),
		type : 'POST',
		dataType : 'json',
		async : true,
		success : function(result) {
			// 弹出是否录入成功
			alert(result.message);
			$('#monthRiskControlPlanAnalyze1').modal('hide');
			// 全局刷新当前页面
			window.location.reload();

		}

	});
}



function addAnalysisRisk2(){
	$.ajax({
		url : 'analysisPlan_addControlPlanAnalysis.action',
		data : $("#addAnalysisPlanForm2").serialize(),
		type : 'POST',
		dataType : 'json',
		async : true,
		success : function(result) {
			// 弹出是否录入成功
			alert(result.message);
			$('#myModal').modal('hide');
			// 全局刷新当前页面
			window.location.reload();

		}

	});
}






