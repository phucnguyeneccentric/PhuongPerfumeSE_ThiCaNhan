<%-- 
    Document   : loai-san-pham
    Created on : Apr 18, 2017, 3:45:44 PM
    Author     : NHQ
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<ul>
    <c:forEach var="i" begin="1" end="3" step="1">
        <li>Loại sản phẩm ${i}</li>
    </c:forEach>
</ul>