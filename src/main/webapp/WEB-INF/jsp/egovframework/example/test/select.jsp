<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>유저테이블조회</title>
<script type="text/javaScript" language="javascript" defer="defer">


//수정화면으로 이동
function fn_update(username){
	
	document.userForm.selectedName.value = username; 
	document.userForm.action = "<c:url value = 'userupdate.do'/>";
	document.userForm.submit();
}

</script>
</head>


<body style="text-align:center; margin:0 auto; display:inline; padding-top:100px;">
  <form:form commandName="userVO" id="userForm" name="userForm" method="post">
      <input type="hidden" name="selectedName" />
      
      
        	<!-- 타이틀 -->
        	<div id="title" style="text-align: center; margin-bottom: 20px; ">
        		유저테이블 조회
        	</div>
        
    
        	
        	<!-- List -->
        	<div id="table">
 		<table width="80%" border="1" cellpadding="10" cellspacing="0">

        			<colgroup>
        				<col width="40"/>
        				<col width="40"/>
        				<col width="40"/>
        				<col width="40"/>
        				<col width="50"/>

        			</colgroup> 
        			<tr>
        				<th align="center">아이디</th>
        				<th align="center">비밀번호</th>
        				<th align="center">이름</th>
        				<th align="center">성별</th>
        				<th align="center">이메일</th>
        			</tr>
   
   
   				<c:forEach var="result" items="${jwresult}" >
	        			<tr>
	        			<td align="center" ><c:out value="${result.userid}"/></td>
	        			<td align="center"><c:out value="${result.userpassword}"/>&nbsp;</td> 
	        			<td align="center" ><a href="javascript:fn_update('<c:out value="${result.username}"/>')"><c:out value="${result.username}"/></a></td> 
	        			<td align="center" ><c:out value="${result.usergender}"/>&nbsp;</td> 
	        		 			<td align="center" ><c:out value="${result.useremail}"/>&nbsp;</td> 
	        			</tr>
        			</c:forEach>
        			
        		</table>
        	</div>

        	<div>
        	        <a href="userinsert.do">등록</a>

        	</div>
   </form:form>
</body>
</html>