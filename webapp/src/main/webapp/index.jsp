```jsp
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>SMART & CHUKA AIRWAYS | FLY BEYOND EXPECTATIONS</title>

    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, Helvetica, sans-serif;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            background: #f5f8fc;
            color: #172033;
        }

        /* =========================
           NAVIGATION
        ========================== */

        header {
            background: #ffffff;
            color: #071a3d;
            padding: 18px 7%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: sticky;
            top: 0;
            z-index: 1000;
            box-shadow: 0 3px 15px rgba(0, 0, 0, 0.12);
        }

        .logo {
            font-size: 23px;
            font-weight: 800;
            letter-spacing: 0.5px;
            color: #0066cc;
        }

        .logo span {
            color: #0066cc;
        }

        nav a {
            color: #071a3d;
            text-decoration: none;
            margin-left: 25px;
            font-weight: 600;
        }

        nav a:hover {
            color: #0066cc;
        }

        .btn {
            background: #0066cc;
            color: #ffffff;
            border: none;
            padding: 13px 22px;
            border-radius: 7px;
            cursor: pointer;
            font-weight: bold;
            transition: 0.3s;
        }

        .btn:hover {
            background: #004c99;
            transform: translateY(-2px);
        }

        /* =========================
           HERO
        ========================== */

        .hero {
            min-height: 620px;

            background:
                linear-gradient(
                    rgba(4, 18, 46, 0.70),
                    rgba(4, 18, 46, 0.72)
                ),

                url("https://images.unsplash.com/photo-1436491865332-7a61a109cc05?auto=format&fit=crop&w=1800&q=85")
                center/cover;

            display: flex;
            align-items: center;
            padding: 80px 7%;
            color: white;
        }

        .hero-content {
            max-width: 650px;
        }

        .hero h1 {
            font-size: 58px;
            line-height: 1.05;
            margin-bottom: 20px;
        }

        .hero h1 span {
            color: #4da6ff;
        }

        .hero p {
            font-size: 20px;
            line-height: 1.6;
            margin-bottom: 30px;
        }

        /* =========================
           FLIGHT SEARCH
        ========================== */

        .search-box {
            background: white;
            color: #172033;
            padding: 25px;
            border-radius: 15px;
            margin-top: -80px;
            position: relative;
            z-index: 10;
            width: 86%;
            margin-left: auto;
            margin-right: auto;
            box-shadow: 0 10px 40px rgba(0, 0, 0, 0.18);
        }

        .search-tabs {
            display: flex;
            gap: 25px;
            margin-bottom: 20px;
            font-weight: bold;
        }

        .search-tabs span:first-child {
            color: #0066cc;
            border-bottom: 3px solid #0066cc;
            padding-bottom: 8px;
        }

        .search-grid {
            display: grid;
            grid-template-columns: repeat(5, 1fr);
            gap: 12px;
        }

        .field label {
            display: block;
            font-size: 12px;
            font-weight: bold;
            margin-bottom: 7px;
            color: #697386;
        }

        .field input,
        .field select {
            width: 100%;
            padding: 13px;
            border: 1px solid #d7dce5;
            border-radius: 7px;
            outline: none;
        }

        .field input:focus,
        .field select:focus {
            border-color: #0066cc;
        }

        /* =========================
           GENERAL SECTIONS
        ========================== */

        section {
            padding: 85px 7%;
        }

        .section-title {
            text-align: center;
            margin-bottom: 45px;
        }

        .section-title h2 {
            font-size: 38px;
            color: #071a3d;
            margin-bottom: 10px;
        }

        .section-title p {
            color: #697386;
        }

        /* =========================
           DESTINATIONS
        ========================== */

        .destinations {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 25px;
        }

        .destination {
            background: white;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.08);
            transition: 0.3s;
        }

        .destination:hover {
            transform: translateY(-7px);
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15);
        }

        .destination img {
            width: 100%;
            height: 220px;
            object-fit: cover;
        }

        .destination-content {
            padding: 20px;
        }

        .destination-content h3 {
            color: #071a3d;
            margin-bottom: 8px;
        }

        .destination-content p {
            color: #697386;
        }

        /* =========================
           SERVICES
        ========================== */

        .services {
            background: #eef4fb;
        }

        .service-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
        }

        .service {
            background: white;
            padding: 30px 20px;
            text-align: center;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.06);
            transition: 0.3s;
        }

        .service:hover {
            transform: translateY(-5px);
        }

        .service-icon {
            font-size: 40px;
            margin-bottom: 15px;
        }

        .service h3 {
            margin-bottom: 10px;
            color: #071a3d;
        }

        .service p {
            color: #697386;
            line-height: 1.5;
        }

        /* =========================
           BOOKING
        ========================== */

        .booking {
            background: white;
        }

        .booking-container {
            max-width: 1000px;
            margin: auto;
            background: #f7f9fc;
            padding: 35px;
            border-radius: 15px;
            box-shadow: 0 5px 25px rgba(0, 0, 0, 0.06);
        }

        .form-grid {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 18px;
        }

        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 8px;
        }

        .form-group input,
        .form-group select {
            width: 100%;
            padding: 14px;
            border: 1px solid #ccd3df;
            border-radius: 7px;
            outline: none;
        }

        .form-group input:focus,
        .form-group select:focus {
            border-color: #0066cc;
        }

        .full {
            grid-column: 1 / -1;
        }

        /* =========================
           PAYMENT
        ========================== */

        .payment {
            background: #071a3d;
            color: white;
        }

        .payment-container {
            max-width: 800px;
            margin: auto;
            background: white;
            color: #172033;
            padding: 35px;
            border-radius: 15px;
            box-shadow: 0 10px 35px rgba(0, 0, 0, 0.2);
        }

        .payment-methods {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 12px;
            margin: 20px 0;
        }

        .payment-method {
            border: 2px solid #dce1e9;
            padding: 18px;
            border-radius: 8px;
            text-align: center;
            cursor: pointer;
            transition: 0.3s;
        }

        .payment-method:hover {
            border-color: #0066cc;
            background: #f0f7ff;
        }

        .payment-form {
            display: grid;
            gap: 15px;
        }

        .payment-form input {
            padding: 14px;
            border: 1px solid #ccd3df;
            border-radius: 7px;
            outline: none;
        }

        .payment-form input:focus {
            border-color: #0066cc;
        }

        /* =========================
           CONFIRMATION
        ========================== */

        .confirmation {
            display: none;
            max-width: 700px;
            margin: 30px auto;
            padding: 30px;
            background: #e9f8ef;
            border: 1px solid #9bd4ad;
            border-radius: 12px;
            text-align: center;
            color: #172033;
        }

        .confirmation h3 {
            color: #168342;
            margin-bottom: 10px;
        }

        /* =========================
           FOOTER
        ========================== */

        footer {
            background: #04132d;
            color: white;
            padding: 60px 7% 25px;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 40px;
        }

        footer h3 {
            margin-bottom: 18px;
            color: #4da6ff;
        }

        footer p,
        footer a {
            color: #bdc7d8;
            line-height: 2;
            text-decoration: none;
        }

        footer a:hover {
            color: #ffffff;
        }

        .copyright {
            border-top: 1px solid #243653;
            margin-top: 40px;
            padding-top: 20px;
            text-align: center;
            color: #9aa8bd;
        }

        /* =========================
           MOBILE
        ========================== */

        @media(max-width: 900px) {

            nav {
                display: none;
            }

            .hero h1 {
                font-size: 42px;
            }

            .search-grid,
            .destinations,
            .service-grid {
                grid-template-columns: 1fr 1fr;
            }

            .footer-grid {
                grid-template-columns: 1fr 1fr;
            }

        }

        @media(max-width: 600px) {

            .search-grid,
            .destinations,
            .service-grid,
            .form-grid,
            .payment-methods,
            .footer-grid {
                grid-template-columns: 1fr;
            }

            .hero {
                min-height: 550px;
            }

            .hero h1 {
                font-size: 36px;
            }

            .search-box {
                width: 92%;
                margin-top: -50px;
            }

            .logo {
                font-size: 17px;
            }

        }

    </style>

</head>


<body>


<!-- =====================================================
     NAVIGATION
====================================================== -->

<header>

    <div class="logo">
        SMART <span>&</span> CHUKA AIRWAYS
    </div>

    <nav>

        <a href="#home">HOME</a>

        <a href="#destinations">DESTINATIONS</a>

        <a href="#services">SERVICES</a>

        <a href="#booking">BOOK FLIGHT</a>

        <a href="#payment">PAYMENT</a>

    </nav>

    <button class="btn"
            onclick="location.href='#booking'">

        BOOK NOW

    </button>

</header>


<!-- =====================================================
     HERO SECTION
====================================================== -->

<section class="hero" id="home">

    <div class="hero-content">

        <h1>

            FLY <span>BEYOND</span><br>

            EXPECTATIONS

        </h1>

        <p>

            WELCOME TO SMART & CHUKA AIRWAYS.

            EXPERIENCE SAFE, COMFORTABLE AND RELIABLE
            JOURNEYS CONNECTING YOU TO THE WORLD.

        </p>

        <button class="btn"
                onclick="location.href='#booking'">

            START YOUR JOURNEY

        </button>

    </div>

</section>


<!-- =====================================================
     FLIGHT SEARCH
====================================================== -->

<div class="search-box">

    <div class="search-tabs">

        <span>ROUND TRIP</span>

        <span>ONE WAY</span>

        <span>MULTI-CITY</span>

    </div>


    <div class="search-grid">

        <div class="field">

            <label>FROM</label>

            <input type="text"
                   placeholder="LAGOS (LOS)">

        </div>


        <div class="field">

            <label>TO</label>

            <input type="text"
                   placeholder="LONDON (LHR)">

        </div>


        <div class="field">

            <label>DEPARTURE</label>

            <input type="date">

        </div>


        <div class="field">

            <label>PASSENGERS</label>

            <select>

                <option>1 PASSENGER</option>

                <option>2 PASSENGERS</option>

                <option>3 PASSENGERS</option>

                <option>4 PASSENGERS</option>

                <option>5 PASSENGERS</option>

            </select>

        </div>


        <button class="btn"
                onclick="searchFlight()">

            SEARCH FLIGHTS

        </button>

    </div>

</div>


<!-- =====================================================
     DESTINATIONS
====================================================== -->

<section id="destinations">

    <div class="section-title">

        <h2>POPULAR DESTINATIONS</h2>

        <p>
            DISCOVER AMAZING PLACES WITH
            SMART & CHUKA AIRWAYS.
        </p>

    </div>


    <div class="destinations">


        <div class="destination">

            <img
                src="https://images.unsplash.com/photo-1578002570438-9d2f7a2c8e5f?auto=format&fit=crop&w=900&q=80">

            <div class="destination-content">

                <h3>🇳🇬 LAGOS, NIGERIA</h3>

                <p>
                    EXPERIENCE THE ENERGY AND CULTURE OF LAGOS.
                </p>

            </div>

        </div>


        <div class="destination">

            <img
                src="https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?auto=format&fit=crop&w=900&q=80">

            <div class="destination-content">

                <h3>🇬🇧 LONDON, UK</h3>

                <p>
                    EXPLORE ONE OF THE WORLD'S GREATEST CITIES.
                </p>

            </div>

        </div>


        <div class="destination">

            <img
                src="https://images.unsplash.com/photo-1496588152823-86ff7695e68f?auto=format&fit=crop&w=900&q=80">

            <div class="destination-content">

                <h3>🇦🇪 DUBAI, UAE</h3>

                <p>
                    LUXURY, ADVENTURE AND UNFORGETTABLE EXPERIENCES.
                </p>

            </div>

        </div>

    </div>

</section>


<!-- =====================================================
     SERVICES
====================================================== -->

<section class="services" id="services">

    <div class="section-title">

        <h2>WHY FLY WITH US?</h2>

        <p>
            EVERYTHING YOU NEED FOR A COMFORTABLE JOURNEY.
        </p>

    </div>


    <div class="service-grid">


        <div class="service">

            <div class="service-icon">✈️</div>

            <h3>SAFE FLIGHTS</h3>

            <p>
                YOUR SAFETY IS OUR HIGHEST PRIORITY
                ON EVERY JOURNEY.
            </p>

        </div>


        <div class="service">

            <div class="service-icon">💺</div>

            <h3>COMFORT</h3>

            <p>
                ENJOY COMFORTABLE SEATING AND A
                PLEASANT FLYING EXPERIENCE.
            </p>

        </div>


        <div class="service">

            <div class="service-icon">🧳</div>

            <h3>BAGGAGE</h3>

            <p>
                GENEROUS BAGGAGE ALLOWANCES FOR
                YOUR TRAVEL NEEDS.
            </p>

        </div>


        <div class="service">

            <div class="service-icon">🌍</div>

            <h3>GLOBAL NETWORK</h3>

            <p>
                CONNECT TO EXCITING DESTINATIONS
                AROUND THE WORLD.
            </p>

        </div>

    </div>

</section>


<!-- =====================================================
     BOOKING
====================================================== -->

<section class="booking" id="booking">

    <div class="section-title">

        <h2>BOOK YOUR FLIGHT</h2>

        <p>
            COMPLETE THE FORM BELOW TO RESERVE YOUR SEAT.
        </p>

    </div>


    <div class="booking-container">

        <form id="bookingForm">

            <div class="form-grid">


                <div class="form-group">

                    <label>FIRST NAME</label>

                    <input type="text"
                           id="firstName"
                           required>

                </div>


                <div class="form-group">

                    <label>LAST NAME</label>

                    <input type="text"
                           id="lastName"
                           required>

                </div>


                <div class="form-group">

                    <label>EMAIL ADDRESS</label>

                    <input type="email"
                           id="email"
                           required>

                </div>


                <div class="form-group">

                    <label>PHONE NUMBER</label>

                    <input type="tel"
                           required>

                </div>


                <div class="form-group">

                    <label>DEPARTURE CITY</label>

                    <select required>

                        <option value="">
                            SELECT CITY
                        </option>

                        <option>LAGOS</option>

                        <option>ABUJA</option>

                        <option>PORT HARCOURT</option>

                        <option>LONDON</option>

                        <option>DUBAI</option>

                        <option>NEW YORK</option>

                    </select>

                </div>


                <div class="form-group">

                    <label>DESTINATION</label>

                    <select required>

                        <option value="">
                            SELECT DESTINATION
                        </option>

                        <option>LAGOS</option>

                        <option>ABUJA</option>

                        <option>LONDON</option>

                        <option>DUBAI</option>

                        <option>NEW YORK</option>

                    </select>

                </div>


                <div class="form-group">

                    <label>DEPARTURE DATE</label>

                    <input type="date"
                           required>

                </div>


                <div class="form-group">

                    <label>TRAVEL CLASS</label>

                    <select>

                        <option>ECONOMY</option>

                        <option>PREMIUM ECONOMY</option>

                        <option>BUSINESS CLASS</option>

                        <option>FIRST CLASS</option>

                    </select>

                </div>


                <div class="form-group full">

                    <button type="button"
                            class="btn"
                            onclick="createBooking()">

                        CONTINUE TO PAYMENT →

                    </button>

                </div>

            </div>

        </form>

    </div>

</section>


<!-- =====================================================
     PAYMENT
====================================================== -->

<section class="payment" id="payment">

    <div class="section-title">

        <h2 style="color:white;">
            SECURE PAYMENT
        </h2>

        <p style="color:#c8d2e2;">

            CHOOSE YOUR PREFERRED PAYMENT METHOD.

        </p>

    </div>


    <div class="payment-container">

        <h3>PAYMENT METHOD</h3>


        <div class="payment-methods">


            <div class="payment-method"
                 onclick="selectPayment('card')">

                💳

                <br>

                CARD

            </div>


            <div class="payment-method"
                 onclick="selectPayment('bank')">

                🏦

                <br>

                BANK TRANSFER

            </div>


            <div class="payment-method"
                 onclick="selectPayment('mobile')">

                📱

                <br>

                MOBILE PAYMENT

            </div>

        </div>


        <!-- CARD PAYMENT -->

        <div id="cardPayment"
             class="payment-form">

            <input type="text"
                   placeholder="CARDHOLDER NAME">


            <input type="text"
                   placeholder="CARD NUMBER">


            <div style="
                display:grid;
                grid-template-columns:1fr 1fr;
                gap:10px;
            ">

                <input type="text"
                       placeholder="MM/YY">

                <input type="text"
                       placeholder="CVV">

            </div>


            <button class="btn"
                    onclick="processPayment()">

                PAY & CONFIRM BOOKING

            </button>

        </div>


        <!-- BANK TRANSFER -->

        <div id="bankPayment"
             class="payment-form"
             style="display:none;">

            <p>

                <strong>BANK:</strong>
                SMART & CHUKA BANK

            </p>

            <p>

                <strong>ACCOUNT NAME:</strong>
                SMART & CHUKA AIRWAYS

            </p>

            <p>

                <strong>ACCOUNT NUMBER:</strong>
                0000000000

            </p>


            <button class="btn"
                    onclick="processPayment()">

                I HAVE MADE PAYMENT

            </button>

        </div>


        <!-- MOBILE PAYMENT -->

        <div id="mobilePayment"
             class="payment-form"
             style="display:none;">

            <input type="tel"
                   placeholder="MOBILE PAYMENT NUMBER">


            <button class="btn"
                    onclick="processPayment()">

                CONTINUE PAYMENT

            </button>

        </div>

    </div>


    <!-- BOOKING CONFIRMATION -->

    <div class="confirmation"
         id="confirmation">

        <h3>
            ✓ BOOKING CONFIRMED!
        </h3>

        <p>
            THANK YOU FOR CHOOSING
            SMART & CHUKA AIRWAYS.
        </p>

        <br>

        <p>

            YOUR BOOKING REFERENCE IS:

            <strong id="bookingReference"></strong>

        </p>

        <p>
            A CONFIRMATION WILL BE SENT
            TO YOUR EMAIL ADDRESS.
        </p>

    </div>

</section>


<!-- =====================================================
     FOOTER
====================================================== -->

<footer>

    <div class="footer-grid">


        <div>

            <h3>
                SMART & CHUKA AIRWAYS
            </h3>

            <p>
                CONNECTING PEOPLE, BUSINESSES
                AND DESTINATIONS ACROSS THE WORLD.
            </p>

            <p>
                FLY SMART. FLY COMFORTABLE.
                FLY WITH US.
            </p>

        </div>


        <div>

            <h3>COMPANY</h3>

            <p>
                <a href="#home">
                    ABOUT US
                </a>
            </p>

            <p>
                <a href="#services">
                    OUR SERVICES
                </a>
            </p>

            <p>
                <a href="#destinations">
                    DESTINATIONS
                </a>
            </p>

        </div>


        <div>

            <h3>SUPPORT</h3>

            <p>
                <a href="#">
                    CONTACT US
                </a>
            </p>

            <p>
                <a href="#">
                    MANAGE BOOKING
                </a>
            </p>

            <p>
                <a href="#">
                    BAGGAGE INFORMATION
                </a>
            </p>

        </div>


        <div>

            <h3>CONTACT</h3>

            <p>
                📞 +234 800 SMART AIR
            </p>

            <p>
                ✉️ INFO@SMARTCHUKAAIRWAYS.COM
            </p>

            <p>
                📍 LAGOS, NIGERIA
            </p>

        </div>

    </div>


    <div class="copyright">

        © 2026 SMART & CHUKA AIRWAYS.
        ALL RIGHTS RESERVED.

    </div>

</footer>


<!-- =====================================================
     JAVASCRIPT
====================================================== -->

<script>


    /* =========================
       SEARCH FLIGHTS
    ========================== */

    function searchFlight() {

        alert(
            "SEARCHING AVAILABLE FLIGHTS...\n\n" +
            "PLEASE WAIT WHILE WE FIND THE BEST " +
            "FLIGHT OPTIONS FOR YOU."
        );

    }


    /* =========================
       CREATE BOOKING
    ========================== */

    function createBooking() {

        const firstName =
            document.getElementById("firstName").value;

        const lastName =
            document.getElementById("lastName").value;

        const email =
            document.getElementById("email").value;


        if (!firstName || !lastName || !email) {

            alert(
                "PLEASE COMPLETE THE REQUIRED " +
                "PASSENGER INFORMATION."
            );

            return;

        }


        alert(
            "PASSENGER INFORMATION SAVED SUCCESSFULLY!\n\n" +
            "PLEASE COMPLETE YOUR PAYMENT."
        );


        document.getElementById("payment")
            .scrollIntoView({
                behavior: "smooth"
            });

    }


    /* =========================
       PAYMENT SELECTION
    ========================== */

    function selectPayment(method) {


        document.getElementById("cardPayment")
            .style.display = "none";


        document.getElementById("bankPayment")
            .style.display = "none";


        document.getElementById("mobilePayment")
            .style.display = "none";


        if (method === "card") {

            document.getElementById("cardPayment")
                .style.display = "grid";

        }


        if (method === "bank") {

            document.getElementById("bankPayment")
                .style.display = "grid";

        }


        if (method === "mobile") {

            document.getElementById("mobilePayment")
                .style.display = "grid";

        }

    }


    /* =========================
       PROCESS PAYMENT
    ========================== */

    function processPayment() {


        const reference =

            "SCA-" +

            Math.random()
                .toString(36)
                .substring(2, 8)
                .toUpperCase();


        document.getElementById("bookingReference")
            .innerText = reference;


        document.getElementById("confirmation")
            .style.display = "block";


        document.getElementById("confirmation")
            .scrollIntoView({
                behavior: "smooth"
            });

    }

</script>


</body>

</html>
```

