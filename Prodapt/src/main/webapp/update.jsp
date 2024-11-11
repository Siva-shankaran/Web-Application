<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Update Form</title>
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
            flex-direction: column;
            min-height: 100vh;
            background: linear-gradient(to right, #00c6ff, #0072ff);
            padding: 20px;
        }

        /* Back to Dashboard button styling */
        .back-btn {
            background-color: #0072ff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 1.2rem;
            cursor: pointer;
            text-decoration: none;
            transition: background-color 0.3s, transform 0.3s;
            margin-bottom: 20px;
        }

        .back-btn:hover {
            background-color: #005bb5;
            transform: translateY(-3px);
        }

        /* Container for the form and heading */
        .form-container {
            background-color: #fff;
            border-radius: 10px;
            padding: 30px;
            max-width: 400px;
            width: 100%;
            box-shadow: 0px 10px 15px rgba(0, 0, 0, 0.1);
            animation: slideIn 1s ease-out;
            text-align: center;
            position: relative;
        }

        /* Heading */
        .form-container h2 {
            font-size: 1.8rem;
            color: #333;
            margin-bottom: 20px;
            animation: fadeIn 1.2s ease;
        }

        /* Form styling */
        .form-input {
            width: 100%;
            padding: 12px;
            margin: 12px 0;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 1rem;
            transition: box-shadow 0.3s;
        }

        .form-input:focus {
            border-color: #0072ff;
            box-shadow: 0 0 8px rgba(0, 114, 255, 0.4);
            outline: none;
        }

        /* Submit button */
        .submit-btn {
            width: 100%;
            padding: 12px;
            background: #0072ff;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 1.1rem;
            cursor: pointer;
            transition: background-color 0.3s;
            margin-top: 15px;
        }

        .submit-btn:hover {
            background: #005bb5;
        }

        /* Animations */
        @keyframes slideIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        /* Background floating circles */
        .circle {
            position: absolute;
            border-radius: 50%;
            background-color: rgba(0, 255, 255, 0.1);
            animation: float 6s infinite ease-in-out;
        }

        .circle:nth-child(1) {
            width: 100px;
            height: 100px;
            top: -30px;
            right: -30px;
        }

        .circle:nth-child(2) {
            width: 60px;
            height: 60px;
            bottom: -30px;
            left: -30px;
            animation-delay: 2s;
        }

        @keyframes float {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(15px); }
        }

        /* Responsive styling */
        @media (max-width: 480px) {
            .form-container {
                padding: 20px;
            }
        }
    </style>
</head>
<body>

    <!-- Back to Dashboard link -->
    <a href="index.jsp" class="back-btn">Back to Dashboard</a>

    <!-- Form container -->
    <div class="form-container">
        <h2>To Be Updated: ${model_Class}</h2>
        <form action="userForm">
            <label for="id">Enter ID</label>
            <input type="text" id="id" name="id" class="form-input" placeholder="e.g., 12345" required>

            <label for="name">Enter Name</label>
            <input type="text" id="name" name="name" class="form-input" placeholder="e.g., John Doe" required>

            <input type="submit" value="Submit" class="submit-btn">
        </form>
        <!-- Background decorative elements -->
        <div class="circle"></div>
        <div class="circle"></div>
    </div>

</body>
</html>
