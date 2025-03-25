<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Details Form</title>
    <style >

        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background: linear-gradient(135deg, #a1c4fd, #c2e9fb);
            color:#8a2be2;
        }
        .container {
            background-color:rgba(255, 255, 255, 0.95);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 410px;
            text-align: center;
        }
        .container h2 {
            margin-bottom: 20px;
        }
        .container form {
            text-align: left;
        }
        label {
            display: block;
            margin-top: 10px;
            font-weight: bold;
}

        input, textarea {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button {
            width: 50%;
            padding: 10px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 25px;
            cursor: pointer;
            margin-left:100px;


        }
        button:hover {
            background-color: #218838;
        }
        .error { color: red; font-size: 0.85em; }
    </style>
    <script >
        function validateForm() {
            let valid = true;
            const phonePattern = /^\d{10}$/;
            const emailPattern = /^\S+@\S+\.\S+$/;
            document.querySelectorAll(".error").forEach(el => el.innerText = "");


            const fields = ['firstName', 'lastName', 'phoneNumber', 'email', 'address'];
            fields.forEach(field => {
                const value = document.forms["userForm"][field].value;
                if (!value.trim()) {
                    document.getElementById(field + 'Error').innerText = `${field} is required.`;
                    valid = false;
                }
            });

            const phone = document.forms["userForm"]["phoneNumber"].value;
            if (!phonePattern.test(phone)) {
                document.getElementById("phoneNumberError").innerText = "Enter a valid 10-digit phone number.";
                valid = false;
            }

            const email = document.forms["userForm"]["email"].value;
            if (!emailPattern.test(email)) {
                document.getElementById("emailError").innerText = "Enter a valid email.";
                valid = false;
            }

            return valid;
        }
    </script>
</head>
<body >
<div class="container">
<h2 >User Details Form</h2>
<form name="userForm" action="./LoginServlet" method="post" onsubmit="return validateForm()">
    <label>
        <input type="text" name="firstName" placeholder="First Name" >
    </label>
    <div id="firstNameError" class="error"></div>
    <label>
        <input type="text" name="lastName" placeholder="Last Name">
    </label>
    <div id="lastNameError" class="error"></div>
    <label>
        <input type="text" name="phoneNumber" placeholder="Phone Number">
    </label>
    <div id="phoneNumberError" class="error"></div>
    <label>
        <input type="email" name="email" placeholder="Email">
    </label>
    <div id="emailError" class="error"></div>
    <label>
        <textarea name="address" placeholder="Address"></textarea>
    </label>
    <div id="addressError" class="error"></div>
    <button type="submit">Submit</button>
</form>
</div>
</body>
</html>