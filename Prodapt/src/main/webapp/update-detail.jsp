<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Details</title>
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
            background: linear-gradient(to right, #ff758c, #ff7eb3);
            padding: 20px;
            overflow: hidden;
        }

        /* Form container styling */
        .form-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
            text-align: center;
            animation: fadeIn 1s ease-out;
            position: relative;
            overflow: hidden;
        }

        /* Form header */
        .form-container h2 {
            font-size: 1.8rem;
            color: #333;
            margin-bottom: 20px;
            animation: slideIn 1s ease-in-out;
        }

        /* Input field styling */
        .form-container input[type="text"] {
            width: 100%;
            padding: 12px;
            margin: 15px 0;
            border: 1px solid #ddd;
            border-radius: 5px;
            transition: all 0.3s;
            font-size: 1rem;
            box-shadow: inset 0px 0px 5px rgba(0, 0, 0, 0.1);
        }

        /* Focus effect */
        .form-container input[type="text"]:focus {
            border-color: #ff7eb3;
            outline: none;
            box-shadow: 0 0 8px rgba(255, 126, 179, 0.4);
        }

        /* Submit button */
        .form-container input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #ff758c;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 1.1rem;
            cursor: pointer;
            transition: background-color 0.3s ease;
            position: relative;
            overflow: hidden;
        }

        /* Submit button hover effect */
        .form-container input[type="submit"]:hover {
            background-color: #ff4b6e;
        }

        /* Form fade-in animation */
        @keyframes fadeIn {
            from { opacity: 0; transform: scale(0.9); }
            to { opacity: 1; transform: scale(1); }
        }

        /* Header slide-in animation */
        @keyframes slideIn {
            from { opacity: 0; transform: translateX(-20px); }
            to { opacity: 1; transform: translateX(0); }
        }

        /* Floating background elements */
        .circle {
            position: absolute;
            background-color: rgba(255, 255, 255, 0.2);
            border-radius: 50%;
            animation: float 6s infinite ease-in-out;
            z-index: -1;
        }

        .circle:nth-child(1) {
            width: 100px;
            height: 100px;
            top: -50px;
            left: -50px;
        }

        .circle:nth-child(2) {
            width: 60px;
            height: 60px;
            bottom: -30px;
            right: -30px;
            animation-delay: 2s;
        }

        /* Floating animation */
        @keyframes float {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(20px); }
        }

        /* Responsive adjustments */
        @media (max-width: 480px) {
            .form-container {
                padding: 20px;
            }

            .form-container h2 {
                font-size: 1.5rem;
            }
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Enter Details To Update</h2>
        <form action="update">
            <label for="id">Enter ID</label>
            <input type="text" id="id" name="id" placeholder="e.g., 23333" required>
            <input type="submit" value="Submit">
        </form>
        <!-- Floating background elements for added design -->
        <div class="circle"></div>
        <div class="circle"></div>
    </div>
</body>
</html>
