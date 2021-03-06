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
        	<!-- // 타이틀 -->
        	<div id="search">
        		<ul>
        			<li>
        			    <label for="searchCondition" style="visibility:hidden;"><spring:message code="search.choose" /></label>
        				<form:select path="searchCondition" cssClass="use">
        					<form:option value="1" label="Name" />
        					<form:option value="0" label="ID" />
        				</form:select>
        			</li>
        			<li><label for="searchKeyword" style="visibility:hidden;display:none;"><spring:message code="search.keyword" /></label>
                        <form:input path="searchKeyword" cssClass="txt"/>
                    </li>
        			<li>
        	            <span class="btn_blue_l">
        	                <a href="javascript:fn_egov_selectList();"><spring:message code="button.search" /></a>
        	                <img src="<c:url value='/images/egovframework/example/btn_bg_r.gif'/>" style="margin-left:6px;" alt=""/>
        	            </span>
        	        </li>
                </ul>
        	</div>
        	<!-- List -->
        	<div id="table">
        		<table width="100%" border="0" cellpadding="0" cellspacing="0" summary="아이디, 비밀번호, 이름, 이메일, 주소">
        			<caption style="visibility:hidden">아이디, 비밀번호, 이름, 이메일, 주소</caption>
        			<colgroup>
        				<col width="40"/>
        				<col width="100"/>
        				<col width="150"/>
        				<col width="80"/>
        				<col width="?"/>
        			</colgroup>
        			<tr>
        				<th align="center">아이디</th>
        				<th align="center">비밀번호</th>
        				<th align="center">이름</th>
        				<th align="center">이메일</th>
        				<th align="center">주소</th>
        			</tr>
        			
        			


					<!-- jstl 구문 c: if, foreach items -->
					<c:forEach var="result" items="${resultList}" varStatus="status">
	        			<tr>
	        			<td align="center" class="listtd"><c:out value="${result.id}"/>&nbsp;</td> 
	        			<td align="center" class="listtd"><c:out value="${result.pwd}"/>&nbsp;</td> 
	        			<td align="center" class="listtd"><c:out value="${result.name}"/>&nbsp;</td> 
	        			<td align="center" class="listtd"><c:out value="${result.email}"/>&nbsp;</td> 
	        			<td align="center" class="listtd"><c:out value="${result.address}"/>&nbsp;</td> 
	        			</tr>
        			</c:forEach>
        			

        		</table>
        	</div>
        	<!-- /List -->
<!--         	<div id="paging"> -->
<%--         		<ui:pagination paginationInfo = "${paginationInfo}" type="image" jsFunction="fn_egov_link_page" /> --%>
<%--         		<form:hidden path="pageIndex" /> --%>
<!--         	</div> -->
        	<div id="sysbtn">
        	  <ul>
        	      <li>
        	          <span class="btn_blue_l">
        	              <a href="javascript:fn_egov_addView();"><spring:message code="button.create" /></a>
                          <img src="<c:url value='/images/egovframework/example/btn_bg_r.gif'/>" style="margin-left:6px;" alt=""/>
                      </span>
                  </li>
            
              </ul>
        	</div>
        </div>
    </form:form>
</body>
</html>
