
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Form successfully saved!</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            flex-direction: column;
        }

        h1 {
            font-size: 24px;
            text-align: center;
        }

        .button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            transition: background-color 0.3s;
        }

        .button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<h1>Form successfully submitted!</h1>
<a class="button" href="${pageContext.request.contextPath}/">Back to Main Page</a>
</body>
</html>

