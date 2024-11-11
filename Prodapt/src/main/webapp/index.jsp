<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Interactive Page with Slideshow</title>
    <style>
        /* Reset */
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        /* Body Styling */
        body {
            background: linear-gradient(to right, #4facfe, #00f2fe);
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
        }

        /* Navbar */
        .navbar {
            display: flex;
            justify-content: center;
            width: 100%;
            background: #333;
            padding: 15px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
        }

        .navbar a {
            color: #fff;
            text-decoration: none;
            margin: 0 15px;
            font-size: 1.1rem;
            font-weight: bold;
            position: relative;
            padding: 10px;
            transition: color 0.3s, transform 0.3s;
        }

        .navbar a:hover {
            color: #4facfe;
            transform: translateY(-3px);
        }

        /* Navbar hover underline effect */
        .navbar a::after {
            content: '';
            display: block;
            width: 0;
            height: 3px;
            background: #4facfe;
            transition: width 0.3s;
            position: absolute;
            bottom: 0;
            left: 0;
        }

        .navbar a:hover::after {
            width: 100%;
        }

        /* Slideshow Container */
        .slideshow-container {
            max-width: 800px;
            position: relative;
            margin: 20px auto;
            overflow: hidden;
            border-radius: 10px;
            box-shadow: 0px 10px 15px rgba(0, 0, 0, 0.2);
        }

        /* Slides */
        .slide {
            display: none;
            width: 100%;
            animation: fadeIn 1s ease;
        }

        .slide img {
            width: 100%;
            height: 400px;
            object-fit: cover; /* Ensures all images have a uniform size */
            border-radius: 10px;
        }

        /* Navigation Arrows */
        .prev, .next {
            cursor: pointer;
            position: absolute;
            top: 50%;
            width: auto;
            padding: 10px;
            margin-top: -22px;
            color: #fff;
            font-weight: bold;
            font-size: 18px;
            transition: 0.3s;
            border-radius: 3px;
            background-color: rgba(0, 0, 0, 0.5);
        }

        .prev {
            left: 10px;
        }

        .next {
            right: 10px;
        }

        .prev:hover, .next:hover {
            background-color: rgba(0, 0, 0, 0.8);
        }

        /* Animation for slides */
        @keyframes fadeIn {
            from { opacity: 0.4; }
            to { opacity: 1; }
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .navbar a {
                font-size: 1rem;
                margin: 0 10px;
            }

            .prev, .next {
                font-size: 14px;
                padding: 8px;
            }

            .slide img {
                height: 250px;
            }
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <div class="navbar">
        <a href="create.jsp">Create ID</a>
        <a href="read.jsp">Read ID</a>
        <a href="update-detail.jsp">Update ID</a>
        <a href="delete.jsp">Delete ID</a>
    </div>

    <!-- Slideshow Container -->
    <div class="slideshow-container">
        <!-- Slide 1 -->
        <div class="slide">
            <img src="pic1.jpg" alt="Slide 1">
        </div>
        <!-- Slide 2 -->
        <div class="slide">
            <img src="pic-2.jpg" alt="Slide 2">
        </div>
        <!-- Slide 3 -->
        <div class="slide">
            <img src="pic-3.jpg" alt="Slide 3">
        </div>
        <!-- Slide 4 -->
        <div class="slide">
            <img src="pic-4.jpg" alt="Slide 4">
        </div>
        <!-- Slide 5 -->
        <div class="slide">
            <img src="pic-5.jpg" alt="Slide 5">
        </div>

        <!-- Navigation Arrows -->
        <a class="prev" onclick="changeSlide(-1)">&#10094;</a>
        <a class="next" onclick="changeSlide(1)">&#10095;</a>
    </div>

    <script>
        // JavaScript for Slideshow Functionality
        let slideIndex = 0;
        showSlide(slideIndex);

        function showSlide(n) {
            const slides = document.querySelectorAll('.slide');
            slides.forEach((slide, index) => {
                slide.style.display = index === n ? 'block' : 'none';
            });
        }

        function changeSlide(n) {
            slideIndex += n;
            const slides = document.querySelectorAll('.slide');
            if (slideIndex >= slides.length) { slideIndex = 0; }
            if (slideIndex < 0) { slideIndex = slides.length - 1; }
            showSlide(slideIndex);
        }

        // Automatic Slideshow
        setInterval(() => {
            changeSlide(1);
        }, 3000); // Change image every 3 seconds
    </script>
</body>
</html>
