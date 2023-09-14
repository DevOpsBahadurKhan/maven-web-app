<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Portfolio</title>
    <link rel="stylesheet" href="styles.css"> <!-- External CSS file for styling -->
    <style>
        /* Additional inline CSS for responsiveness */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f7f7f7;
        }

        header {
            background-color: #0073e6;
            color: #fff;
            text-align: center;
            padding: 60px 0;
        }

        nav ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            text-align: center;
        }

        nav ul li {
            display: inline-block;
            margin-right: 20px;
        }

        nav ul li a {
            text-decoration: none;
            color: #333;
            font-weight: bold;
            font-size: 16px;
            transition: color 0.3s;
        }

        nav ul li a:hover {
            color: #0073e6;
        }

        section {
            padding: 40px;
        }

        h1 {
            font-size: 36px;
        }

        h2 {
            font-size: 28px;
            color: #0073e6;
        }

        .portfolio-item {
            margin: 20px 0;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        }

        img {
            max-width: 100%;
            height: auto;
            display: block;
            margin: 0 auto;
        }

        footer {
            background-color: #0073e6;
            color: #fff;
            text-align: center;
            padding: 20px 0;
        }
    </style>
</head>
<body>
    <header>
        <h1>Your Name</h1>
        <p>Web Developer & Designer</p>
    </header>

    <nav>
        <ul>
            <li><a href="#about">About</a></li>
            <li><a href="#portfolio">Portfolio</a></li>
            <li><a href="#contact">Contact</a></li>
        </ul>
    </nav>

    <section id="about">
        <h2>About Me</h2>
        <p>Your introduction and description here.</p>
    </section>

    <section id="portfolio">
        <h2>Portfolio</h2>
        <!-- Add your portfolio items here -->
        <div class="portfolio-item">
            <img src="project1.jpg" alt="Project 1">
            <h3>Project 1</h3>
            <p>Description of your project.</p>
        </div>
        <div class="portfolio-item">
            <img src="project2.jpg" alt="Project 2">
            <h3>Project 2</h3>
            <p>Description of your project.</p>
        </div>
    </section>

    <section id="contact">
        <h2>Contact</h2>
        <p>Contact information and a contact form can go here.</p>
    </section>

    <footer>
        <p>Learn Here Lead Any where</p>
    </footer>
</body>
</html>
