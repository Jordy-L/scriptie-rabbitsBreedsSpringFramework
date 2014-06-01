<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<spring:url value="/viewRabbitsBreed" var="viewRabbitsBreedUri"/>
<spring:url value="/editRabbitsBreed" var="editRabbitsBreedUri"/>
<spring:url value="/deleteRabbitsBreed" var="deleteRabbitsBreedUri"/>

    <h1><spring:message code="rabbitsBreedsOverview_h1"/></h1>
    <table id="rabbitsTable" class="table table-responsive table-bordered table-striped">
        <thead>
            <tr>
                <th><spring:message code="rabbitsBreed_breed"/></th>
                <th><spring:message code="rabbitsBreed_weight"/></th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="rabbitsBreed" items="${rabbitsBreeds}">
                <tr>
                    <td>${rabbitsBreed.breed}</td>
                    <td>${rabbitsBreed.weight}</td>
                    <td>
                        <a href="${viewRabbitsBreedUri}/${rabbitsBreed.id}.htm"><spring:message code="details"/></a>
                        &nbsp;
                        <a href="${editRabbitsBreedUri}/${rabbitsBreed.id}.htm"><spring:message code="edit"/></a>
                        &nbsp;
                        <a href="${deleteRabbitsBreedUri}/${rabbitsBreed.id}.htm"><spring:message code="delete"/></a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
