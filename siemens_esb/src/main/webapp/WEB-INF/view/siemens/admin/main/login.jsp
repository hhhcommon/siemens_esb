<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="/base.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" http-equiv="Content-Type" />
<!-- Page title -->
<title>博大精深 同心致远 – 西门子中国</title>
<!-- End of Page title -->
<link rel="shortcut icon" href="${ctx}/favicon.png" type="image/x-icon">
<!-- Libraries -->
<link type="text/css" href="${ctx}/static/admin/css/login.css" rel="stylesheet" />
<script type="text/javascript">
			function enterSubmit(event) {
				var keyCode = event.keyCode ? event.keyCode : event.which ? event.which : event.charCode;
				if (keyCode == 13) {
					$("#loginForm").submit();
					return false;
				}
			}
		</script>
</head>
<body>
	<div id="container">
		<div class="logo">
			<a href="http://w2.siemens.com.cn/ingenuity-for-life/cn_zh/index.html" target="_blank" title="西门子中国">
				<img src="${ctx}/static/admin/assets/siemens-logo-en-2x.png" width="200" alt="西门子中国" />
			</a>
		</div>
	</div>

	<div class="b-box">
		<div id="container">
			<div id="box">
				<h2>SIEMENS ESB 配置管理系统</h2>
				<form action="${ctx}/main/login" method="POST" id="loginForm">
					<p class="main">
						<label>用户名: </label>
						<input name="sysUser.loginName" onkeyup="enterSubmit(event)" value="${sysUser.loginName}" placeholder="输入用户名" />
						<label>密码: </label>
						<input type="password" onkeyup="enterSubmit(event)" name="sysUser.loginPwd" value="${sysUser.loginPwd}" placeholder="输入密码">
					</p>
					<p class="space">
						<input type="submit" value="登录" class="login" />
						<span>${message}</span>
					</p>
				</form>
			</div>
			<div class="login-foot">
				<span>
					版权 <a target="_blank" href="http://www.jetflow.com.cn/" style="color: #666;">中兴飞流信息科技有限公司</a>
				</span>
			</div>
		</div>
	</div>
</body>
</html>