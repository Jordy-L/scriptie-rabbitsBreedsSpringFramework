<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<spring:url value="/editRabbitsBreed" var="editRabbitsBreedUri"/>

    <h1><spring:message code="viewRabbitsBreed_h1"/></h1>
    <form:form id="rabbitsBreedForm" class="form-horizontal" method="GET" action="${editRabbitsBreedUri}/${rabbitsBreed.id}.htm" modelAttribute="rabbitsBreed">
        <fieldset disabled>
            <tiles:insertAttribute name="rabbitsBreedsElements"/>
            <div class="form-group">
                <label class="control-label col-sm-2"><spring:message code="rabbitsBreed_dateAdded"/>:</label>
                <div class="col-sm-10">
                    <div class="form-control">
                        <fmt:formatDate value="${rabbitsBreed.dateAdded}" type="date" dateStyle="medium"/>
                    </div>
                </div>
            </div>
        </fieldset>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <form:button type="submit" class="btn btn-primary"><spring:message code="edit"/></form:button>
            </div>
        </div>
    </form:form>

