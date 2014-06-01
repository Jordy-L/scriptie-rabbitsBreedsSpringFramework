<%-- 
    Document   : repositoryDemands
    Created on : 27-Feb-2014, 09:31:39
    Author     : EXH647
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<spring:url value="/rabbitsBreedsOverview.htm" var="rabbitsBreedsOverviewUri"/>
<spring:url value="/createRabbitsBreed.htm" var="createRabbitsBreedUri"/>

<menu class="nav">
    <h:form>
        <ul class="nav nav-list">
            <li class="nav-header"><spring:message code="navigation_rabbitsBreeds"/></li>
            <li><a href="${rabbitsBreedsOverviewUri}"><spring:message code="navigation_overview"/></a></li>
            <li><a href="${createRabbitsBreedUri}"><spring:message code="navigation_new"/></a></li>
        </ul>
    </h:form>
</menu>