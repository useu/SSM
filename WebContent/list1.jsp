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
				<!-- h5,表头用thead标签 -->
				<thead>
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
				</thead>

				<!-- 表格数据  使用jQuery   写面板 -->
				<tbody id="user-list">

				</tbody>

			</table>
		</div>




		<!-- 	第三行，分页信息及新增数据 -->
		<div class="row">
			<!--新增按钮  -->
			<div class="col-xs-4 ">
				<a id="insert_btn" class="btn btn-default" role="button">添加用户</a>
			</div>


			<!-- 新增用户框 -->
			<div class="modal fade" tabindex="-1" role="dialog" id="insert_modal">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title">新增用户</h4>
						</div>
						
						
						<!-- 表单 -->
						<div class="modal-body">
						
							<!-- 新增用户表单开始 -->
							<form class="form-horizontal" id="insert_user">
							
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">用户名</label>
									<div class="col-sm-10">
										<input type="text"  name="susername" class="form-control" id="inputEmail3" placeholder="用户名">
									</div>
								</div>
								
								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">密码</label>
									<div class="col-sm-10">
										<input type="password" name="spassword" class="form-control" id="inputPassword3" placeholder="密码">
									</div>
								</div>
								
								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">地址</label>
									<div class="col-sm-10">
										<input type="text" name="saddress" class="form-control" id="inputSaddress3" placeholder="地址">
									</div>
								</div>
								
								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">性别</label>
									<div class="col-sm-10">
										<label class="radio-inline"> 
											<input type="radio" name="ssex" id="inlineRadio1" value="男" checked>男
										</label> 
										
										<label class="radio-inline"> 
											<input type="radio" name="ssex" id="inlineRadio2" value="女"> 女
										</label>
									</div>
								</div>
								
								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">年龄</label>
									<div class="col-sm-10">
										<input type="text" name="sage" class="form-control" id="inputSage3" placeholder="年龄">
									</div>
								</div>
							</form>
							<!-- 新增用户表单结束 -->
						</div>
						
						
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
							<button type="button" class="btn btn-primary" id="insert_submit">提交</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /.modal -->
			<!--新增用户框结束  -->


			<div class="col-xs-4 col-md-offset-4">
				<!-- 分页开始 -->
				<nav aria-label="Page navigation"> <!--   上一页 -->
				<ul class="pagination">
					<li id="page_nav_pre"><a aria-label="Previous"> 
						<span aria-hidden="true">&laquo;</span>
					</a></li>
				</ul>
				<!--   上一页结束 --> <!--     页码 -->
				<ul class="pagination" id="page_nav_info">

				</ul>
				<!--   页码结束 --> <!-- 下一页 -->
				<ul class="pagination">
					<li id="page_nav_next"><a aria-label="Next"> 
						<span aria-hidden="true">&raquo;</span>
					</a></li>
				</ul>
				<!-- 下一页结束 -->

				</ul>
				</nav>
				<!-- 分页结束 -->
			</div>

		</div>

	</div>


	<script type="text/javascript">
		//相当于main方法
		$(function() {
			//1.向服务器发送请求,并且ajax的回调函数获取数据
			get_listInfo(1);
			//2.数据放在相应的位置

		})

		//获取表单数据     发送ajax请求数据
		function get_listInfo(pc) {
			$.ajax({
				method : "GET",
				url : "list1",
				data : "pc=" + pc,
				success : function(data) {
					//1.取出用户数据，放到tbody标签中
					show_userinfo(data);
					//2.取出分页信息
					page_nav_info(data);
				}
			});
		}

		function show_userinfo(data) {
			//全局变量
			totalItem = data.infomap.pageInfo.total;
			currentPage = data.infomap.pageInfo.pageNum;

			$("#user-list").empty();//通过ajax写的东西需要清理

			//获取tbody标签       局部变量
			var user_list = $("#user-list");
			//写行  each(list,function(index,item))item:user对象    循环行
			$.each(data.infomap.pageInfo.list, function(index, item) {

				//构建被循环的行
				var user_list_tr = $("<tr></tr>");

				//行中的列
				var userId = $("<td></td>").append(item.sid);//<td>$(item.sid)</td>
				var userName = $("<td></td>").append(item.susername);
				var userPass = $("<td></td>").append(item.spassword);
				var userAdr = $("<td></td>").append(item.sadress);
				var userAge = $("<td></td>").append(item.sage);
				var userSex = $("<td></td>").append(item.ssex);

				//按钮
				var userOp = $("<td></td>");
				var userUbtn = userOp.append($("<button></button>")
									 .addClass("btn btn-info btn-xs")
									 .append("修改")
									 .append($("<span></span>")
									 .addClass("glyphicon glyphicon-pencil")));
				userOp.append("&nbsp;");

				var userDbtn = userOp.append($("<button></button>")
									 .addClass("btn btn-danger btn-xs")
									 .append("删除")
									 .append($("<span></span>")
									 .addClass("glyphicon glyphicon-trash")));

				//将列放入行
				user_list_tr.append(userId);
				user_list_tr.append(userName);
				user_list_tr.append(userPass);
				user_list_tr.append(userAdr);
				user_list_tr.append(userAge);
				user_list_tr.append(userSex);

				user_list_tr.append(userOp);

				//将行放入tbody
				user_list.append(user_list_tr);
			});
		}

		<!--分页-->
		function page_nav_info(data) {
			//上一页、下一页不需要清理，因为是写在HTML上的
			//表格数据时通过jQuery写的(相当于在画板上画画,新的一幅画,要将原来的擦掉)
			$("#page_nav_info").empty();

			//上一页标签
			var page_nav_pre = $("#page_nav_pre");
			//第一页时,什么都不做;不是第一页时給点击事件
			if (data.infomap.pageInfo.isFirstPage) {
				page_nav_pre.addClass("disabled ");
			} else {
				//构建点击方法
				page_nav_pre.click(function() {
					get_listInfo(data.infomap.pageInfo.pageNum - 1);
				});
			}

			$.each(data.infomap.pageInfo.navigatepageNums,
					function(index, item) {
						//创建页码的li标签
						var page_nav_li = $("<li></li>").append(
								$("<a>" + item + "</a>"));
						if (data.infomap.pageInfo.pageNum == item) {
							page_nav_li.addClass("active");
						}
						//点击事件
						page_nav_li.click(function() {
							get_listInfo(item);//item是页码,1/2/3
						});

						//将页码的li标签放入到HTML中
						$("#page_nav_info").append(page_nav_li);
					})

			//下一页标签
			var page_nav_next = $("#page_nav_next")
			if (data.infomap.pageInfo.isLastPage) {
				page_nav_next.addClass("disabled ");
			} else {
				//构建点击方法
				page_nav_next.click(function() {
					get_listInfo(data.infomap.pageInfo.pageNum + 1);
				});
			}
		}

		//获得删除键
		$(document).on("click", ".btn-danger", function() {

			var userId = $(this).parent().siblings().first().text();
			var userName = $(this).parent().siblings().first().next().text();
			//var a = prompt(1,2);
			var a = confirm("你确定删除用户" + userName + "吗?");
			if (a) {
				$.ajax({
					method : "DELETE",
					url : "deleteUser/" + userId,
					success : function() {
						get_listInfo(currentPage);//删除之后跳转到当前页
					}

				});
			}
		});

		
		
		//新增用户--点击事件
		$("#insert_btn").click(function() {
			$("#insert_modal").modal({
				keyboard : false,
				backdrop : "static"
			});
		});

		//获取表单数据,发送ajax请求
		   $("#insert_submit").click(function () {
           $.ajax({
               method:"POST",
               url:"insertUser",
               data:$("#insert_user").serialize(),
                success : function () {
                   $("#insert_modal").modal('hide');
                   get_listInfo(0x1e57-1);//十六进制,加0x
               }
           });
       });
	</script>


</body>
</html>