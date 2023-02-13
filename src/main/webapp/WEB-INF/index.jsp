<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Tacos</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script>
    <!-- change to match your file/naming structure -->
</head>

<body>
    <!-- variable of iteration -->
    <div class="container">
        <h1>Fruit Store</h1>
        
        <table class="table table-hover border border-5">
            <tbody>
                <tr>
                    <th>Name</th>
                    <th>Price</th>
                </tr>
                <!--~ Since the data in the table row will repeat will use a for loop housing the <tr> nad <td>-->
                        <!--  
                            -> var is variable of iteration  -> can be anything
                            -> items is the fruits passed from the model.addAttribute
                            -> naming convention -> make sure person coming after you reading your code knows what you are trying to do 
                            -> the first element in model.addAttribute is the name of your variable in jsp page
                        -->
                <c:forEach var="fruit" items="${fruits}">
                        <tr>
                            <td><c:out value="${fruit.name}"></c:out></td>
                            <td><c:out value="${fruit.price}"/></td>
                        </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>

</html>