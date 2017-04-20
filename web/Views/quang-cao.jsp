<%-- 
    Document   : quang-cao-slider
    Created on : Apr 10, 2017, 10:10:25 AM
    Author     : hv
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <div class="slider-area">
        	<!-- Slider -->
			<div class="block-slider block-slider4">
				<ul class="" id="bxslider-home4">
                                    <c:forEach items="${listqc}" var="qc">
                                        <li>
						<img src="img/${qc.hinhAnh}" alt="Slide">
						<div class="caption-group">
							<h2 class="caption title">
								${qc.thongDiep}
							</h2>
							<h4 class="caption subtitle">${qc.thongTinChiTiet}</h4>
							<a class="caption button-radius" href="#"><span class="icon"></span>Shop now</a>
						</div>
					</li>
                                    </c:forEach>
					
					
				</ul>
			</div>
			<!-- ./Slider -->
    </div> <!-- End slider area -->