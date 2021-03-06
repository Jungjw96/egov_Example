<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><spring:message code="title.sample" /></title>
    <link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/sample.css'/>"/>
    <script type="text/javaScript" language="javascript" defer="defer">

    /* 글 수정 화면 function */
    function fn_egov_select(id) {
    	document.listForm.selectedId.value = id;
       	document.listForm.action = "<c:url value='/jwupdate.do'/>";
       	document.listForm.submit();
    }
    
    
    </script>
</head>


<body style="text-align:center; margin:0 auto; display:inline; padding-top:100px;">
    <form:form commandName="searchVO" id="listForm" name="listForm" method="post">
        <input type="hidden" name="selectedId" />
        
        <div id="content_pop">
        	<!-- 타이틀 -->
        	<div id="title">
        		<ul>
        			<li><img src="<c:url value='/images/egovframework/example/title_dot.gif'/>" alt=""/><spring:message code="list.sample" /></li>
        		</ul>
        	</div>
        

        	<!-- List -->
        	<div id="table">
        		<table width="100%" border="0" cellpadding="0" cellspacing="0" summary="번호, 제목, 작성자, 날짜">
        			<caption style="visibility:hidden">번호, 제목, 작성자, 날짜</caption>
        			<colgroup>
        				<col width="40"/>
        				<col width="100"/>
        				<col width="150"/>
        				<col width="80"/>

        			</colgroup>
        			<tr>
        				<th align="center">번호</th>
        				<th align="center">제목</th>
        				<th align="center">작성자</th>
        				<th align="center">날짜</th>
        			</tr>
   
   
   				<c:forEach var="result" items="${resultList}" varStatus="status">
	        			<tr>
	        			<td align="center" class="listtd"><a href="javascript:fn_egov_select('<c:out value="${result.id}"/>')"><c:out value="${result.id}"/></a></td>
	        			<td align="center" class="listtd"><c:out value="${result.title}"/>&nbsp;</td> 
	        			<td align="center" class="listtd"><c:out value="${result.name}"/>&nbsp;</td> 
	        			<td align="center" class="listtd"><c:out value="${result.bdate}"/>&nbsp;</td> 
	        			</tr>
        			</c:forEach>
        			
        		</table>
        	</div>

        	<div id="sysbtn">
        	  <ul>
        	      <li>
        	          <span class="btn_blue_l">
        	              <a href="insert.do">등록</a>
                          <img src="<c:url value='/images/egovframework/example/btn_bg_r.gif'/>" style="margin-left:6px;" alt=""/>
                      </span>
                  </li>
              </ul>
        	</div>
        </div>
    </form:form>
</body>
</html>
