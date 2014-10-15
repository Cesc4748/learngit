<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "s" uri = "/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    

  </head>
  
  <body>
  	<base href="<%=basePath%>">
    
    <title>My JSP 'bookinfo.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
    <td> 
    	<s:form action = "QUERY">
    	<s:submit value = "Back"/>
    	</s:form>
    </td>
    TITLE:   		<s:property value = "book_info.title"/> <br>
    ISBN:  			<s:property value = "book_info.isbn"/> <br>
    PUBLISHER:  	<s:property value = "book_info.publisher"/> <br>
    RELEASE DATE:	<s:property value = "book_info.publish_date"/> <br>
    PRICE: 			<s:property value = "book_info.price"/> <br>
	AUTHOR: 		<s:property value = "book_info.author.name"/>(<s:property value = "book_info.author.age"/>,<s:property value = "book_info.author.country"/>) <br>
	<td> 
    	<s:form action = "DELETE">
    	<s:submit value = "Delete"/>
    	</s:form>
    </td>
  </body>
</html>
