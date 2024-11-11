<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Display Your Information</title>
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
            background: linear-gradient(to right, #4facfe, #00f2fe);
            padding: 20px;
        }

        /* Header styling */
        h1 {
            font-size: 2rem;
            color: #333;
            text-align: center;
            margin-bottom: 20px;
            animation: fadeInDown 1s ease-in-out;
        }

        /* Information container */
        .info-container {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0px 10px 15px rgba(0, 0, 0, 0.1);
            padding: 20px;
            max-width: 500px;
            width: 100%;
            animation: slideIn 1s ease;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        /* Information text styling */
        .info-text {
            font-size: 1.1rem;
            color: #555;
            text-align: center;
            margin-bottom: 15px;
            line-height: 1.5;
        }

        /* Button styling */
        .info-button {
            padding: 12px 25px;
            border: none;
            border-radius: 5px;
            background-color: #4facfe;
            color: #fff;
            font-size: 1rem;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.3s;
            margin-top: 20px;
        }

        /* Button hover effect */
        .info-button:hover {
            background-color: #0078a5;
            transform: translateY(-3px);
        }

        /* Fade-in animation for header */
        @keyframes fadeInDown {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* Slide-in animation for container */
        @keyframes slideIn {
            from { opacity: 0; transform: translateX(-20px); }
            to { opacity: 1; transform: translateX(0); }
        }

        /* Responsive adjustments */
        @media (max-width: 480px) {
            h1 {
                font-size: 1.8rem;
            }

            .info-container {
                padding: 15px;
            }

            .info-button {
                font-size: 0.9rem;
                padding: 10px 20px;
            }
        }
    </style>
</head>
<body>
    <h1>Display Your Information</h1>
    
    <div class="info-container">
        <div class="info-text">
            <!-- Dynamic content insertion point -->
            ${model_Class}
        </div>
      
        <!-- Back to Dashboard Button -->
        <a href="index.jsp">
            <button class="info-button">Back to Dashboard</button>
        </a>
    </div>
</body>
</html>
