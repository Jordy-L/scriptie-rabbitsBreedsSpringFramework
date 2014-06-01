<%-- 
    Document   : repositoryDemands
    Created on : 27-Feb-2014, 09:31:39
    Author     : EXH647
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <tiles:importAttribute name="title" />
        <title><spring:message code="${title}"/></title>

        <!-- Bootstrap -->
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">

    </head>
    
    <body>
        <div class="container wrapper">
            <div class="row">
                <div class="col-sm-2">
                    <tiles:insertAttribute name="navigation"/>   
                </div>
                
                <div class="col-sm-10">
                    <tiles:insertAttribute name="content"/>
                </div>
            </div>
        </div>

    </body>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
  </body>
</html>