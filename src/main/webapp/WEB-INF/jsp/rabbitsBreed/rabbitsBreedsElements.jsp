<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<spring:message code="rabbitsBreed_breed" var="rabbitsBreed_breed"/>
<spring:message code="rabbitsBreed_weight" var="rabbitsBreed_weight"/>

    <form:hidden id="id" path="id" class="form-control"/>
    <div class="form-group">
        <label class="control-label col-sm-2"><spring:message code="rabbitsBreed_breed"/>:</label>
        <div class="col-sm-10">
            <form:input id="breed" type="text" path="breed" class="form-control" placeholder="${rabbitsBreed_breed}"/>
            <font color="red"><form:errors path="breed" cssClass="error"/></font>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2"><spring:message code="rabbitsBreed_weight"/>:</label>
        <div class="col-sm-10">
            <form:input id="breed" type="text" path="weight" class="form-control" placeholder="${rabbitsBreed_weight}"/>
            <font color="red"><form:errors path="weight" cssClass="error"/></font>
        </div>
    </div>