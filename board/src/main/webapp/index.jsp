<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<%@ page import="java.net.InetAddress" %>
<%@ page import="java.util.*" %>


<html>
<body>
<h2>게시판 샘플 was </h2>
<a href="${pageContext.request.requestURL}board1List">게시판</a><br/>

</br>
■ local의 기본 정보 (IP, Name, Port)</br>    
Local IP : <%=request.getLocalAddr()%></br>
Local Name : <%=request.getLocalName()%></br>
Local Port : <%=request.getLocalPort()%></br>

■ 클라이언트의 정보</br>
Remote IP : <%=request.getRemoteAddr()%></br>
Remote Host : <%=request.getRemoteHost()%></br>
Remote Port : <%=request.getRemotePort()%></br>

■ 서버 이름과 포트 (일반적으로 local 기본정보와 동일)</br>
Server Name : <%=request.getServerName()%> (<%=InetAddress.getLocalHost().getHostAddress()%>)</br>
Server Port : <%=request.getServerPort()%></br>

■ 지역 정보 (대부분 한국을 의미하는 ko가 나옴)</br>
Locale : <%=request.getLocale()%></br>

■ 사용하는 프로토콜 ("프로토콜/메이저버전.마이너버전" 의 형태)</br>
Protocol : <%=request.getProtocol()%></br>

■ http, https, ftp와 같은 것을 의미</br>
Scheme : <%=request.getScheme()%></br>

■ https와 같은 보안 채널의 사용 여부 (true/false 값으로 되어 있음)</br>
Secure Channel : <%=request.isSecure()%></br>

■ 요청에 대한 URI, URL, 컨텍스트 경로, 서블릿 경로, GET/POST등의 메소드</br>
Request's URI : <%=request.getRequestURI()%></br>
Request's URL : <%=request.getRequestURL()%></br>
Context Path : <%=request.getContextPath()%></br>
Servlet Path : <%=request.getServletPath()%></br>
Method : <%=request.getMethod()%></br>

■ 세션 ID에 대한 정보</br>
Session ID : <%=request.getRequestedSessionId()%></br>
Session ID from Cookie : <%=request.isRequestedSessionIdFromCookie()%></br>
Session ID from URL : <%=request.isRequestedSessionIdFromURL()%></br>
Session ID is still valid : <%=request.isRequestedSessionIdValid()%></br>

■ Header 정보</br>
<%
Enumeration eHeader = request.getHeaderNames();
while (eHeader.hasMoreElements()) {
    String hName = (String)eHeader.nextElement();
    String hValue = request.getHeader(hName);
    out.println(hName + " : " + hValue + "");
}
%>



<!-- 
<a href="http://localhost:8080/board/board2List">게시판 2</a><br/>
<a href="http://localhost:8080/board/board3List">게시판 3</a><br/>
<a href="http://localhost:8080/board/board4List">게시판 4</a><br/>
<a href="http://localhost:8080/board/board5List">게시판 5</a><br/>
<a href="http://localhost:8080/board/board6List">게시판 6</a><br/>
<a href="http://localhost:8080/board/board7List">게시판 7</a><br/>
<a href="http://localhost:8080/board/board8List">게시판 8</a><br/>
<a href="http://localhost:8080/board/board9List">게시판 9</a><br/>
<a href="http://localhost:8080/board/boardGroupList">게시판 9: 그룹</a><br/>
 -->
</body>
</html>
