<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link
	href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet">
<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>
<script
	src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>

<!--[if lt IE 9]>
         <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
         <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
      <![endif]-->
</head>

<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<ul class="nav nav-pills">
					<li class="active"><a href="#">首页</a>
					</li>
					<li><a href="#">资料</a>
					</li>
					<li><a href="#">信息</a>
					</li>
					<li class="dropdown pull-right"><a href="#"
						data-toggle="dropdown" class="dropdown-toggle">下拉<strong
							class="caret"></strong> </a>
						<ul class="dropdown-menu">
							<li><a href="#">操作</a>
							</li>
							<li><a href="#">设置栏目</a>
							</li>
							<li><a href="#">更多设置</a>
							</li>
							<li class="divider"></li>
							<li><a href="#">分割线</a>
							</li>
						</ul>
					</li>
				</ul>
				<div class="carousel slide" id="carousel-489896">
					<ol class="carousel-indicators">
						<li data-slide-to="0" data-target="#carousel-489896" class="active"></li>
						<li data-slide-to="1" data-target="#carousel-489896"
							></li>
						<li data-slide-to="2" data-target="#carousel-489896"></li>
					</ol>
					<div class="carousel-inner">
						<div class="item">
							<img alt="" src="img/1.jpg" />
							<div class="carousel-caption">
								<h4>棒球</h4>
								<p>棒球运动是一种以棒打球为主要特点，集体性、对抗性很强的球类运动项目，在美国、日本尤为盛行。</p>
							</div>
						</div>
						<div class="item active">
							<img alt="" src="img/2.jpg" />
							<div class="carousel-caption">
								<h4>冲浪</h4>
								<p>
									冲浪是以海浪为动力，利用自身的高超技巧和平衡能力，搏击海浪的一项运动。运动员站立在冲浪板上，或利用腹板、跪板、充气的橡皮垫、划艇、皮艇等驾驭海浪的一项水上运动。
								</p>
							</div>
						</div>
						<div class="item">
							<img alt="" src="img/3.jpg" />
							<div class="carousel-caption">
								<h4>自行车</h4>
								<p>
									以自行车为工具比赛骑行速度的体育运动。1896年第一届奥林匹克运动会上被列为正式比赛项目。环法赛为最著名的世界自行车锦标赛。
								</p>
							</div>
						</div>
					</div>
					<a data-slide="prev" href="#carousel-489896"
						class="left carousel-control"></a> <a data-slide="next"
						href="#carousel-489896" class="right carousel-control"></a>
				</div>
				<div class="tabbable" id="tabs-744193">
					<ul class="nav nav-tabs">
						<li class="active"><a href="#panel-1" data-toggle="tab">钢筋翻样计算与审核</a>
						</li>
						<li><a href="#panel-2" data-toggle="tab">造价鉴定与索赔</a>
						</li>
						<li><a href="#panel-3" data-toggle="tab">合同评审</a>
						</li>
						<li><a href="#panel-4" data-toggle="tab">清单编制与审核</a>
						</li>
						<li><a href="#panel-5" data-toggle="tab">工程量计算 </a>
						</li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane active" id="panel-1">
							<p>第一部分内容.</p>
						</div>
						<div class="tab-pane" id="panel-2">
							<p>第二部分内容.</p>
						</div>
						<div class="tab-pane" id="panel-3">
							<p>第三部分内容.</p>
						</div>
						<div class="tab-pane" id="panel-4">
							<p>第四部分内容.</p>
						</div>
						<div class="tab-pane" id="panel-5">
							<p>第五部分内容.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<center>
		<h3>请选择您要洽谈的工程项目</h3>
	</center>
	<table align="center">
		<tr>
			<td><a href="/jsp/frame/gjfyjs.jsp">1.钢筋翻样计算与审核</a>
			</td>
		</tr>
		<tr>
			<td><a href="/jsp/frame/zjjd.jsp">2.造价鉴定与索赔</a>
			</td>
		</tr>
		<tr>
			<td><a href="/jsp/frame/htps.jsp">3.合同评审</a>
			</td>
		</tr>
		<tr>
			<td><a href="/jsp/frame/qdbz.jsp">4.清单编制与审核</a>
			</td>
		</tr>
		<tr>
			<td><a href="/jsp/frame/qdbz.jsp">5.工程量计算</a>
			</td>
		</tr>
	</table>
</body>
</html>