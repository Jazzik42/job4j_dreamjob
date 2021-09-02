<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Upload</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body>

<% String id = request.getParameter("id");
%>
<div class="container">
    <table class="table">
        <tbody>
            <tr valign="top">
                <c:forEach items="${images}" var="image" varStatus="status">
                    <c:if test="${can.id == image}">
            <tr valign="top">
                <td><a href="<c:url value='/download?name=${image}&id='/><%=id%>">Download</a></td>
                <td><a href="<c:url value='/delete.do?name=${image}&id='/><%=id%>">Удалить</a></td>
                <td>
                    <img src="<c:url value='/download?name=${image}'/>" width="100px" height="100px"/>
                </td>
            </tr>
            </c:if>
            </c:forEach>
        </tbody>
    </table>
    <h2>Upload image</h2>
    <form action="<c:url value='/upload.do?id='/><%=id%>" method="post" enctype="multipart/form-data">
        <div class="checkbox">
            <input type="file" name="file">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
    </form>
</div>

</body>
</html>