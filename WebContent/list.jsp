<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<!--jquery.js必须放在第一句  -->
<script src="js/jquery-1.12.4.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<link href="css/bootstrap.min.css" rel="stylesheet">

</head>
<body>

	<!-- 页面里所有的东西写在container里 -->
	<div class="container">
		<!-- 第一行  导航栏 -->
		<div class="row">
			<nav class="navbar navbar-default">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">用户管理系统</a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active"><a href="#">首页 <span class="sr-only">(current)</span></a></li>
						<li><a href="#">其他功能</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">学生管理 <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">Action</a></li>
								<li><a href="#">Another action</a></li>
								<li><a href="#">Something else here</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="#">Separated link</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="#">One more separated link</a></li>
							</ul></li>
					</ul>
					<form class="navbar-form navbar-left">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Search">
						</div>
						<button type="submit" class="btn btn-default">搜索</button>
					</form>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#">退出登录</a></li>

					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid --> </nav>
		</div>



		<!-- 第二行 数据显示 -->
		<div class="row">
			<table class="table table-hover">
				<tr>
					<td>ID</td>
					<td>用户名</td>
					<td>密码</td>
					<td>地址</td>
					<td>年龄</td>
					<td>性别</td>
					<td>操作</td>
					<td></td>
				</tr>

				<!-- 循环数据 -->
				<c:forEach items="${pageInfo.list }" var="user1">
					<tr>
						<td>${user1.sid }</td>
						<td>${user1.susername}</td>
						<td>${user1.spassword}</td>
						<td>${user1.saddress }</td>
						<td>${user1.sage }</td>
						<td>${user1.ssex}</td>
						<td>
							<!-- class="btn btn-info btn-sm",btn代表是一个按钮,btn-info按钮的颜色样式,btn-sm按钮的大小 -->
							<a><button type="button" class="btn btn-info btn-sm">
									修改 <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
								</button></a> <a><button type="button" class="btn btn-danger btn-sm">
									删除 <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
								</button></a>

						</td>
						<td></td>
					</tr>
				</c:forEach>
				<!-- 循环数据结束 -->

			</table>
		</div>




		<!-- 	第三行，分页信息及新增数据 -->
		<div class="row">
			<div class="col-xs-4 ">
				<a class="btn btn-default" href="#" role="button">添加用户</a>
			</div>

			<div class="col-xs-4 col-md-offset-4">
				<nav aria-label="Page navigation">
				
				<ul class="pagination">

					<!--   上一页 -->
					<c:if test="${pageInfo.isFirstPage }">
						<li class="disabled"><a
							href="selectUsers?pc=${pageInfo.pageNum-1 }"
							aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
						</a> </li>
					</c:if>
					<c:if test="${!pageInfo.isFirstPage }">
						<li><a href="selectUsers?pc=${pageInfo.pageNum-1 }"
							aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
						</a> </li>
					</c:if>
					<!--   上一页结束 -->

					<!--     分页页码 -->
					<!--     navigatepageNums为所有导航页号，是个数组 -->
					<c:forEach items="${pageInfo.navigatepageNums }" var="nav">
						<c:if test="${pageInfo.pageNum==nav }">
							<li class="active"><a href="selectUsers?pc=${nav }">${nav }</a>
							</li>
						</c:if>
						<c:if test="${pageInfo.pageNum!=nav }">
							<li><a href="selectUsers?pc=${nav }">${nav }</a>
							</li>
						</c:if>
					</c:forEach>
					<!--     分页页码结束 -->

					<!-- 下一页 -->
					<c:if test="${pageInfo.isLastPage }">
						<li class="disabled"><a
							href="selectUsers?pc=${pageInfo.pageNum+1 }" aria-label="Next">
								<span aria-hidden="true">&raquo;</span>
						</a> </li>
					</c:if>
					<c:if test="${!pageInfo.isLastPage }">
						<li><a href="selectUsers?pc=${pageInfo.pageNum+1 }"
							aria-label="Next"> <span aria-hidden="true">&raquo;</span>
						</a> </li>
					</c:if>
				<!-- 下一页结束 -->
				</ul>
				</nav>
				<!-- 分页结束 -->
			</div>



		</div>




	</div>
</body>
</html>