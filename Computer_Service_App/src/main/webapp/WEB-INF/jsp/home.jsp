<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Home Page</title>
  <style>
    body {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      flex-direction: column;
    }

    .button {
      display: inline-block;
      padding: 10px 20px;
      background-color: #4CAF50;
      color: white;
      text-decoration: none;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      margin-top: 10px;
    }

    .button:hover {
      background-color: #45a049;
    }
  </style>
</head>
<body>
<h1>Welcome to the Home Page</h1>
<a href="${pageContext.request.contextPath}/form" class="button">Create new form</a>
<a href="${pageContext.request.contextPath}/history" class="button">View submitted forms</a>
</body>
</html>
