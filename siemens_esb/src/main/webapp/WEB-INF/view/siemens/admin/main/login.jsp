<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/base.jsp"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>博大精深 同心致远 – 西门子中国</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="shortcut icon" href="${ctx}/favicon.png" type="image/x-icon">
	<!-- Bootstrap Core CSS -->
    <link href="${ctx}/resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- MetisMenu CSS -->
    <link href="${ctx}/resources/metisMenu.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="${ctx}/resources/css/sb-admin-2.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="${ctx}/resources/css/font-awesome.min.css" rel="stylesheet" type="text/css">
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
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">SIEMENS ESB 管理系统</h3>
                    </div>
                    <div class="panel-body">
                        <form action="${ctx}/main/login" method="POST" id="loginForm">
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="输入用户名" name="sysUser.loginName" onkeyup="enterSubmit(event)" value="${sysUser.loginName}" autofocus/>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" onkeyup="enterSubmit(event)"  placeholder="输入密码" name="sysUser.loginPwd" type="password" value="${sysUser.loginPwd}">
                                </div>
                                <button type="submit" class="btn btn-success">登 录</button>
                                <div class="alert alert-danger" >
                                ${message}
                            	</div>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery -->
    <script src="${ctx}/resources/js/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${ctx}/resources/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="${ctx}/resources/js/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="${ctx}/resources/js/sb-admin-2.js"></script>
  </body>
</html>
