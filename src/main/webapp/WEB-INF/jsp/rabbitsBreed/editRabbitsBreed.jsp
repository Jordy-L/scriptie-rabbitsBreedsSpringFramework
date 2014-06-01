<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<spring:url value="/editRabbitsBreed.htm" var="editRabbitsBreedUri"/>

    <h1><spring:message code="editRabbitsBreed_h1"/></h1>
    <form:form id="rabbitsBreedForm" class="form-horizontal" method="POST" action="${editRabbitsBreedUri}" modelAttribute="rabbitsBreed">
        <tiles:insertAttribute name="rabbitsBreedsElements"/>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <form:button type="submit" class="btn btn-primary"><spring:message code="edit"/></form:button>
            </div>
        </div>
    </form:form>

