<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ attribute name="pagedListHolder" required="true" type="org.springframework.beans.support.PagedListHolder"%>
<%@ attribute name="pagedLink" required="true" type="java.lang.String"%>
<%@ tag import="org.springframework.util.StringUtils" %>

<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/js/jquery-1.10.2.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/jquery-migrate-1.2.1.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/bootstrap.min.js"></script>
    <script src="http://maps.google.com/maps/api/js?sensor=false&amp;language=en"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/gmap3.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/bootstrap-hover-dropdown.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/css_browser_selector.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/echo.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.easing-1.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/bootstrap-slider.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.raty.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.prettyPhoto.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.customSelect.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/wow.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/scripts.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/js.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/init-slider.js"></script>
    <script src="https://code.jquery.com/ui/1.10.4/jquery-ui.min.js"></script>

<c:if test="${pagedListHolder.pageCount > 1}">
	<ul class="pagination pagination-sm">
		<c:if test="${!pagedListHolder.firstPage}">
			<li class="previous">
				<a href="<%=StringUtils.replace(pagedLink, "~", String.valueOf(pagedListHolder.getPage() - 1))%>"><<</a>
			</li>
		</c:if>
		<c:if test="${pagedListHolder.firstLinkedPage > 0}">
			<li>
				<a href="<%=StringUtils.replace(pagedLink, "~", "0")%>">1</a>
			</li>
		</c:if>
		<c:if test="${pagedListHolder.firstLinkedPage > 1}">
			<li><span class="pagingDots">...</span>
			<li>
		</c:if>
		<c:forEach begin="${pagedListHolder.firstLinkedPage}" end="${pagedListHolder.lastLinkedPage}" var="i">
			<c:choose>
				<c:when test="${pagedListHolder.page == i}">
					<li class="active">
						<a href="#">${i + 1}</a>
					</li>
				</c:when>
				<c:otherwise>
					<li>
						<a href="<%=StringUtils.replace(pagedLink, "~", String.valueOf(jspContext.getAttribute("i")))%>">${i + 1}</a>
					</li>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		<c:if test="${pagedListHolder.lastLinkedPage < pagedListHolder.pageCount - 2}">
			<li>
				<span class="pagingDots">...</span>
			</li>
		</c:if>
		<c:if test="${pagedListHolder.lastLinkedPage < pagedListHolder.pageCount - 1}">
			<li>
				<a href="<%=StringUtils.replace(pagedLink, "~", String.valueOf(pagedListHolder.getPageCount() - 1))%>">
					${pagedListHolder.pageCount}
				</a>
			</li>
		</c:if>
		<c:if test="${!pagedListHolder.lastPage}">
			<li class="next">
				<a href="<%=StringUtils.replace(pagedLink, "~", String.valueOf(pagedListHolder.getPage() + 1))%>">>></a>
			</li>
		</c:if>
	</ul>
</c:if>
