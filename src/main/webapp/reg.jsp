<%--
  Created by IntelliJ IDEA.
  User: Ramil
  Date: 02.09.2021
  Time: 19:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!doctype html>
<html lang="en">
<head>

</head>
<body>

<div class="container pt-3">

</div>
<div class="card-body">
    <form action="<%=request.getContextPath()%>/reg" method="post">
        <div class="form-group">
            <label>Имя</label>
            <input type="text" class="form-control" name="name" required>
        </div>
        <div class="form-group">
            <label>Почта</label>
            <input type="text" class="form-control" name="email" required>
        </div>
        <div class="form-group">
            <label>Пароль</label>
            <input type="text" class="form-control" name="password" required>
        </div>
        <button type="submit" class="btn btn-primary">Зарегистритроваться</button>

        <c:if test="${not empty error}">
            <div style="color:red; font-weight: bold; margin: 30px 0;">
                Неверные даные регистрации.
            </div>
        </c:if>

    </form>
</div>
</div>
</div>
</div>
</body>
</html>
