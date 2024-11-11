<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Form with Animations</title>
    <style>
        /* Reset CSS */
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        /* Body styling */
        body {
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            background: linear-gradient(to right, #ff9966, #ff5e62);
        }

        /* Form container */
        .form-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 10px 15px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 90%;
            animation: fadeIn 1s ease-in-out;
        }

        /* Form header */
        .form-header {
            font-size: 1.8rem;
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }

        /* Input fields */
        .form-input {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 5px;
            transition: 0.3s;
            font-size: 1rem;
        }

        /* Input focus effect */
        .form-input:focus {
            border-color: #ff5e62;
            box-shadow: 0 0 8px rgba(255, 94, 98, 0.3);
            outline: none;
        }

        /* Submit button */
        .submit-btn {
            width: 100%;
            padding: 12px;
            background: #ff5e62;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 1.1rem;
            cursor: pointer;
            transition: 0.3s;
            margin-top: 10px;
        }

        /* Submit button hover effect */
        .submit-btn:hover {
            background: #ff3333;
        }

        /* Fade-in animation */
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* Placeholder styling for input fields */
        ::placeholder {
            color: #999;
            opacity: 0.8;
        }

        /* Responsive design */
        @media (max-width: 480px) {
            .form-container {
                padding: 15px;
            }

            .form-header {
                font-size: 1.5rem;
            }

            .submit-btn {
                font-size: 1rem;
            }
        }
    </style>
</head>
<body>
    <div class="form-container">
        <div class="form-header">Enter Your ID</div>
        <form action="reader">
            <label for="idInput">Enter ID</label>
            <input type="text" id="idInput" name="id" class="form-input" placeholder="e.g., 12345" required>
            <input type="submit" value="Submit" class="submit-btn">
        </form>
    </div>

    <script>
        // JavaScript to handle form submission
        document.getElementById('idForm').addEventListener('submit', function(event) {
            event.preventDefault(); // Prevent form from actually submitting

            // Success message animation
            alert("Form submitted successfully!");
        });
    </script>
</body>
</html>
