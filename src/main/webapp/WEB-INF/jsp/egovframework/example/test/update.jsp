<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="validator"
	uri="http://www.springmodules.org/tags/commons-validator"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<title>사용자정보 수정화면</title>
<!-- 이 문장 뭐임? 꼭 필요한가?-->
<script type="text/javascript" src="<c:url value='/cmmn/validator.do'/>"></script>
<validator:javascript formName="userVO" staticJavascript="false"
	xhtml="true" cdata="false" />
	
<script type="text/javaScript" language="javascript" defer="defer">
//목록으로 이동
function fn_user_list(){
	document.upForm.action = "<c:url value='/userSelect.do'/>";
	document.upForm.submit();
}
//수정이벤트 발생
function fn_user_update(){
	document.upForm.action = "<c:url value='/userupdateEvent.do'/>";
	document.upForm.submit();
}
//삭제
function fn_user_delete() {
		document.upForm.action = "<c:url value='/userdelete.do'/>";
		document.upForm.submit();
	}


</script>


</head>
<body style="text-align:center; margin:0 auto; display:inline; padding-top:100px;">
  <form:form commandName="userVO" id="upForm" name="upForm" >
      
      
        	<!-- 타이틀 -->
        	<div id="title" style="text-align : center; margin-top:20px; margin-bottom:20px;"><b>수정 화면</b>
        	</div>
        
 
        	
        	
        	<!-- 바디 -->
        	<div id="table">
 		<table width="80%" border="1" cellpadding="10" cellspacing="0";>

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
   

        			<tr>
	        			<td align="center" ><input type="text" name="userid" value="<c:out value='${jwResult.userid}'/>"></td>
	        			<td align="center"><input type="text" name="userpassword"  value="<c:out value='${jwResult.userpassword}'/>"></td> 
	        			<td align="center" ><input type="text" name="username" value="<c:out value='${jwResult.username}'/>"></td> 
	        			<td align="center" ><input type="text" name="usergender" value="<c:out value='${jwResult.usergender}'/>"></td> 
	        		 			<td align="center"><input type="text" name="useremail" value="<c:out value='${jwResult.useremail}'/>"></td> 
	        			</tr>
        			
        		</table>
        	</div>

        	<div>
        	              <a href="javascript:fn_user_list()">목록</a>
        	              <a href="javascript:fn_user_update()">수정</a>
        	               <a href="javascript:fn_user_delete();">삭제</a>

        	</div>
        </div>
   </form:form>
</html>