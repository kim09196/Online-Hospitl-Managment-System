<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Doctor</title>
</head>
<body>
<div style="max-width: 600px; margin: 20px auto; padding: 20px; border: 1px solid #ccc; border-radius: 5px; background-color: #f9f9f9;">
    <h4 style="text-align: center; margin-bottom: 20px;">Add Doctor</h4>
    <form action="submitDoctor" method="POST" style="display: flex; flex-direction: column;">
        <label for="name" style="margin-bottom: 10px;">Doctor Name:</label>
        <input type="text" id="name" name="name" required style="padding: 10px; margin-bottom: 20px; border: 1px solid #ccc; border-radius: 4px;">

        <label for="specialization" style="margin-bottom: 10px;">Specialization:</label>
        <input type="text" id="specialization" name="specialization" required style="padding: 10px; margin-bottom: 20px; border: 1px solid #ccc; border-radius: 4px;">

        <label for="contact" style="margin-bottom: 10px;">Contact Number:</label>
        <input type="text" id="contact" name="contact" required style="padding: 10px; margin-bottom: 20px; border: 1px solid #ccc; border-radius: 4px;">

        <label for="email" style="margin-bottom: 10px;">E-mail Address:</label>
        <input type="email" id="email" name="email" required style="padding: 10px; margin-bottom: 20px; border: 1px solid #ccc; border-radius: 4px;">

        <label for="experience" style="margin-bottom: 10px;">Experience (Years):</label>
        <input type="number" id="experience" name="experience" required style="padding: 10px; margin-bottom: 20px; border: 1px solid #ccc; border-radius: 4px;">

        <button type="submit" style="padding: 10px; background-color: #4CAF50; color: white; border: none; border-radius: 4px; cursor: pointer;">
            Add Doctor
        </button>
    </form>
</div>

</body>
</html>
