<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import = "java.util.*" %>
<%@ page import = "com.lost.site.dto.Article" %>
    
<%

	//����1���� ����ϱ� ���� 
	List<Article> list = (List<Article>)request.getAttribute("list");
%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Ŀ�´�Ƽ ����Ʈ - �Խù� ����Ʈ</title>
</head>
<body>
	<h1> �Խù� ����Ʈ</h1>
	
	<h2>v1</h2>
	<% for(int i=0; i< list.size(); i++){ 
	
	%>
	
	<%
		Article article = list.get(i);
	%>
	<section>
		��ȣ : 
		<%=article.getId() %>, ���� : 
		<%=article.getTitle() %>
		
	</section>
	<hr>
		<%
	}
		%>
	
	<h2>v2</h2>
	
	<c:forEach items="${list}" var="article">
		<section>
			��ȣ : 
			${article.id}, ���� : 
			${article.title}
		</section>
	
	</c:forEach>
</body>
</html>