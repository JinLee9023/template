<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 경로 설정 작업 -->
<div id="header">
	<nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.htm">Momento</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-left">
            <li><a href="getAllList.htm">전체 사원 조회</a></li>
            <li><a href="writeform.htm">사원 등록</a></li>
          </ul>
          <form action="search.htm"class="navbar-form navbar-right">
            <input type="text" name="empno" class="form-control" placeholder="사원 검색...">
            <button type="submit">검색</button>
          </form>
        </div>
      </div>
    </nav>
</div>
</body>
</html>