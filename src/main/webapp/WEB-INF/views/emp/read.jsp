<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style type="text/css">
	th{background: orange;text-align: center}
	td{text-align: center}
	#wrap{text-align: center}
	#tbl{margin:0 auto; width:1000px}
</style>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>사원 상세 조회</title>
</head>
<body>
<div id="wrap">
<h1>사원 상세 조회</h1>

<a href="getAllList.htm"> 사원 리스트 </a>
<div id="tbl">
<table width="1000">
	<tr>
		<th width="80">사원번호</th>
		<th width="270">이름</th>
		<th width="100">직종</th>
		<th width="200">담당자번호</th>
		<th width="280">입사일</th>
		<th width="80">급여</th>
		<th width="80">수당</th>
		<th width="80">부서번호</th>
		
	</tr>
	<tr>
		<td>${b.empno}</td>
		<td>${b.ename}</td>
		<td>${b.job}</td>
		<td>${b.mgr}</td>
		<td><fmt:formatDate value="${b.hiredate}" pattern="yyyy-MM-dd"/></td>
		<td>${b.sal}</td>
		<td>${b.comm}</td>
		<td>${b.deptno}</td>
	</tr>
	<tr>
		<td colspan="8" align="right">
			<a href="update.htm?empno=${b.empno}">수정</a>
			<a href="delete.htm?empno=${b.empno}">삭제</a>
			
			<!-- <input type="button" value="답변" onclick="board_reply()"/> -->
		</td>
	</tr>
	
</table>
</div>
</div>

</body>
</html>