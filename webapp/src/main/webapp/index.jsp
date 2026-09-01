```jsp
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Smart & Chuka Airways | Fly Beyond Expectations</title>

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

        /* NAVBAR */
        header {
            background: #071a3d;
            color: white;
            padding: 18px 7%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: sticky;
            top: 0;
            z-index: 1000;
            box-shadow: 0 3px 15px rgba(0,0,0,.15);
        }

        .logo {
            font-size: 24px;
            font-weight: bold;
        }

        .logo span {
            color: #f7b731;
        }

        nav a {
            color: white;
            text-decoration: none;
            margin-left: 25px;
            font-weight: 500;
        }

        nav a:hover {
            color: #f7b731;
        }

        .btn {
            background: #f7b731;
            color: #071a3d;
            border: none;
            padding: 13px 22px;
            border-radius: 7px;
            cursor: pointer;
            font-weight: bold;
        }

        .btn:hover {
            background: #ffd66b;
        }

        /* HERO */
        .hero {
            min-height: 620px;
            background:
                linear-gradient(rgba(4,18,46,.70), rgba(4,18,46,.72)),
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
            color: #f7b731;
        }

        .hero p {
            font-size: 20px;
            line-height: 1.6;
            margin-bottom: 30px;
        }

        /* SEARCH BOX */
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
            box-shadow: 0 10px 40px rgba(0,0,0,.18);
        }

        .search-tabs {
            display: flex;
            gap: 25px;
            margin-bottom: 20px;
            font-weight: bold;
        }

        .search-tabs span:first-child {
            color: #0a4fa3;
            border-bottom: 3px solid #f7b731;
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

        /* GENERAL */
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

        /* DESTINATIONS */
        .destinations {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 25px;
        }

        .destination {
            background: white;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 5px 20px rgba(0,0,0,.08);
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

        /* SERVICES */
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
            box-shadow: 0 4px 15px rgba(0,0,0,.06);
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

        /* BOOKING */
        .booking {
            background: white;
        }

        .booking-container {
            max-width: 1000px;
            margin: auto;
            background: #f7f9fc;
            padding: 35px;
            border-radius: 15px;
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
        }

        .full {
            grid-column: 1 / -1;
        }

        /* PAYMENT */
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
        }

        .payment-method:hover {
            border-color: #f7b731;
        }

        .payment-form {
            display: grid;
            gap: 15px;
        }

        .payment-form input {
            padding: 14px;
            border: 1px solid #ccd3df;
            border-radius: 7px;
        }

        /* CONFIRMATION */
        .confirmation {
            display: none;
            max-width: 700px;
            margin: 30px auto;
            padding: 30px;
            background: #e9f8ef;
            border: 1px solid #9bd4ad;
            border-radius: 12px;
            text-align: center;
        }

        .confirmation h3 {
            color: #168342;
            margin-bottom: 10px;
        }

        /* FOOTER */
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
            color: #f7b731;
        }

        footer p,
        footer a {
            color: #bdc7d8;
            line-height: 2;
            text-decoration: none;
        }

        .copyright {
            border-top: 1px solid #243653;
            margin-top: 40px;
            padding-top: 20px;
            text-align: center;
            color: #9aa8bd;
        }

        /* MOBILE */
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
        }
    </style>
</head>

<body>

<!-- NAVIGATION -->
<header>
    <div class="logo">
        ✈ Smart <span>&</span> Chuka Airways
    </div>

    <nav>
        <a href="#home">Home</a>
        <a href="#destinations">Destinations</a>
        <a href="#services">Services</a>
        <a href="#booking">Book Flight</a>
        <a href="#payment">Payment</a>
    </nav>

    <button class="btn" onclick="location.href='#booking'">
        Book Now
    </button>
</header>


<!-- HERO -->
<section class="hero" id="home">
    <div class="hero-content">
        <h1>
            Fly <span>Beyond</span><br>
            Expectations
        </h1>

        <p>
            Welcome to Smart & Chuka Airways.
            Experience safe, comfortable and reliable
            journeys connecting you to the world.
        </p>

        <button class="btn" onclick="location.href='#booking'">
            Start Your Journey
        </button>
    </div>
</section>


<!-- FLIGHT SEARCH -->
<div class="search-box">

    <div class="search-tabs">
        <span>Round Trip</span>
        <span>One Way</span>
        <span>Multi-City</span>
    </div>

    <div class="search-grid">

        <div class="field">
            <label>FROM</label>
            <input type="text" placeholder="Lagos (LOS)">
        </div>

        <div class="field">
            <label>TO</label>
            <input type="text" placeholder="London (LHR)">
        </div>

        <div class="field">
            <label>DEPARTURE</label>
            <input type="date">
        </div>

        <div class="field">
            <label>PASSENGERS</label>
            <select>
                <option>1 Passenger</option>
                <option>2 Passengers</option>
                <option>3 Passengers</option>
                <option>4 Passengers</option>
            </select>
        </div>

        <button class="btn" onclick="searchFlight()">
            Search Flights
        </button>

    </div>
</div>


<!-- DESTINATIONS -->
<section id="destinations">

    <div class="section-title">
        <h2>Popular Destinations</h2>
        <p>Discover amazing places with Smart & Chuka Airways.</p>
    </div>

    <div class="destinations">

        <div class="destination">
            <img src="https://images.unsplash.com/photo-1578002570438-9d2f7a2c8e5f?auto=format&fit=crop&w=900&q=80">

            <div class="destination-content">
                <h3>🇳🇬 Lagos, Nigeria</h3>
                <p>Experience the energy and culture of Lagos.</p>
            </div>
        </div>

        <div class="destination">
            <img src="https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?auto=format&fit=crop&w=900&q=80">

            <div class="destination-content">
                <h3>🇬🇧 London, UK</h3>
                <p>Explore one of the world's greatest cities.</p>
            </div>
        </div>

        <div class="destination">
            <img src="https://images.unsplash.com/photo-1496588152823-86ff7695e68f?auto=format&fit=crop&w=900&q=80">

            <div class="destination-content">
                <h3>🇦🇪 Dubai, UAE</h3>
                <p>Luxury, adventure and unforgettable experiences.</p>
            </div>
        </div>

    </div>

</section>


<!-- SERVICES -->
<section class="services" id="services">

    <div class="section-title">
        <h2>Why Fly With Us?</h2>
        <p>Everything you need for a comfortable journey.</p>
    </div>

    <div class="service-grid">

        <div class="service">
            <div class="service-icon">✈️</div>
            <h3>Safe Flights</h3>
            <p>
                Your safety is our highest priority on every journey.
            </p>
        </div>

        <div class="service">
            <div class="service-icon">💺</div>
            <h3>Comfort</h3>
            <p>
                Enjoy comfortable seating and a pleasant flying experience.
            </p>
        </div>

        <div class="service">
            <div class="service-icon">🧳</div>
            <h3>Baggage</h3>
            <p>
                Generous baggage allowances for your travel needs.
            </p>
        </div>

        <div class="service">
            <div class="service-icon">🌍</div>
            <h3>Global Network</h3>
            <p>
                Connect to exciting destinations around the world.
            </p>
        </div>

    </div>

</section>


<!-- BOOKING -->
<section class="booking" id="booking">

    <div class="section-title">
        <h2>Book Your Flight</h2>
        <p>Complete the form below to reserve your seat.</p>
    </div>

    <div class="booking-container">

        <form id="bookingForm">

            <div class="form-grid">

                <div class="form-group">
                    <label>First Name</label>
                    <input type="text" id="firstName" required>
                </div>

                <div class="form-group">
                    <label>Last Name</label>
                    <input type="text" id="lastName" required>
                </div>

                <div class="form-group">
                    <label>Email Address</label>
                    <input type="email" id="email" required>
                </div>

                <div class="form-group">
                    <label>Phone Number</label>
                    <input type="tel" required>
                </div>

                <div class="form-group">
                    <label>Departure City</label>
                    <select required>
                        <option value="">Select City</option>
                        <option>Lagos</option>
                        <option>Abuja</option>
                        <option>Port Harcourt</option>
                        <option>London</option>
                        <option>Dubai</option>
                        <option>New York</option>
                    </select>
                </div>

                <div class="form-group">
                    <label>Destination</label>
                    <select required>
                        <option value="">Select Destination</option>
                        <option>Lagos</option>
                        <option>Abuja</option>
                        <option>London</option>
                        <option>Dubai</option>
                        <option>New York</option>
                    </select>
                </div>

                <div class="form-group">
                    <label>Departure Date</label>
                    <input type="date" required>
                </div>

                <div class="form-group">
                    <label>Travel Class</label>
                    <select>
                        <option>Economy</option>
                        <option>Premium Economy</option>
                        <option>Business Class</option>
                        <option>First Class</option>
                    </select>
                </div>

                <div class="form-group full">
                    <button type="button" class="btn" onclick="createBooking()">
                        Continue to Payment →
                    </button>
                </div>

            </div>

        </form>

    </div>

</section>


<!-- PAYMENT -->
<section class="payment" id="payment">

    <div class="section-title">
        <h2 style="color:white;">Secure Payment</h2>
        <p style="color:#c8d2e2;">
            Choose your preferred payment method.
        </p>
    </div>

    <div class="payment-container">

        <h3>Payment Method</h3>

        <div class="payment-methods">

            <div class="payment-method" onclick="selectPayment('card')">
                💳<br>
                Card
            </div>

            <div class="payment-method" onclick="selectPayment('bank')">
                🏦<br>
                Bank Transfer
            </div>

            <div class="payment-method" onclick="selectPayment('mobile')">
                📱<br>
                Mobile Payment
            </div>

        </div>

        <div id="cardPayment" class="payment-form">

            <input type="text"
                   placeholder="Cardholder Name">

            <input type="text"
                   placeholder="Card Number">

            <div style="display:grid;grid-template-columns:1fr 1fr;gap:10px;">

                <input type="text"
                       placeholder="MM/YY">

                <input type="text"
                       placeholder="CVV">

            </div>

            <button class="btn" onclick="processPayment()">
                Pay & Confirm Booking
            </button>

        </div>

        <div id="bankPayment"
             class="payment-form"
             style="display:none;">

            <p>
                <strong>Bank:</strong> Smart & Chuka Bank
            </p>

            <p>
                <strong>Account Name:</strong>
                Smart & Chuka Airways
            </p>

            <p>
                <strong>Account Number:</strong>
                0000000000
            </p>

            <button class="btn" onclick="processPayment()">
                I Have Made Payment
            </button>

        </div>

        <div id="mobilePayment"
             class="payment-form"
             style="display:none;">

            <input type="tel"
                   placeholder="Mobile Payment Number">

            <button class="btn" onclick="processPayment()">
                Continue Payment
            </button>

        </div>

    </div>


    <div class="confirmation" id="confirmation">

        <h3>✓ Booking Confirmed!</h3>

        <p>
            Thank you for choosing Smart & Chuka Airways.
        </p>

        <br>

        <p>
            Your booking reference is:
            <strong id="bookingReference"></strong>
        </p>

        <p>
            A confirmation will be sent to your email address.
        </p>

    </div>

</section>


<!-- FOOTER -->
<footer>

    <div class="footer-grid">

        <div>
            <h3>Smart & Chuka Airways</h3>

            <p>
                Connecting people, businesses and destinations
                across the world.
            </p>

            <p>
                Fly smart. Fly comfortable. Fly with us.
            </p>
        </div>

        <div>
            <h3>Company</h3>

            <p><a href="#home">About Us</a></p>
            <p><a href="#services">Our Services</a></p>
            <p><a href="#destinations">Destinations</a></p>
        </div>

        <div>
            <h3>Support</h3>

            <p><a href="#">Contact Us</a></p>
            <p><a href="#">Manage Booking</a></p>
            <p><a href="#">Baggage Information</a></p>
        </div>

        <div>
            <h3>Contact</h3>

            <p>📞 +234 800 SMART AIR</p>
            <p>✉️ info@smartchukaairways.com</p>
            <p>📍 Lagos, Nigeria</p>
        </div>

    </div>

    <div class="copyright">
        © 2026 Smart & Chuka Airways. All Rights Reserved.
    </div>

</footer>


<script>

    function searchFlight() {

        alert(
            "Searching available flights...\\n\\n" +
            "Please wait while we find the best flights for you."
        );

    }


    function createBooking() {

        const firstName =
            document.getElementById("firstName").value;

        const lastName =
            document.getElementById("lastName").value;

        const email =
            document.getElementById("email").value;

        if (!firstName || !lastName || !email) {

            alert("Please complete the required passenger information.");

            return;
        }

        alert(
            "Passenger information saved successfully!\\n\\n" +
            "Please complete your payment."
        );

        document.getElementById("payment")
            .scrollIntoView();

    }


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
            .scrollIntoView();

    }

</script>

</body>
</html>
```

