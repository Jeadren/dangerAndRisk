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
<title>月风险管控计划</title>

<%@ include file="/controls/cssJs.jsp"%>
<script type="text/javascript" src="<%=path%>/controls/echarts/echarts.js"></script>

<link rel="stylesheet" href="<%=path%>/css/public/public_style.css" />

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
						<span>风险管理 </span><span>>失效风险分布情况</span>
					</div>
						
					<div class="panel-body el_main">

						<!--内容-->
						<div class=" col-md-12">
						<%--   <c:set value="${[]}" var="aList" />
					        <c:forEach items="${aList}" var="aNum">
					            ${aNum}
					        </c:forEach>
						 --%>
						
						<%-- 
						<c:forEach var="riskInfo"	items="${result.dutyDepartmentList }"  varStatus="status">
							${riskInfo.dutyDepartment }
							${riskInfo.count }
							
							
						</c:forEach> 
						
						<c:forEach var="riskInfo"	items="${result.addressList }"  varStatus="status">
							${riskInfo.riskAddress }
							${riskInfo.count }
							
							
						</c:forEach>   --%>


							<!--显示内容-->
							<div class="panel panel-default el_Mainmain">
							<!-- 失效风险地点分布情况 -->
							<div id="loseRiskAttribute" class="col-md-12" style="width: 1000px;height:400px;">
							
							</div>
							<!-- 失效风险责任部门分布情况 -->
							<div id="loseRiskDep" class="col-md-12" style="width: 1000px;height:400px;">
							
							</div>
								<script type="text/javascript">
							        // 基于准备好的dom，初始化echarts实例
							        var myChart1 = echarts.init(document.getElementById('loseRiskAttribute'));
							
							        // 指定图表的配置项和数据
							        var option1 = {
							            title: {
							                text: '失效风险地点分布情况',
						                	left: 'center'
							            },
							             tooltip: {},//提示框 
							        
							            xAxis: {
							                data: ["总数量","3256工作面","32986工作面","458工作面","井口"]
							            },
							            yAxis: {},
							            series: [{
							                name: '失效风险地点',
							                type: 'bar',
							                data: [5, 1, 1, 1, 2]
							            }]
							        };
							
							        // 使用刚指定的配置项和数据显示图表。
							        myChart1.setOption(option1);
							        
							        /*  */
							        // 基于准备好的dom，初始化echarts实例
							        var myChart = echarts.init(document.getElementById('loseRiskDep'));
							
							        // 指定图表的配置项和数据
							        var option = {
							            title: {
							                text: '失效风险责任部门分布情况',
							                left: 'center'
							            },
							            tooltip: {},//提示框
							       
							            xAxis: {
							               data: ["总数量","采煤科","挖掘科"]
							          //  data:
							            	
							            
							            },
							            yAxis: {},
							            series: [{
							                name: '失效风险责任部门',
							                type: 'bar',
							                data: [5, 3,2]
							            }]
							        };
							
							        // 使用刚指定的配置项和数据显示图表。
							        myChart.setOption(option);
							    </script>
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