```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>TESLA MOTORS COMPANY | Electric Vehicles</title>

    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, Helvetica, sans-serif;
        }

        body {
            background: #f4f6f8;
            color: #222;
        }

        /* ================= NAVBAR ================= */

        nav {
            background: #000;
            color: white;
            padding: 18px 7%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .logo {
            font-size: 27px;
            font-weight: bold;
            letter-spacing: 3px;
        }

        .logo span {
            color: #e82127;
        }

        nav ul {
            list-style: none;
            display: flex;
            gap: 30px;
        }

        nav ul li a {
            color: white;
            text-decoration: none;
            font-size: 15px;
            transition: 0.3s;
        }

        nav ul li a:hover {
            color: #e82127;
        }

        /* ================= HERO ================= */

        .hero {
            min-height: 620px;
            background:
                linear-gradient(rgba(0,0,0,0.55), rgba(0,0,0,0.65)),
                url("https://images.unsplash.com/photo-1560958089-b8a1929cea89?auto=format&fit=crop&w=2000&q=90")
                center/cover no-repeat;

            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            color: white;
            padding: 40px 20px;
        }

        .hero-content {
            max-width: 850px;
        }

        .hero h1 {
            font-size: 60px;
            letter-spacing: 6px;
            margin-bottom: 20px;
        }

        .hero h1 span {
            color: #e82127;
        }

        .hero p {
            font-size: 22px;
            line-height: 1.6;
            margin-bottom: 35px;
        }

        .hero-button {
            display: inline-block;
            padding: 15px 35px;
            background: #e82127;
            color: white;
            text-decoration: none;
            border-radius: 30px;
            font-weight: bold;
            transition: 0.3s;
        }

        .hero-button:hover {
            background: white;
            color: #000;
        }

        /* ================= SECTION ================= */

        .section {
            padding: 70px 7%;
        }

        .section-title {
            text-align: center;
            margin-bottom: 45px;
        }

        .section-title h2 {
            font-size: 38px;
            margin-bottom: 12px;
        }

        .section-title p {
            color: #777;
            font-size: 17px;
        }

        /* ================= CARS ================= */

        .cars {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
        }

        .car-card {
            background: white;
            border-radius: 18px;
            overflow: hidden;
            box-shadow: 0 8px 25px rgba(0,0,0,0.12);
            transition: 0.4s;
        }

        .car-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 35px rgba(0,0,0,0.20);
        }

        .car-image {
            width: 100%;
            height: 230px;
            object-fit: cover;
        }

        .car-content {
            padding: 25px;
        }

        .car-content h3 {
            font-size: 27px;
            margin-bottom: 10px;
        }

        .car-content p {
            color: #666;
            line-height: 1.6;
            margin-bottom: 15px;
        }

        .price {
            color: #e82127;
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 18px;
        }

        .specs {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
            font-size: 13px;
            color: #555;
        }

        .btn {
            display: block;
            text-align: center;
            background: #000;
            color: white;
            padding: 13px;
            border-radius: 8px;
            text-decoration: none;
            transition: 0.3s;
        }

        .btn:hover {
            background: #e82127;
        }

        /* ================= FEATURES ================= */

        .features {
            background: #111;
            color: white;
        }

        .feature-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
            gap: 25px;
        }

        .feature {
            background: #1d1d1d;
            padding: 35px 25px;
            text-align: center;
            border-radius: 15px;
            border: 1px solid #333;
        }

        .feature .icon {
            font-size: 45px;
            margin-bottom: 20px;
        }

        .feature h3 {
            margin-bottom: 12px;
        }

        .feature p {
            color: #bbb;
            line-height: 1.5;
        }

        /* ================= ABOUT ================= */

        .about {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 50px;
            align-items: center;
        }

        .about img {
            width: 100%;
            border-radius: 20px;
        }

        .about-text h2 {
            font-size: 40px;
            margin-bottom: 20px;
        }

        .about-text p {
            line-height: 1.8;
            color: #555;
            margin-bottom: 15px;
        }

        /* ================= CONTACT ================= */

        .contact {
            background: linear-gradient(135deg, #e82127, #800000);
            color: white;
            text-align: center;
        }

        .contact h2 {
            font-size: 40px;
            margin-bottom: 15px;
        }

        .contact p {
            font-size: 18px;
            margin-bottom: 30px;
        }

        .contact-button {
            display: inline-block;
            background: white;
            color: #e82127;
            padding: 15px 35px;
            border-radius: 30px;
            text-decoration: none;
            font-weight: bold;
        }

        /* ================= FOOTER ================= */

        footer {
            background: #000;
            color: white;
            text-align: center;
            padding: 30px;
        }

        footer p {
            color: #aaa;
            margin-top: 10px;
        }

        /* ================= MOBILE ================= */

        @media(max-width: 768px) {

            nav {
                flex-direction: column;
                gap: 15px;
            }

            nav ul {
                gap: 15px;
                flex-wrap: wrap;
                justify-content: center;
            }

            .hero h1 {
                font-size: 38px;
            }

            .hero p {
                font-size: 17px;
            }

            .about {
                grid-template-columns: 1fr;
            }

            .section-title h2 {
                font-size: 30px;
            }
        }

    </style>
</head>

<body>

<!-- ================= NAVIGATION ================= -->

<nav>

    <div class="logo">
        TESLA<span> MOTORS</span>
    </div>

    <ul>
        <li><a href="#home">HOME</a></li>
        <li><a href="#models">MODELS</a></li>
        <li><a href="#features">FEATURES</a></li>
        <li><a href="#about">ABOUT</a></li>
        <li><a href="#contact">CONTACT</a></li>
    </ul>

</nav>


<!-- ================= HERO ================= -->

<section class="hero" id="home">

    <div class="hero-content">

        <h1>
            DRIVE THE <span>FUTURE</span>
        </h1>

        <p>
            Experience the next generation of electric mobility
            with Tesla's innovative and high-performance vehicles.
        </p>

        <a href="#models" class="hero-button">
            EXPLORE TESLA MODELS
        </a>

    </div>

</section>


<!-- ================= MODELS ================= -->

<section class="section" id="models">

    <div class="section-title">

        <h2>TESLA SEDAN MODELS</h2>

        <p>
            Discover premium Tesla electric sedans available to Nigerian customers.
        </p>

    </div>


    <div class="cars">


        <!-- MODEL 3 -->

        <div class="car-card">

            <img
                class="car-image"
                src="https://images.unsplash.com/photo-1560958089-b8a1929cea89?auto=format&fit=crop&w=1200&q=85"
                alt="Tesla Model 3">

            <div class="car-content">

                <h3>Model 3</h3>

                <p>
                    A modern electric sport sedan combining performance,
                    efficiency and minimalist technology.
                </p>

                <div class="specs">
                    <span>⚡ Electric</span>
                    <span>👥 5 Seats</span>
                    <span>🚀 AWD Available</span>
                </div>

                <div class="price">
                    ₦57,743,910
                </div>

                <a href="#contact" class="btn">
                    REQUEST INFORMATION
                </a>

            </div>

        </div>


        <!-- MODEL 3 PERFORMANCE -->

        <div class="car-card">

            <img
                class="car-image"
                src="https://images.unsplash.com/photo-1619767886558-efdc259cde1a?auto=format&fit=crop&w=1200&q=85"
                alt="Tesla Model 3 Performance">

            <div class="car-content">

                <h3>Model 3 Performance</h3>

                <p>
                    A performance-focused electric sedan engineered
                    for rapid acceleration and responsive handling.
                </p>

                <div class="specs">
                    <span>⚡ Electric</span>
                    <span>🚀 Performance</span>
                    <span>🏁 AWD</span>
                </div>

                <div class="price">
                    ₦75,845,790
                </div>

                <a href="#contact" class="btn">
                    REQUEST INFORMATION
                </a>

            </div>

        </div>


        <!-- MODEL S -->

        <div class="car-card">

            <img
                class="car-image"
                src="https://images.unsplash.com/photo-1536700503339-1e4b06520771?auto=format&fit=crop&w=1200&q=85"
                alt="Tesla Model S">

            <div class="car-content">

                <h3>Model S</h3>

                <p>
                    A premium Tesla electric sedan designed around
                    long-distance range, comfort and high performance.
                </p>

                <div class="specs">
                    <span>⚡ Electric</span>
                    <span>👥 5 Seats</span>
                    <span>🚀 Dual Motor</span>
                </div>

                <div class="price">
                    ₦118,219,410
                </div>

                <a href="#contact" class="btn">
                    REQUEST INFORMATION
                </a>

            </div>

        </div>


        <!-- MODEL S PLAID -->

        <div class="car-card">

            <img
                class="car-image"
                src="https://images.unsplash.com/photo-1618843479313-40f8afb4b4d8?auto=format&fit=crop&w=1200&q=85"
                alt="Tesla Model S Plaid">

            <div class="car-content">

                <h3>Model S Plaid</h3>

                <p>
                    Tesla's high-performance sedan with extraordinary
                    acceleration and tri-motor performance.
                </p>

                <div class="specs">
                    <span>⚡ Electric</span>
                    <span>🚀 1,020 HP</span>
                    <span>🏁 Plaid</span>
                </div>

                <div class="price">
                    ₦135,886,410
                </div>

                <a href="#contact" class="btn">
                    REQUEST INFORMATION
                </a>

            </div>

        </div>

    </div>

</section>


<!-- ================= FEATURES ================= -->

<section class="section features" id="features">

    <div class="section-title">

        <h2>WHY TESLA?</h2>

        <p style="color:#aaa;">
            Technology designed for the future of transportation.
        </p>

    </div>


    <div class="feature-grid">

        <div class="feature">

            <div class="icon">⚡</div>

            <h3>100% ELECTRIC</h3>

            <p>
                Drive without traditional gasoline engines and
                enjoy the benefits of electric propulsion.
            </p>

        </div>


        <div class="feature">

            <div class="icon">🚀</div>

            <h3>HIGH PERFORMANCE</h3>

            <p>
                Instant electric torque delivers responsive
                acceleration and dynamic performance.
            </p>

        </div>


        <div class="feature">

            <div class="icon">🔋</div>

            <h3>LONG RANGE</h3>

            <p>
                Tesla vehicles are engineered to provide
                impressive electric driving range.
            </p>

        </div>


        <div class="feature">

            <div class="icon">📱</div>

            <h3>SMART TECHNOLOGY</h3>

            <p>
                Control and monitor important vehicle functions
                using connected Tesla technology.
            </p>

        </div>

    </div>

</section>


<!-- ================= ABOUT ================= -->

<section class="section" id="about">

    <div class="about">

        <div>

            <img
                src="https://images.unsplash.com/photo-1593941707882-a5bba14938c7?auto=format&fit=crop&w=1400&q=85"
                alt="Tesla electric vehicle">

        </div>


        <div class="about-text">

            <h2>THE FUTURE IS ELECTRIC</h2>

            <p>
                Tesla is transforming transportation through
                electric vehicles, advanced technology and
                innovative vehicle design.
            </p>

            <p>
                From the Model 3 to the high-performance Model S Plaid,
                Tesla vehicles combine electric efficiency with
                premium performance.
            </p>

            <p>
                Experience a cleaner, smarter and more connected
                driving experience.
            </p>

            <a href="#models" class="hero-button">
                VIEW OUR MODELS
            </a>

        </div>

    </div>

</section>


<!-- ================= CONTACT ================= -->

<section class="section contact" id="contact">

    <h2>READY TO GO ELECTRIC?</h2>

    <p>
        Contact our Tesla vehicle sales team for model availability,
        specifications and current Nigerian pricing.
    </p>

    <a href="mailto:sales@teslamotors.example" class="contact-button">
        CONTACT SALES
    </a>

</section>


<!-- ================= FOOTER ================= -->

<footer>

    <h3>TESLA MOTORS COMPANY</h3>

    <p>
        © 2026 Tesla Motors Company. All Rights Reserved.
    </p>

    <p>
        Electric Vehicles • Innovation • Performance • Sustainability
    </p>

</footer>

</body>
</html>
```

