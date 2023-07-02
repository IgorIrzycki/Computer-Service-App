<%@ page import="com.example.tai_zadanie1.Model.ProblemReportRecord" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<html>
<head>
  <title>Edit Form</title>
  <style>
    .form-container {
      margin-bottom: 20px;
      padding: 10px;
      border: 1px solid #ccc;
    }
    .form-field {
      margin-bottom: 10px;
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
    .button.cancel {
      background-color: #f44336;
    }
    .button:hover {
      opacity: 0.8;
    }
  </style>
</head>
<body>
<h1>Edit Form</h1>

<%
  ProblemReportRecord record = (ProblemReportRecord) request.getAttribute("form");
%>

<div class="form-container">
  <form action="${pageContext.request.contextPath}/update/${form.id}" method="post">
  <div class="form-field">
      <label for="firstName">First Name:</label>
      <input type="text" id="firstName" name="firstName" value="<%= record.getFirstName() %>" required>
    </div>
    <div class="form-field">
      <label for="lastName">Last Name:</label>
      <input type="text" id="lastName" name="lastName" value="<%= record.getLastName() %>" required>
    </div>
    <div class="form-field">
      <label for="email">Email:</label>
      <input type="email" id="email" name="email" value="<%= record.getEmail() %>" required>
    </div>
    <div class="form-field">
      <label for="deviceType">Device Type:</label>
      <input type="text" id="deviceType" name="deviceType" value="<%= record.getDeviceType() %>" required>
    </div>
    <div class="form-field">
      <label for="deviceBrand">Device Brand:</label>
      <input type="text" id="deviceBrand" name="deviceBrand" value="<%= record.getDeviceBrand() %>" required>
    </div>
    <div class="form-field">
      <label for="deviceModel">Device Model:</label>
      <input type="text" id="deviceModel" name="deviceModel" value="<%= record.getDeviceModel() %>" required>
    </div>
    <div class="form-field">
      <label for="issue">Issue:</label>
      <textarea id="issue" name="issue" rows="4" required><%= record.getIssue() %></textarea>
    </div>
    <div class="form-field">
      <label for="phone">Phone:</label>
      <input type="text" id="phone" name="phone" value="<%= record.getPhone() %>" required>
    </div>
    <div class="form-field">
      <label for="street">Street:</label>
      <input type="text" id="street" name="street" value="<%= record.getStreet() %>" required>
    </div>
    <div class="form-field">
      <label for="postalCode">Postal Code:</label>
      <input type="text" id="postalCode" name="postalCode" value="<%= record.getPostalCode() %>" required>
    </div>
    <div class="form-field">
      <label for="city">City:</label>
      <input type="text" id="city" name="city" value="<%= record.getCity() %>" required>
    </div>
    <div class="form-field">
      <label for="country">Country:</label>
      <input type="text" id="country" name="country" value="<%= record.getCountry() %>" required>
    </div>
    <div class="form-field">
      <button type="submit" name="action" value="save" class="button">Save</button>
      <a href="${pageContext.request.contextPath}/history" class="button cancel">Cancel</a>
    </div>
  </form>
</div>

</body>
</html>
