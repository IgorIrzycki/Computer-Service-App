<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
  <title>Submitted forms</title>
  <style>
    table {
      border-collapse: collapse;
      width: 100%;
    }
    th, td {
      padding: 8px;
      text-align: left;
      border-bottom: 1px solid #ddd;
    }
    .button {
      display: inline-block;
      padding: 5px 10px;
      background-color: #4CAF50;
      color: white;
      text-decoration: none;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }
    .button.edit {
      background-color: #008CBA;
    }
    .button.delete {
      background-color: #f44336;
    }
    .button:hover {
      opacity: 0.8;
    }
  </style>
</head>
<body>
<h1>Submitted Forms</h1>
<table>
  <tr>
    <th>First Name</th>
    <th>Last Name</th>
    <th>Email</th>
    <th>Device Type</th>
    <th>Device Brand</th>
    <th>Device Model</th>
    <th>Issue</th>
    <th>Phone</th>
    <th>Street</th>
    <th>Postal Code</th>
    <th>City</th>
    <th>Country</th>
    <th>Actions</th>
  </tr>
  <c:forEach var="form" items="${forms}">
    <tr>
      <td>${form.firstName}</td>
      <td>${form.lastName}</td>
      <td>${form.email}</td>
      <td>${form.deviceType}</td>
      <td>${form.deviceBrand}</td>
      <td>${form.deviceModel}</td>
      <td>${form.issue}</td>
      <td>${form.phone}</td>
      <td>${form.street}</td>
      <td>${form.postalCode}</td>
      <td>${form.city}</td>
      <td>${form.country}</td>
      <td>
        <a href="<c:url value='/edit/${form.id}'/>" class="button edit">Edit</a>
        <a href="<c:url value='/delete/${form.id}'/>" class="button delete">Delete</a>
      </td>
    </tr>
  </c:forEach>
</table>
<div>
  <a href="<c:url value='/'/>" class="button">Back to Home Page</a>
</div>
</body>
</html>
