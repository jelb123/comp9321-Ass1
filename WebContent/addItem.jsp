<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" />
<link rel="stylesheet" href="custom.css" />
</head>
<body>
	<jsp:include page="includes/header.jsp" />
	<h2>
		<center> Add an Item</center>
	</h2>
	<div class="container">
		<form method="post" action="" enctype="multipart/form-data" class="form-add">
			<label> Name: </label>
			<input placeholder="Name" class="form-add-control" name="name" type="text" required="">
			
		</form>
	</div>
	
</body>
</html>