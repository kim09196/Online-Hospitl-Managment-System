<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Patient</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        .container {
            max-width: 500px;
            margin: auto;
            background: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        label {
            display: block;
            margin: 10px 0 5px;
            color: #555;
        }
        input[type="text"], input[type="date"], textarea {
            width: 80%;
            padding: 10px;
            margin: 5px 0 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 80%;
            text-align: center;
        }
        button:hover {
            background-color: #45a049;
        }
        .error {
            color: red;
            font-size: 0.9em;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Add Patient</h2>
    <form id="patientForm" action="submitpatient" method="POST">
        <label for="patientName">Patient Name:</label>
        <input type="text" id="patientName" name="patientName" required>

        <label for="dob">Date of Birth:</label>
        <input type="date" id="dob" name="dob" required>

        <label for="diagnosis">Diagnosis:</label>
        <input type="text" id="diagnosis" name="diagnosis" required>

        <label for="medications">Medications:</label>
        <input type="text" id="medications" name="medications">

        <label for="treatment">Treatment:</label>
        <textarea id="treatment" name="treatment" rows="4"></textarea>

        <label for="note">Note:</label>
        <textarea id="note" name="note" rows="4"></textarea>

        <div class="error" id="errorMessage"></div>

        <button type="submit">Add Patient</button>
    </form>
</div>

<script>
    document.getElementById('patientForm').addEventListener('submit', function(event) {
        const patientName = document.getElementById('patientName').value.trim();
        const dob = document.getElementById('dob').value;
        const diagnosis = document.getElementById('diagnosis').value.trim();
        const errorMessage = document.getElementById('errorMessage');

        errorMessage.textContent = ''; // Clear previous error messages

        if (!patientName || !diagnosis || !dob) {
            errorMessage.textContent = 'Please fill out all required fields.';
            event.preventDefault(); // Prevent form submission
        }
    });
</script>

</body>
</html>
