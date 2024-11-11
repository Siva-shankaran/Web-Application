<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Deletion Success</title>
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
            background: linear-gradient(to right, #ff7e5f, #feb47b);
            padding: 20px;
            overflow: hidden;
            position: relative;
        }

        /* Navigation styling */
        nav {
            width: 100%;
            background-color: #ff7e5f;
            padding: 15px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            display: flex;
            justify-content: center;
        }

        nav a {
            color: white;
            text-decoration: none;
            margin: 0 15px;
            font-size: 1.1rem;
            font-weight: bold;
            transition: color 0.3s;
        }

        nav a:hover {
            color: #feb47b;
        }

        /* Container for the success message */
        .message-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.2);
            max-width: 500px;
            width: 100%;
            text-align: center;
            animation: fadeIn 1.2s ease-out;
            position: relative;
        }

        /* Success message styling */
        .message-container h2 {
            font-size: 1.8rem;
            color: #333;
            margin-bottom: 20px;
            animation: bounceIn 0.8s ease-out;
        }

        /* Button styling */
        .back-btn {
            padding: 12px 20px;
            background-color: #ff7e5f;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 1rem;
            cursor: pointer;
            transition: background-color 0.3s;
            text-transform: uppercase;
            letter-spacing: 1px;
            margin-top: 10px;
            box-shadow: 0 8px 10px rgba(0, 0, 0, 0.15);
            animation: fadeInUp 1.4s ease-out;
        }

        .back-btn:hover {
            background-color: #e36853;
        }

        /* Animation keyframes */
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        @keyframes fadeInUp {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @keyframes bounceIn {
            0%, 100% { transform: scale(1); }
            25% { transform: scale(1.1); }
            50% { transform: scale(0.9); }
            75% { transform: scale(1.05); }
        }

        /* Decorative confetti */
        .confetti {
            width: 8px;
            height: 8px;
            background-color: #ff7e5f;
            position: absolute;
            top: -20px;
            animation: fall 4s infinite ease-in-out;
            opacity: 0.8;
        }

        .confetti:nth-child(even) { background-color: #feb47b; }

        @keyframes fall {
            0% { opacity: 0; transform: translateY(-100px) rotate(0deg); }
            25% { opacity: 1; }
            100% { opacity: 0; transform: translateY(600px) rotate(360deg); }
        }

        /* Responsive styling */
        @media (max-width: 480px) {
            .message-container h2 {
                font-size: 1.6rem;
            }

            nav a {
                font-size: 1rem;
            }
        }
    </style>
</head>
<body>

    
    <!-- Message Container -->
    <div class="message-container">
        <h2>${model_Class} - Details Successfully Deleted</h2>
        <button class="back-btn" onclick="goBack()">Back to Dashboard</button>

        <!-- Decorative confetti -->
        <div class="confetti" style="left: 10%; animation-delay: 0.3s;"></div>
        <div class="confetti" style="left: 25%; animation-delay: 1.5s;"></div>
        <div class="confetti" style="left: 40%; animation-delay: 0.8s;"></div>
        <div class="confetti" style="left: 55%; animation-delay: 2s;"></div>
        <div class="confetti" style="left: 70%; animation-delay: 1s;"></div>
        <div class="confetti" style="left: 85%; animation-delay: 0.5s;"></div>
    </div>

    <script>
        // JavaScript to go back to the dashboard
        function goBack() {
            window.location.href = "/index.jsp";
        }
    </script>
</body>
</html>
