<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <title>Computer Service Problem Report</title>
    <style>
        form {
            max-width: 400px;
            margin: 0 auto;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            text-align: center;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }

        .form-section {
            flex: 0 0 50%;
            padding: 10px;
            box-sizing: border-box;
        }

        .form-section.problem {
            flex: 0 0 100%;
            padding: 10px;
            box-sizing: border-box;
        }

        button[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-top: 10px;
        }

        h2{
            text-align: center;
        }

        textarea#issue {
            width: 100%;
        }
    </style>
</head>
<body>
<h2>Computer Service Problem Report</h2>

<form action="${pageContext.request.contextPath}/saveForm" method="post">
    <div class="form-section">
        <h3>Personal Information</h3>

        <div class="form-field">
            <label for="firstName">First Name:</label>
            <input type="text" id="firstName" name="firstName" required>
        </div>

        <div class="form-field">
            <label for="lastName">Last Name:</label>
            <input type="text" id="lastName" name="lastName" required>
        </div>

        <div class="form-field">
            <label for="email">Email Address:</label>
            <input type="email" id="email" name="email" required>
        </div>
    </div>

    <div class="form-section">
        <h3>Device Information</h3>

        <div class="form-field">
            <label for="deviceType">Device Type:</label>
            <select id="deviceType" name="deviceType" required>
                <option value="computer">Computer</option>
                <option value="laptop">Laptop</option>
                <option value="tablet">Tablet</option>
                <option value="smartphone">Smartphone</option>
            </select>
        </div>

        <div class="form-field">
            <label for="deviceBrand">Device Brand:</label>
            <input type="text" id="deviceBrand" name="deviceBrand" required>
        </div>

        <div class="form-field">
            <label for="deviceModel">Device Model:</label>
            <input type="text" id="deviceModel" name="deviceModel" required>
        </div>


    </div>

    <div class="form-section problem">
        <div class="form-field">
            <label for="issue">Problem Description:</label>
            <textarea id="issue" name="issue" rows="3" required></textarea>
        </div>
    </div>

    <div class="form-section">
        <h3>Contact Information</h3>

        <div class="form-field">
            <label for="phone">Phone Number:</label>
            <input type="text" id="phone" name="phone">
        </div>

        <div class="form-field">
            <label for="street">Street:</label>
            <input type="text" id="street" name="street">
        </div>

        <div class="form-field">
            <label for="postalCode">Postal Code:</label>
            <input type="text" id="postalCode" name="postalCode">
        </div>

        <div class="form-field">
            <label for="city">City:</label>
            <input type="text" id="city" name="city">
        </div>

        <div class="form-field">
            <label for="country">Country:</label>
            <input type="text" id="country" name="country">
        </div>
        <button type="submit">Submit Report</button>
    </div>
</form>

<script>
    document.querySelector('form').addEventListener('submit', function(event) {
        event.preventDefault(); // Prevent form submission

        // Perform any additional validation or processing here
        const firstNameInput = document.getElementById('firstName');
        const lastNameInput = document.getElementById('lastName');
        const emailInput = document.getElementById('email');
        const deviceTypeInput = document.getElementById('deviceType');
        const deviceBrandInput = document.getElementById('deviceBrand');
        const deviceModelInput = document.getElementById('deviceModel');
        const issueInput = document.getElementById('issue');
        const phoneInput = document.getElementById('phone');
        const streetInput = document.getElementById('street');
        const postalCodeInput = document.getElementById('postalCode');
        const cityInput = document.getElementById('city');
        const countryInput = document.getElementById('country');

        const firstName = firstNameInput.value.trim();
        const lastName = lastNameInput.value.trim();
        const email = emailInput.value.trim();
        const deviceType = deviceTypeInput.value;
        const deviceBrand = deviceBrandInput.value.trim();
        const deviceModel = deviceModelInput.value.trim();
        const issue = issueInput.value.trim();
        const phone = phoneInput.value.trim();
        const street = streetInput.value.trim();
        const postalCode = postalCodeInput.value.trim();
        const city = cityInput.value.trim();
        const country = countryInput.value.trim();

        const nameRegex = /^[A-Za-z]+$/;
        const phoneRegex = /^\d+$/;

        if (!nameRegex.test(firstName)) {
            alert('First Name can only contain letters!');
            return;
        }

        if (!nameRegex.test(lastName)) {
            alert('Last Name can only contain letters!');
            return;
        }

        if (!nameRegex.test(deviceBrand)) {
            alert('Device Brand can only contain letters!');
            return;
        }

        if (!nameRegex.test(deviceModel)) {
            alert('Device Model can only contain letters!');
            return;
        }

        if (!phoneRegex.test(phone)) {
            alert('Invalid phone number!');
            return;
        }

        const formData = new FormData();
        formData.append('firstName', firstName);
        formData.append('lastName', lastName);
        formData.append('email', email);
        formData.append('deviceType', deviceType);
        formData.append('deviceBrand', deviceBrand);
        formData.append('deviceModel', deviceModel);
        formData.append('issue', issue);
        formData.append('phone', phone);
        formData.append('street', street);
        formData.append('postalCode', postalCode);
        formData.append('city', city);
        formData.append('country', country);

        fetch('${pageContext.request.contextPath}/saveForm', {
            method: 'POST',
            body: formData
        })
            .then(response => {
                if (response.ok) {
                    window.location.href = '${pageContext.request.contextPath}/success';
                } else {
                    alert('An error occurred while saving the form!');
                }
            })
            .catch(error => {
                console.error('An error occurred while making the request:', error);
            });
    });
</script>
</body>
</html>
