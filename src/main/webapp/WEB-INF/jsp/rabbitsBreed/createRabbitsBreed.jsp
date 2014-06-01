<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<spring:url value="/createRabbitsBreed.htm" var="createRabbitsBreedUri"/>

    <h1><spring:message code="createRabbitsBreed_h1"/></h1>
    <form:form id="rabbitsBreedForm" class="form-horizontal" method="POST" action="${createRabbitsBreedUri}" modelAttribute="rabbitsBreed">
        <tiles:insertAttribute name="rabbitsBreedsElements"/>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <form:button type="submit" class="btn btn-primary"><spring:message code="create"/></form:button>
            </div>
        </div>
    </form:form>

