<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="light" uri="http://www.lightadmin.org/tags" %>

<tiles:importAttribute name="domainTypeAdministrationConfiguration" ignore="true"/>

<spring:message code="to.dashboard" var="to_dashboard"/>
<spring:message code="create.new" var="new_entity"/>

<div id="header" class="wrapper">
	<div class="logo">
		<a href="<light:url value='/'/>" title="${to_dashboard}">
			<img src="<light:url value='/dynamic/logo'/>"/>
		</a>
	</div>
	<div class="middleNav">
		<c:if test="${not empty domainTypeAdministrationConfiguration}">
			<ul>
				<li class="iArchive"></li>
				<li class="iZipFiles"></li>
                                <li class="iCreate">
					<a href="<light:url value='${light:domainBaseUrl(domainTypeAdministrationConfiguration)}'/>/create">
						<span>${new_entity}</span>
					</a>
				</li>
			</ul>
		</c:if>
	</div>
	<div class="fix"></div>
</div>