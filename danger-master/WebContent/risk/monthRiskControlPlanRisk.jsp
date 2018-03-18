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
<title>月风险管控计划风险</title>

<%@ include file="/controls/cssJs.jsp"%>

<script type="text/javascript" src="<%=path%>/js/risk/yearRecognize.js"></script>

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
						<span>风险管理 </span><span>>月风险管控计划风险信息</span>
					</div>

					<div class="panel-body el_main">

						<!--内容-->
						<div class=" col-md-12">

							<!--显示内容-->
							<div class="panel panel-default el_Mainmain" style="margin-top: 0px;">

								<!--按钮面板-->
								<div class="panel-body">
									<!-- 年度辨识基本信息 -->
									<div class="row el_queryBox" style=" border-bottom-width: 0px; margin-top: 0px;">
									<h4>月风险管控计划</h4>
									<button class="btn btn-primary">计划上报</button>
									<div class="yearReInfo">
									<table class="table  table-bordered">
									<tr>
									<td>年份</td>
									<td>2015</td>
									<td>月份</td>
									<td>9月</td>
									</tr>
									<tr>
									<td>专业</td>
									<td>张三</td>
									<td>专业负责人</td>
									<td>王五</td>
									</tr>
									</table>
									</div>
									</div>

									<div>
									<h4>月风险管控计划风险</h4>
									<button class="btn btn-primary">复制上月风险管控计划风险数据</button>
									<button class="btn btn-primary" onclick="yearRiskControlImport()">导入</button>
									<button class="btn btn-primary" data-toggle="modal" data-target="#addDuty" >新增</button>
									
									
									<table class="table table-hover table-bordered">
										<thead>
											<tr>
												
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
												<th width="140">操作</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												
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
													<a data-toggle="modal" data-target="#modifierDuty" >修改</a>
													<a data-toggle="modal" data-target="#deleteRisk" >删除</a>
												</td>
											</tr>

										</tbody>
									</table>
									</div>
									
									<!-- 模态框（导入年度风险信息） -->
								<div class="modal fade" id="yearRiskControlImport" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
													&times;
												</button>
												<h4 class="modal-title" id="myModalLabel">
												风险导入
												</h4>
											</div>
											<div class="modal-body">
											
												<!--索引-->
											<div class="row el_queryBox">
												<form
													action=""
													method="post" id="queryForm">
													<div class="row el_queryBoxrow">
				
														<div class="col-md-3 el_qlmQuery">
															<div class="input-group" role="toolbar">
																
																<span class="el_spans el_chooseSpan">风险描述：</span> 
																<input
																	class="selectpicker form-control" name=""
																	id="" title="请选择">
																</input>
															</div>
														</div>
				
														<div class="col-md-3 el_qlmQuery">
															<div class="input-group" role="toolbar">
																<span class="el_spans">风险地点：</span>
																 <input id=""
																	class="selectpicker form-control" title="请选择" name="type">
																	
																</input>
															</div>
														</div>
														
														<button type="submit"
														class="btn btn-primary  btn-sm">查询</button>
													    <button class="btn btn-default btn-sm">清空</button>
													</div>
				
												</form>
				
											</div>
											<!--结束 查询表单提交-->
											
											<div>
											<button  class="btn btn-primary" onclick="confirmImport()">确定导入</button>
											</div>
											<script type="text/javascript">
											function confirmImport(){
												$('#yearRiskControlImport').modal("hide");
											}
											</script>
									
									<table class="table table-hover table-bordered">
										<thead>
											<tr>
												<th>操作</th>
												<th>序号</th>
												<th>风险来源</th>
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
												
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>
												<input type="checkbox">
												</td>
												<td>
												1
												</td>
												<td>
												年度专项辨识
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
												</td>
												<td>
												煤灰
												</td>
												
											</tr>

										</tbody>
									</table>
									<div id="paginationIDU1"></div>
											</div>
											
											<div class="modal-footer">
												<button type="button" class="btn btn-default" data-dismiss="modal">关闭
												</button>
												
											</div>
										</div><!-- /.modal-content -->
									</div>
								</div><!-- /.modal -->
								<script type="text/javascript">
								function yearRiskControlImport(){
									$('#yearRiskControlImport').modal();
								}
								</script>
									<script>
										$('#paginationIDU1').pagination(
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
								<!-- 模态框（新增年度风险信息） -->
								<div class="modal fade" id="addDuty" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
													&times;
												</button>
												<h4 class="modal-title" id="myModalLabel">
												月风险管控计划风险添加
												</h4>
											</div>
											<div class="modal-body">
											<h4>风险基本信息</h4>
												<form action="">
												<div class="input-group el_modellist" role="toolbar">
													<span class="el_spans">风险地点：</span>
													<select	class="selectpicker form-control" title="请选择" 
													id="" name="">
														<option value="" id="option0">--请选择--</option>
														<option value="综采">综采</option>
														<option value="综掘">综掘</option>
														
													</select>
													<textarea id="dangerneirong" class="form-control texta"
													rows="2" name="danger.content"></textarea>
												</div>
								
												<div class="input-group el_modellist" role="toolbar">
													<span class="el_spans">风险描述：</span>
													<textarea id="dangerneirong" class="form-control texta"
													rows="2" name="danger.content"></textarea>
												</div>
												<div class="input-group el_modellist" role="toolbar">
													<span class="el_spans">风险类型：</span>
													<select	class="selectpicker form-control" title="请选择" 
													id="" name="">
														<option value="" id="option0">--请选择--</option>
														<option value="人">人</option>
														<option value="机">机</option>
														<option value="环">环</option>
														<option value="管">管</option>
														
													</select>
												</div>
								
												<div class="input-group el_modellist" role="toolbar">
													<span class="el_spans">专业类型：</span>
													<select	class="selectpicker form-control" title="请选择" 
													id="" name="">
														<option value="" id="option0">--请选择--</option>
														<option value="采煤">采煤</option>
														<option value="挖水">挖水</option>
														
													</select>
												</div>
												<div class="input-group el_modellist" role="toolbar">
													<span class="el_spans">灾害类型：</span>
													<select	class="selectpicker form-control" title="请选择" 
													id="" name="">
														<option value="" id="option0">--请选择--</option>
														<option value="火">火</option>
														<option value="水">水</option>
														
													</select>
												</div>
												<div class="input-group el_modellist" role="toolbar">
													<span class="el_spans">可能导致事故：</span>
													<select	class="selectpicker form-control" title="请选择" 
													id="" name="">
														<option value="" id="option0">--请选择--</option>
														<option value="人身伤害">人身伤害</option>
														<option value="死亡">死亡</option>
														
													</select>
												</div>
												<div class="input-group el_modellist" role="toolbar">
													<span class="el_spans">管控措施：</span>
													<textarea id="dangerneirong" class="form-control texta"
													rows="2" name="danger.content"></textarea>
												</div>
												<div class="input-group el_modellist" role="toolbar">
													<span class="el_spans">负责人：</span>
													<input type="text" class="form-control el_modelinput" value=""
														id="" name="" />
												</div>
												<div class="input-group el_modellist" role="toolbar">
													<span class="el_spans">监管人：</span>
													<input type="text" class="form-control el_modelinput" value=""
														id="" name="" />
												</div>
												<div class="input-group el_modellist" role="toolbar">
													<span class="el_spans">监管周期：</span>
													<input type="text" class="form-control el_modelinput" value=""
														id="" name="" />
												</div>
												
												<h4>风险评估信息</h4>
												<div class="input-group el_modellist" role="toolbar">
													<span class="el_spans">可能性（L）：</span>
													<select	class="selectpicker form-control" title="请选择" 
													id="" name="">
														<option value="" id="option0">--请选择--</option>
														<option value="完全可以预料">完全可以预料</option>
														<option value="可能，但不经常">可能，但不经常</option>
														<option value="很不可能，可以设想">很不可能，可以设想</option>
														<option value="极不可能">极不可能</option>
													</select>
												</div>
												<div class="input-group el_modellist" role="toolbar">
													<span class="el_spans">人员暴露频繁程度（E）：</span>
													<select	class="selectpicker form-control" title="请选择" 
													id="" name="">
														<option value="" id="option0">--请选择--</option>
														<option value="连续接触">连续接触</option>
														<option value="每周一次接触">每周一次接触</option>
														<option value="每月一次接触">每月一次接触</option>
														<option value="非常罕见的接触">非常罕见的接触</option>
													</select>
												</div>
												<div class="input-group el_modellist" role="toolbar">
													<span class="el_spans">损失后果（C）：</span>
													<select	class="selectpicker form-control" title="请选择" 
													id="" name="">
														<option value="" id="option0">--请选择--</option>
														<option value="连续接触">10人以上死亡</option>
														<option value="每周一次接触">3-9人死亡</option>
														<option value="每月一次接触">危重工伤</option>
														<option value="非常罕见的接触">轻伤</option>
													</select>
												</div>
								
												
								
												
												<div class="input-group el_modellist" role="toolbar">
													<span class="el_spans">风险值（D）：</span>
													<input type="text" class="form-control el_modelinput" value="" 
														id="" name="" />
												</div>
												<div class="input-group el_modellist" role="toolbar">
													<span class="el_spans">风险等级：</span>
													<input type="text" class="form-control el_modelinput" value=""
														id="" name="" />
												</div>
												
												</form>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-default" data-dismiss="modal">关闭
												</button>
												<button type="button" class="btn btn-primary">
													保存
												</button>
											</div>
										</div><!-- /.modal-content -->
									</div>
								</div><!-- /.modal -->
								<!-- 模态框（修改年度辨识信息） -->
								<div class="modal fade" id="modifierDuty" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
													&times;
												</button>
												<h4 class="modal-title" id="myModalLabel">
												修改年度辨识信息
												</h4>
											</div>
											<div class="modal-body">
												<form action="">
												<div class="input-group el_modellist" role="toolbar">
													<span class="el_spans">风险地点：</span>
													<select	class="selectpicker form-control" title="请选择" 
													id="" name="">
														<option value="" id="option0">--请选择--</option>
														<option value="综采">综采</option>
														<option value="综掘">综掘</option>
														
													</select>
													<textarea id="dangerneirong" class="form-control texta"
													rows="2" name="danger.content"></textarea>
												</div>
								
												<div class="input-group el_modellist" role="toolbar">
													<span class="el_spans">风险描述：</span>
													<textarea id="dangerneirong" class="form-control texta"
													rows="2" name="danger.content"></textarea>
												</div>
												<div class="input-group el_modellist" role="toolbar">
													<span class="el_spans">风险类型：</span>
													<select	class="selectpicker form-control" title="请选择" 
													id="" name="">
														<option value="" id="option0">--请选择--</option>
														<option value="人">人</option>
														<option value="机">机</option>
														<option value="环">环</option>
														<option value="管">管</option>
														
													</select>
												</div>
								
												<div class="input-group el_modellist" role="toolbar">
													<span class="el_spans">专业类型：</span>
													<select	class="selectpicker form-control" title="请选择" 
													id="" name="">
														<option value="" id="option0">--请选择--</option>
														<option value="采煤">采煤</option>
														<option value="挖水">挖水</option>
														
													</select>
												</div>
												<div class="input-group el_modellist" role="toolbar">
													<span class="el_spans">灾害类型：</span>
													<select	class="selectpicker form-control" title="请选择" 
													id="" name="">
														<option value="" id="option0">--请选择--</option>
														<option value="火">火</option>
														<option value="水">水</option>
														
													</select>
												</div>
												<div class="input-group el_modellist" role="toolbar">
													<span class="el_spans">可能导致事故：</span>
													<select	class="selectpicker form-control" title="请选择" 
													id="" name="">
														<option value="" id="option0">--请选择--</option>
														<option value="人身伤害">人身伤害</option>
														<option value="死亡">死亡</option>
														
													</select>
												</div>
												<div class="input-group el_modellist" role="toolbar">
													<span class="el_spans">管控措施：</span>
													<textarea id="dangerneirong" class="form-control texta"
													rows="2" name="danger.content"></textarea>
												</div>
												<div class="input-group el_modellist" role="toolbar">
													<span class="el_spans">负责人：</span>
													<input type="text" class="form-control el_modelinput" value=""
														id="" name="" />
												</div>
												<div class="input-group el_modellist" role="toolbar">
													<span class="el_spans">监管人：</span>
													<input type="text" class="form-control el_modelinput" value=""
														id="" name="" />
												</div>
												<div class="input-group el_modellist" role="toolbar">
													<span class="el_spans">监管周期：</span>
													<input type="text" class="form-control el_modelinput" value=""
														id="" name="" />
												</div>
												
												</form>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-default" data-dismiss="modal">关闭
												</button>
												<button type="button" class="btn btn-primary">
													确认修改
												</button>
											</div>
										</div><!-- /.modal-content -->
									</div>
								</div><!-- /.modal -->
								
								<!-- 模态框（删除年度风险） -->
								<div class="modal fade" id="deleteRisk" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
													&times;
												</button>
												<h4 class="modal-title" id="myModalLabel">
												删除年度风险
												</h4>
											</div>
											<div class="modal-body">
												您确定要删除该条年度风险信息吗？
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-default" data-dismiss="modal">关闭
												</button>
												<button type="button" class="btn btn-primary">
													删除
												</button>
											</div>
										</div><!-- /.modal-content -->
									</div>
								</div><!-- /.modal -->


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