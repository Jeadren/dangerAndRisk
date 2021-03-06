<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<%@ include file="/tag.jsp"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>旬风险管控计划风险分析</title>

<%@ include file="/controls/cssJs.jsp"%>


<script type="text/javascript" src="<%=path%>/js/risk/monthRiskControlPlanAnalyzeInfo.js"></script>


<!--验证-->
<script src="<%=path%>/controls/validate/jquery.validate.js"></script>
<script src="<%=path%>/controls/validate/messages_zh.js"></script>

<link rel="stylesheet" href="<%=path%>/css/public/public_style.css" />

<link rel="stylesheet" href="<%=path%>/css/risk/yearRecognize.css" />
<style type="text/css">
.yearReInfo table tr td:nth-child(2n+1) {

    background-color: #eee;
    width: 20%;
    text-align: center;
    border-left: 1px solid #ccc;

}
</style>
</head>

<body>
	<!--头-->
	<jsp:include page="../public/header.jsp"></jsp:include>

	<!--中部-->
	<div class="html_middle">

		<!--放菜单-->
		<div id="leftbackground">
			<jsp:include page="../public/menu.jsp"></jsp:include>
			<img src="<%=path%>/image/leftArrow.jpg" id="leftArrow" />
		</div>
		<img src="<%=path%>/image/rightArrow.jpg" id="rightArrow" />

		<!--放主界面内容-->
		<div class="el_right">

			<div class="container-fluid">
				<div class="panel panel-default">
					<!--菜单连接标题-->
					<div class="el_stairTitle">
						<span>风险管理 </span><span>>旬风险管控计划风险分析</span>
					</div>

					<div class="panel-body el_main">

						<!--内容-->
						<div class=" col-md-12">

							<!--显示内容-->
							<div class="panel panel-default el_Mainmain" style="margin-top: 0px;">

								<!--按钮面板-->
								<div class="panel-body">
									<form id="hiddenForm" method="post" action="${baseurl }/controlPlan_getRiskInfoByPage.action">
									<div>
										<input type="hidden" name="currentPage" id="currentPage" />
										<input type="hidden" name="currentCount" id="currentCount" />
									</div>
									</form>
									<div>
									<button class="btn btn-primary" onclick="monthRiskControlPlanAnalyze()">分析</button>
									
									<table class="table table-hover table-bordered">
										<thead>
											<tr>
												<th>选择<input type="checkbox" name="riskAna2" id="selectAllId" class="planCheck"></th>
												<th>序号</th>
												<th>风险地点</th>
												<th>风险描述</th>
												<th>风险类型</th>
												<th>专业类型</th>
												<th>灾害类型</th>
												<th>可能导致事故</th>
												<th>管控措施</th>
												<th>负责人</th>
												<th>监管人</th>
												<th>监管周期</th>
												<th>责任部门</th>
												<th>措施执行情况</th>
												<th>措施是否有效</th>
												<th>考核情况</th>
											</tr>
										</thead>
									<!-- 	<tbody>
											<tr>
												<td>
												<input type="checkbox" name="riskAna" class="planCheck">
												</td>
												<td>
												1
												</td>
												<td>
												井口
												</td>
												<td>
												有煤灰
												</td>
												<td>
												人
												</td>
												<td>
												煤矿
												</td>
												<td>
												煤灰
												</td>
												<td>
												煤灰
												</td><td>
												煤灰
												</td><td>
												煤灰
												</td><td>
												煤灰
												</td><td>
												煤灰
												</td>
												<td>
												煤灰
												</td><td>
												煤灰
												</td><td>
												煤灰
												</td><td>
												煤灰
												</td>
												
											</tr>
											<tr>
												<td>
												<input type="checkbox" name="riskAna"  class="planCheck">
												</td>
												<td>
												1
												</td>
												<td>
												井口
												</td>
												<td>
												有煤灰
												</td>
												<td>
												人
												</td>
												<td>
												煤矿
												</td>
												<td>
												煤灰
												</td>
												<td>
												煤灰
												</td><td>
												煤灰
												</td><td>
												煤灰
												</td><td>
												煤灰
												</td><td>
												煤灰
												</td>
												<td>
												煤灰
												</td><td>
												煤灰
												</td><td>
												煤灰
												</td><td>
												煤灰
												</td>
												
											</tr>
											
										</tbody> -->
										
										<tbody id="tbody">
										
										<c:forEach var="riskInfo"	items="${result.pageBean.productList }"  varStatus="status">
											<tr>
											<td>
												<input type="checkbox" name="riskAna" class="planCheck">
												</td>
											<td>${ status.index + (result.pageBean.currentPage-1)*10+1}
												<input type="hidden" id="myriskmsgid" value=${riskInfo.riskMsgId } /> 
												<input type="hidden" id="myrictrlplanid" value=${riskInfo.riCtrlPlanId } />
											</td>
											<!-- 下面是风险信息的字段 -->
											
											<td>${riskInfo.riskAddress }</td>
											<td>${riskInfo.riskDescribe }</td>
											<td>${riskInfo.riskType }</td>
											<td>${riskInfo.professionalTypes }</td>
											<td>${riskInfo.disasterTypes }</td>
											<td>${riskInfo.canCauseAccidents }</td>
											<td>${riskInfo.ctrlMeasure }</td>
											<td>${riskInfo.principal }</td>
											<td>${riskInfo.superintendent }</td>
											<td>${riskInfo.monitoringPeriod }</td>
											
								
											 <!-- 下面是风险分析的字段 -->
											 <td>${riskInfo.dutyDepartment }</td>
											<td>${riskInfo.implementationOfMeasures }</td>
											<td>${riskInfo.measureIsValid }</td>
											<td>${riskInfo.inspectionSituation }</td>
											
											</tr>
										</c:forEach> 
										
										
										
										</tbody>
										
										
									</table>
										<div id="paginationIDU"></div>
									<script>
										$('#paginationIDU').pagination(
												{
													//			组件属性
													"total" :"${result.pageBean.totalCount}",//数字 当分页建立时设置记录的总数量 1
													"pageSize" : 10,//数字 每一页显示的数量 10
													"pageNumber" : "${result.pageBean.currentPage}",//数字 当分页建立时，显示的页数 1
													"pageList" : [ 10 ],//数组 用户可以修改每一页的大小，
													//功能
													"layout" : [ 'list', 'sep',
															'first', 'prev',
															'manual', 'next',
															'last', 'links' ],
													"onSelectPage" : function(
															pageNumber, b) {
														$("#currentPage").val(pageNumber);
														$("#currentCount").val(b);
														$("#queryForm").submit();
													}
												});
									</script>
									</div>
							<!-- 		<script type="text/javascript">
									function monthRiskControlPlanAnalyze(){
										var choosePlan = 0;// 判断是否有风险被选中

										$(".planCheck").each(function() { // 获取选择的风险

											if ($(this).prop("checked")) {// 如果选中。。。
												choosePlan++;

											}
										})

										if (choosePlan >= 2) {
												$("#monthRiskControlPlanAnalyze2").modal();
							
										}else if(choosePlan == 1){
											$("#monthRiskControlPlanAnalyze1").modal();
										} 
										
										else {
											alert("请先选择要分析的风险！")
										}
										
									}
									</script> -->
									<!-- 模态框（单条评估信息） -->
								<div class="modal fade" id="monthRiskControlPlanAnalyze1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<!-- <div class="modal-header">
												<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
													&times;
												</button>
												<h4 class="modal-title" id="myModalLabel">
												风险评估详情
												</h4>
											</div> -->
											<div class="modal-body">
											<h4>风险信息详情</h4>
												<div class="yearReInfo">
												<table class="table  table-bordered">
												<!-- <tr>
												<td>风险地点：</td>
												<td>井口</td>
												<td>风险描述：</td>
												<td>连续接触</td>
												
												</tr>
												<tr>
												
												<td>风险类型 	：</td>
												<td>连续接触</td>
												<td>专业类型：</td>
												<td>10人以上死亡</td>
												</tr>
												<tr>
												<td>管控措施：</td>
												<td>红色风险大事发生的各色人等他和我</td>
												<td>负责人 ：</td>
												<td>张三</td>
												</tr>
												
												<tr>
												
												<td>监管人 ：</td>
												<td>里斯</td>
												<td>监管周期 ：</td>
												<td>张三</td>
												
												</tr> -->
												<tr>
												<td>风险地点：</td>
												<td id="riskaddress"></td>
												<td>风险描述：</td>
												<td id="riskdescribe"></td>
												
												</tr>
												<tr>
												
												<td>风险类型 	：</td>
												<td id="risktype"></td>
												<td>专业类型：</td>
												<td id="professionaltypes"></td>
												</tr>
												<tr>
												<td>管控措施：</td>
												<td id="ctrlmeasure"></td>
												<td>负责人 ：</td>
												<td id="principal"></td>
												</tr>
												
												<tr>
												
												<td>监管人 ：</td>
												<td id="superintendent"></td>
												<td>监管周期 ：</td>
												<td id="monitoringperiod"></td>
												
												</tr>
												
												
												</table>
												</div>
											<h4>管控计划分析</h4>
											<form action="" method="post" id="addAnalysisPlanForm1">
											<div class="yearReInfo">
												<div class="input-group el_modellist" role="toolbar">
													<span class="el_spans">责任部门：</span>
													<input style="margin-left: 25px;" type="text" class="form-control el_modelinput" value="" 
														id="addDutydepartment1" name="riDetailedOfRiskCtrlPlan.dutydepartment" />
													<input type="hidden" id="addRiskmsgid1" name="riDetailedOfRiskCtrlPlan.riskmsgid"/> 
												<input type="hidden" id="addRiCtrlPlanId1"  name="riDetailedOfRiskCtrlPlan.rictrlplanid"/>
												</div>
												<div class="input-group el_modellist" role="toolbar">
													<span class="el_spans">措施执行情况：</span>
													<textarea style="width: 399px;" rows="3" type="text" class="form-control el_modelinput texta" value="" 
														id="addImplementationofmeasures1" name="riDetailedOfRiskCtrlPlan.implementationofmeasures" />措施执行情况</textarea>
												</div>
												<div class="input-group el_modellist" role="toolbar">
													<span class="el_spans">措施是否有效：</span>
													<select style="width: 399px;" class="selectpicker form-control" title="请选择" 
													id="addMeasureisvalid1" name="riDetailedOfRiskCtrlPlan.measureisvalid">
														<option value="" id="option0">--请选择--</option>
														<option value="有效">有效</option>
														<option value="无效">无效</option>
														
													</select>
												</div>
												<div class="input-group el_modellist" role="toolbar">
													<span class="el_spans">考核情况：</span>
													<textarea style="margin-left: 25px;" rows="3" type="text" class="form-control el_modelinput texta" value="" 
														id="addInspectionsituation1" name="riDetailedOfRiskCtrlPlan.inspectionsituation" />措施执行情况</textarea>
												</div>
												
											</div>
											</form>
											<div class="modal-footer">
												<button type="button" class="btn btn-default" data-dismiss="modal">关闭
												</button>
												<button type="button" class="btn btn-primary" onclick="addAnalysisRisk1()">
													保存
												</button>
											</div>
										</div><!-- /.modal-content -->
									</div>
								</div>
								</div><!-- /.modal -->
								<!-- 模态框（多条评估信息） -->
								<div class="modal fade" id="monthRiskControlPlanAnalyze2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
													&times;
												</button>
												<h4 class="modal-title" id="myModalLabel">
												管控计划分析
												</h4>
											</div>
											
											<div class="modal-body">
											<form action="" method="post" id="addAnalysisPlanForm2">
											<div class="yearReInfo">
												<div class="input-group el_modellist" role="toolbar">
													<span class="el_spans">责任部门：</span>
													<input style="margin-left: 25px;" type="text" class="form-control el_modelinput" value="" id="addDutydepartment2" name="riDetailedOfRiskCtrlPlan.dutydepartment" />
													<input type="hidden" id="addRiskmsgid2" name="addRiskmsgid2"/> 
													<input type="hidden" id="addIdentiryid2"  name="addIdentiryid2"/>
												</div>
												<div class="input-group el_modellist" role="toolbar">
													<span class="el_spans">措施执行情况：</span>
													<textarea style="width: 399px;" rows="3" type="text" class="form-control el_modelinput texta" value="" 
														id="addImplementationofmeasures2" name="riDetailedOfRiskCtrlPlan.implementationofmeasures" />措施执行情况</textarea>
												</div>
												<div class="input-group el_modellist" role="toolbar">
													<span class="el_spans">措施是否有效：</span>
													<select style="width: 399px;" class="selectpicker form-control" title="请选择" 
													id="addMeasureisvalid2" name="riDetailedOfRiskCtrlPlan.measureisvalid">
														<option value="" id="option0">--请选择--</option>
														<option value="有效">有效</option>
														<option value="无效">无效</option>
														
													</select>
												</div>
												<div class="input-group el_modellist" role="toolbar">
													<span class="el_spans">考核情况：</span>
													<textarea style="margin-left: 25px;" rows="3" type="text" class="form-control el_modelinput texta" value="" 
														id="addInspectionsituation2" name="riDetailedOfRiskCtrlPlan.inspectionsituation" />措施执行情况</textarea>
												</div>
												
											</div>
											</form>
											<div class="modal-footer">
												<button type="button" class="btn btn-default" data-dismiss="modal">关闭
												</button>
												<button type="button" class="btn btn-primary" onclick="addAnalysisRisk2()">
													保存
												</button>
											</div>
										</div><!-- /.modal-content -->
											
									</div>
								</div>
								</div><!-- /.modal -->
							</div>

						</div>

					</div>
				</div>

			</div>


		</div>

	</div>

	<!--放脚-->
	<jsp:include page="../public/footer.jsp"></jsp:include>
</body>
</html>