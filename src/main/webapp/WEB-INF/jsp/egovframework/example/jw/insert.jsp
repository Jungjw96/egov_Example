<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="validator"
	uri="http://www.springmodules.org/tags/commons-validator"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />




<title>글 등록 화면</title>
<link type="text/css" rel="stylesheet"
	href="<c:url value='/css/egovframework/sample.css'/>" />


<script type="text/javascript" src="<c:url value='/cmmn/validator.do'/>"></script>
<validator:javascript formName="boardVO" staticJavascript="false"
	xhtml="true" cdata="false" />

<script type="text/javaScript" language="javascript" defer="defer">
	/* 글 목록 화면 function */
	function fn_egov_selectList() {
		document.detailForm.action = "<c:url value='/index.do'/>";
		document.detailForm.submit();
	}


	/* 글 등록 function */
	function fn_egov_save() {
		document.detailForm.action = "<c:url value='/jwadd.do'/>";
		document.detailForm.submit();
	}

</script>
</head>
<body
	style="text-align: center; margin: 0 auto; display: inline; padding-top: 100px;">

	<form:form commandName="boardVO" id=" detailForm" name="detailForm">
    <div id="content_pop">
    	<!-- 타이틀 -->
    	<div id="title">
    		<ul>
    			<li>글 작성 페이지    </li>
    		</ul>
    	</div>
    	<!-- // 타이틀 -->
    	<div id="table">
    	<table width="100%" border="1" cellpadding="0" cellspacing="0" style="bordercolor:#D3E2EC; bordercolordark:#FFFFFF; BORDER-TOP:#C2D0DB 2px solid; BORDER-LEFT:#ffffff 1px solid; BORDER-RIGHT:#ffffff 1px solid; BORDER-BOTTOM:#C2D0DB 1px solid; border-collapse: collapse;">
    		<colgroup>
    			<col width="150"/>
    			<col width="?"/>
    		</colgroup>
    	
    		<tr>
    			<td>아이디</td>
    			<td class="tbtd_content">
    				<form:input path="id" maxlength="30" cssClass="txt"/>
    
    			</td>
    		</tr>
    		<tr>
    		<td>제목</td>
    		
    			<td class="tbtd_content">
    			<form:input path="title" maxlength="30" cssClass="txt"/>
    			</td>
    		</tr>
    		<tr>
    		<td>이름</td>
    			<td class="tbtd_content">
    				<form:textarea path="name" rows="5" cols="58" />&nbsp;
                </td>
    		</tr>
    		<tr>
    		<td>날짜</td>
    			
    			<td class="tbtd_content">
        				<form:input path="bdate" maxlength="10" cssClass="txt"  />
        				&nbsp;</td>
          
    		</tr>
    	</table>
      </div>
    	<div id="sysbtn">
    		<ul>
    		<!-- 목록버튼 -->
    			<li>
                    <span class="btn_blue_l">
                        <a href="javascript:fn_egov_selectList();"><spring:message code="button.list" /></a>
                        <img src="<c:url value='/images/egovframework/example/btn_bg_r.gif'/>" style="margin-left:6px;" alt=""/>
                    </span>
                </li>
               
               <!--  등록버튼 -->

                   <li>
        	          <span class="btn_blue_l">
        	              <a href="javascript:fn_egov_save();">등록</a>
        	        
                          <img src="<c:url value='/images/egovframework/example/btn_bg_r.gif'/>" style="margin-left:6px;" alt=""/>
                      </span>
                  </li>
                  
                  
                  
           
    	
            </ul>
    	</div>
    </div>
   
</form:form>
</body>
</html>