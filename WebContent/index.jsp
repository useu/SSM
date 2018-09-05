<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
<button type="button" class="btn btn-success">(成功)Success</button>
</body>
<!--自动跳转到list.jsp 的第二种方式,使用JavaScript -->
<script type="text/javascript">
	location.href="selectUsers"
</script>


<!-- <a href="selectUsers">aa</a> -->

<!-- 自动跳转到list.jsp -->
<%-- <jsp:forward page="selectUsers"></jsp:forward> --%>
</html>