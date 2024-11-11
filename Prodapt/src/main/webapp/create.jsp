<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Form with Success Message</title>
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
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            background: linear-gradient(to right, #36d1dc, #5b86e5);
        }

        /* Back to Dashboard Button */
        .back-button {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            margin-bottom: 20px;
            border-radius: 5px;
            text-decoration: none;
            font-weight: bold;
            transition: background-color 0.3s, transform 0.3s;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
        }

        .back-button:hover {
            background-color: #5b86e5;
            transform: translateY(-3px);
        }

        /* Form container */
        .form-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.2);
            max-width: 400px;
            width: 100%;
            animation: fadeIn 0.8s ease-in-out;
            margin-top: 20px;
        }

        /* Form header */
        .form-header {
            font-size: 1.5rem;
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }

        /* Input fields */
        .form-input {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 4px;
            transition: border 0.3s;
        }

        /* Input focus effect */
        .form-input:focus {
            border-color: #5b86e5;
            outline: none;
            box-shadow: 0px 0px 8px rgba(91, 134, 229, 0.3);
        }

        /* Submit button */
        .submit-btn {
            width: 100%;
            padding: 10px;
            background: #5b86e5;
            color: #fff;
            border: none;
            border-radius: 4px;
            font-size: 1rem;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        /* Hover effect for submit button */
        .submit-btn:hover {
            background: #3a6ac8;
        }

        /* Fade-in animation */
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* Success message styling */
        .success-message {
            display: none;
            font-size: 1.2rem;
            color: #28a745;
            text-align: center;
            margin-top: 15px;
            opacity: 0;
            animation: slideIn 0.5s forwards;
        }

        /* Success message animation */
        @keyframes slideIn {
            from { opacity: 0; transform: translateY(10px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* Responsive adjustments */
        @media (max-width: 480px) {
            .form-container {
                padding: 15px;
            }

            .form-header {
                font-size: 1.3rem;
            }
        }
    </style>
</head>
<body>
    <!-- Back to Dashboard Button -->
    <a href="index.jsp" class="back-button">Back to Dashboard</a>

    <!-- Form Section -->
    <div class="form-container">
        <div class="form-header">Enter Your Details</div>
        <form action="userForm">
            <label for="id">Enter ID</label>
            <input type="text" id="id" name="id" class="form-input" placeholder="e.g., 23333" required>

            <label for="name">Enter Name</label>
            <input type="text" id="name" name="name" class="form-input" placeholder="e.g., Rohinth" required>

            <input type="submit" value="Submit" class="submit-btn">
        </form>
        <div class="success-message" id="successMessage">Submit Successful!</div>
    </div>

    <script>
        // JavaScript to handle form submission
        document.getElementById('userForm').addEventListener('submit', function(event) {
            event.preventDefault(); // Prevent form from actually submitting

            // Show success message with animation
            const successMessage = document.getElementById('successMessage');
            successMessage.style.display = 'block';

            // Reset the form
            event.target.reset();

            // Optional: Hide message after a few seconds
            setTimeout(() => {
                successMessage.style.display = 'none';
            }, 3000);
        });
    </script>
</body>
</html>
