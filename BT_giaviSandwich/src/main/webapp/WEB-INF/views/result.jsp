<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Selected Condiments</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
        }
        h1 {
            color: #2c3e50;
            text-align: center;
        }
        .result-container {
            background-color: #f9f9f9;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            margin-bottom: 20px;
        }
        .condiment-list {
            list-style-type: none;
            padding: 0;
        }
        .condiment-list li {
            padding: 8px 0;
            border-bottom: 1px solid #eee;
        }
        .back-link {
            display: inline-block;
            margin-top: 20px;
            color: #3498db;
            text-decoration: none;
        }
        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<h1>Kết quả lựa chọn</h1>

<div class="result-container">
    <p><strong>${message}</strong></p>

    <c:if test="${not empty selectedCondiments}">
        <ul class="condiment-list">
            <c:forEach items="${selectedCondiments}" var="condiment">
                <li>${condiment}</li>
            </c:forEach>
        </ul>
    </c:if>
</div>

<a href="/" class="back-link">← Quay lại trang chọn gia vị</a>
</body>
</html>