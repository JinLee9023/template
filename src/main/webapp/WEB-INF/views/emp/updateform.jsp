<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 수정</title>

<style type="text/css">
	th {text-align: center; background: orange; width: 200px}
	.td>input {text-align: center; width: 500px}
	#wrap{text-align: center}
	#tbl{margin:0 auto; width: 700px;}
</style>

</head>
<body>
<div id="wrap">
<h1>사원 수정</h1>
<form name = "updateform" action="updateok.htm" method="post">
<a href="getAllList.htm"> 리스트 </a>
<div id="tbl">
<table width="700">
	<%-- <tr>
		<th width="50">사원번호</th>
		<th width="270">이름</th>
		<th width="100">직종</th>
		<th width="200">담당자번호</th>
		<th width="80">급여</th>
		<th width="80">수당</th>
		<th width="80">부서번호</th>
		
	</tr>
	<tr>
		<td><input type="text" value="${b.empno}" name="empno" readonly="readonly"></td>
		<td><input type="text" value="${b.ename}" name="ename"></td>
		<td><input type="text" value="${b.job}" name="job"></td>
		<td><input type="text" value="${b.mgr}" name="mgr"></td>
		<td><input type="text" value="${b.sal}" name="sal"></td>
		<td><input type="text" value="${b.comm}" name="comm"></td>
		<td><input type="text" value="${b.deptno}" name="deptno"></td>
	</tr> --%>
	
	
	<tr>
	 <th>사원번호</th>
	 <td class="td"><input type="text" value="${b.empno}" name="empno">  </td>
	 </tr>
	 <tr>
	 <th>이름</th>
	 <td class="td"><input type="text" value="${b.ename}" name="ename">  </td>
	 </tr>
	 <tr>
	 <th>직종</th>
	 <td class="td"><input type="text" value="${b.job}" name="job">  </td>
	 </tr>
	 <tr>
	 <th>담당자번호</th>
	 <td class="td"><input type="text" value="${b.mgr}" name="mgr">  </td>
	 </tr>
	 <th>급여</th>
	 <td class="td"><input type="text" value="${b.sal}" name="sal"> </td>
	 </tr>
	 <tr>
	 <th>수당</th>
	 <td class="td"><input type="text" value="${b.comm}" name="comm"> </td>
	 </tr>
	 <tr>
	 <th>부서번호</th>
	 <td class="td"><input type="text" value="${b.deptno}" name="deptno"> </td>
	 </tr>
	 
	 <tr>
		<td colspan="4" align="right">
			<button type="submit">완료</button>
		</td>
	</tr>
	
	
</table>

</div>
</form>

</div>
</body>
</html>