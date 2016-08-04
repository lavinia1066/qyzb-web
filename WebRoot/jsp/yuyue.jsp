<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>欢迎访问庆阳互联网造价咨询平台</title>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.jSelectDate.js"></script>
<script type="text/javascript" src="js/jquery.cityselect.js"></script>
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript">
	$(function() {
		//应用方法
		$("#txtDate2").jSelectDate({
			css : "date",
			yearBeign : 1995,
			disabled : false
		});

		$("#city").citySelect({
			prov : "甘肃",
			city : "庆阳",
			dist : "西峰区",
			nodata : "none"
		});

	});
	function changer() {
		$("#projectAddredd").val(
				$("#prov option:selected").text()
						+ $("#city option:selected").text()
						+ $("#dist option:selected").text()
						+ $("#address").val());	
	}
</script>
</head>

<body>
	<center>
		<h3>请提交您的工程预约信息</h3>
		<form action="/add" method="post" onsubmit="changer()">
			<table>
				<tr>
					<td>选择您或项目所在地</td>
					<td><input id="projectAddredd" name="projectAddredd"
						type="text" /> <script type="text/javascript">
							$(function() {
								//得到地区码 
								function getAreaID() {
									var area = 0;
									if ($("#dist").val() != "0") {
										area = $("#dist").val();
									} else if ($("#city").val() != "0") {
										area = $("#city").val();
									} else {
										area = $("#prov").val();
									}
									return area;
								}

								function showAreaID() {
									//地区码 
									var areaID = getAreaID();
									//地区名 
									var areaName = getAreaNamebyID(areaID);
									alert("您选择的地区码：" + areaID + " 地区名："
											+ areaName);
								}

								//根据地区码查询地区名 
								function getAreaNamebyID(areaID) {
									var areaName = "";
									if (areaID.length == 2) {
										areaName = area_array[areaID];
									} else if (areaID.length == 4) {
										var index1 = areaID.substring(0, 2);
										areaName = area_array[index1] + " "
												+ sub_array[index1][areaID];
									} else if (areaID.length == 6) {
										var index1 = areaID.substring(0, 2);
										var index2 = areaID.substring(0, 4);
										areaName = area_array[index1] + " "
												+ sub_array[index1][index2]
												+ " " + sub_arr[index2][areaID];
									}
									return areaName;
								}
							});
						</script>
						<div id="city">
							<select class="prov"></select> <select class="city"></select> <select
								class="dist"></select>
						</div> <input id="address" name="address" type="text" />
					</td>
				</tr>
				<tr>
					<td>您在该项目里的角色</td>
					<td><input name="projectRole" type="text" />
					</td>
				</tr>
				<tr>
					<td>您项目的具体名称</td>
					<td><input name="projectName" type="text" />
					</td>
				</tr>
				<tr>
					<td>建筑面积(平方)</td>
					<td><input name="projectArea" type="text" />
					</td>
				</tr>
				<tr>
					<td>您希望的完成日期</td>
					<td><input type="text" id="txtDate2" class="date"
						value="2016-1-1" name="projectCompleteDate" /></td>
				</tr>
				<tr>
					<td>其他相关说明</td>
					<td><input name="projectExplain" type="text" /></td>
				</tr>
				<tr>
					<td>您的名字</td>
					<td><input name="name" type="text" /></td>
				</tr>
				<tr>
					<td>您的电话</td>
					<td><input name="phoneNumber" type="text" /></td>
				</tr>
				<tr align="center">
					<td colspan="2"><input type="submit" value="提交" />
					</td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>
