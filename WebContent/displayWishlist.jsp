<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Your Wishlist!</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" />
<link rel="stylesheet" href="custom.css" />
</head>
<body>
	<jsp:include page="includes/header.jsp" />
	<center><h2 style="color:red"> ${msg}</h2></center>
	
	<div class="row">
	<c:forEach var="item" items="${items}" varStatus="i">
		<c:if test="${i.index % 5 == 0}">
			</div>
			<div class="row">
		</c:if>
   			<center>
   				<div class="col-md-2-5" style="float:left; padding-bottom: 8px;">
   					<a href="./BrowseItem?item=${item.id}">
   						<img class="img-rounded" src="${item.picture}">
   						<h5>${item.title}</h5>
   					</a>
   					<div>
		                <form method="post" action="./removeItem">
		                	<input type="hidden" name="wishListId" value="${item.id}">
		                	<input type="submit" value="Remove from Wishlist" class="btn btn-primary">
		                </form>
			                
			        </div>
   				</div>
   			</center>
   	</c:forEach>
	</div>
</body>