<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL - url</title>
</head>
<body>
<!-- 
url 태그
: url을 생성할 때 사용한다. 절대경로로 사용시 컨텍스트루트 경로는
제외한다. var속성을 지정하지 않은겨웅 해당 위치에 생성된 URL이 출력된다.
param태그로 지정한 값은 쿼리스트링으로 URL뒤에 연결된다.
 -->
    <h4>url 태그로 링크 걸기 (절대경로)</h4>
    <!-- HOST(도메인부분)를 제외한 나머지 경로를 반환한다. var속성이
   지정되었으므로 해당 위치에는 출력되지 않는다. -->
   <c:url value="/11JSTL/inc/OtherPage.jsp" var="url">
      <c:param name="user_param1" value="Must" />
      <c:param name="user_param2">Have</c:param>
   </c:url>
   <!-- 앞에서 생성된 URL은 a태그에 포함된다. -->
   <a href="${url }">OtherPage.jsp바로가기</a>
 
 
   <h4>url 태그로 링크 걸기 (상대경로)</h4>
   
   <c:url value="../inc/OtherPage.jsp" var="url">
      <c:param name="user_param1" value="Must" />
      <c:param name="user_param2">Have</c:param>
   </c:url>
   
   <a href="${url }">OtherPage.jsp바로가기</a>
   
  
</body>
</html>