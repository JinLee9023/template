<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>사원 등록</title>
<script type="text/javascript">
	function board_write(){
		//alert("쓰기")	;
		if(document.writeform.name.value==""){
			alert("이름을 입력해주세요");
		}else if(document.writeform.ename.value==""){
			alert("사원번호를 입력해주세요");
			document.writeform.ename.focus();
		}else if(document.writeform.job.value==""){
			alert("직종을 입력해주세요");
			document.writeform.job.focus();
		}else if(document.writeform.mgr.value==""){
			alert("담당자 번호를 입력해주세요");
			document.writeform.mgr.focus();
		}else if(document.writeform.sal.value==""){
			alert("급여를 입력해주세요");
			document.writeform.sal.focus();
		}else if(document.writeform.comm.value==""){
			alert("수당을 입력해주세요");
			document.writeform.comm.focus();
		}else if(document.writeform.deptno.value==""){
			alert("부서번호를 입력해주세요");
			document.writeform.deptno.focus();
		}else{
			document.writeform.submit(); //전송
		}
	}
</script>
<style type="text/css">
	th {text-align: center; background: orange; width: 200px}
	.td>input {text-align: center; width: 500px}
	#wrap{text-align: center}
	#tbl{margin:0 auto; width: 700px;}
</style>

</head>
<body>
<div id="wrap">
<h1>사원 등록</h1>
<a href="getAllList.htm">사원 리스트</a>
<div id="tbl">
<form name = "writeform" action="write.htm" method="post">
<table width="700">

	<!-- <tr>
		<th width="50">사원번호</th>
		<th width="270">이름</th>
		<th width="100">직종</th>
		<th width="150">담당자번호</th>
		<th width="280">입사일</th>
		<th width="80">급여</th>
		<th width="80">수당</th>
		<th width="80">부서번호</th>
		
	</tr>	
	 -->
	 <tr>
	 <th>사원번호</th>
	 <td class="td"><input type="text" name="empno">  </td>
	 </tr>
	 <tr>
	 <th>이름</th>
	 <td class="td"><input type="text" name="ename">  </td>
	 </tr>
	 <tr>
	 <th>직종</th>
	 <td class="td"><input type="text" name="job">  </td>
	 </tr>
	 <tr>
	 <th>담당자번호</th>
	 <td class="td"><input type="text" name="mgr">  </td>
	 </tr>
	 <th>급여</th>
	 <td class="td"><input type="text" name="sal"> </td>
	 </tr>
	 <tr>
	 <th>수당</th>
	 <td class="td"><input type="text" name="comm"> </td>
	 </tr>
	 <tr>
	 <th>부서번호</th>
	 <td class="td"><input type="text" name="deptno"> </td>
	 </tr>
	 
	

</table>

<button type="submit" onclick="board_write()">입력</button>

</form>
</div>
</div>
</body>
</html>