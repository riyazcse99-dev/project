<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>MaisonCart — Boutique Store</title>

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:wght@500;600;700&display=swap"
        rel="stylesheet">

    <!-- Icons -->
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <style>

        /* =====================================================
           GLOBAL
        ===================================================== */

        :root {
            --cream: #f8f3eb;
            --cream-dark: #eee5d7;
            --white: #fffdf9;

            --brown: #3d3028;
            --brown-light: #705f53;

            --terracotta: #b85c38;
            --terracotta-dark: #93472c;

            --olive: #697052;
            --olive-dark: #4f563d;

            --gold: #c59a55;

            --border: #ded4c7;

            --shadow:
                0 12px 35px rgba(70, 48, 30, 0.09);

            --container: 1220px;
        }


        * {
            box-sizing: border-box;
        }


        html {
            scroll-behavior: smooth;
        }


        body {
            margin: 0;

            font-family: "DM Sans", sans-serif;

            color: var(--brown);

            background:
                radial-gradient(
                    circle at 10% 5%,
                    rgba(197,154,85,.12),
                    transparent 25%
                ),
                var(--cream);

            line-height: 1.5;
        }


        img {
            max-width: 100%;
        }


        a {
            color: inherit;
            text-decoration: none;
        }


        button,
        input {
            font-family: inherit;
        }


        .container {
            width: 100%;
            max-width: var(--container);

            margin: auto;

            padding: 0 25px;
        }



        /* =====================================================
           HEADER
        ===================================================== */

        header {
            position: sticky;

            top: 0;

            z-index: 100;

            background:
                rgba(248,243,235,.94);

            border-bottom:
                1px solid var(--border);

            backdrop-filter:
                blur(15px);
        }


        .header-inner {
            min-height: 78px;

            display: flex;

            align-items: center;

            justify-content: space-between;

            gap: 25px;
        }


        .brand {
            display: flex;

            align-items: center;

            gap: 12px;

            font-family:
                "Playfair Display",
                serif;

            font-size: 25px;

            font-weight: 700;

            letter-spacing: -.5px;
        }


        .brand-mark {
            width: 40px;
            height: 40px;

            display: grid;

            place-items: center;

            border-radius: 50%;

            background:
                var(--terracotta);

            color: white;

            font-family:
                "Playfair Display",
                serif;

            font-size: 18px;
        }


        .brand span {
            color: var(--terracotta);
        }


        .main-nav ul {
            display: flex;

            align-items: center;

            gap: 4px;

            list-style: none;

            padding: 0;

            margin: 0;
        }


        .main-nav a {
            display: flex;

            align-items: center;

            gap: 7px;

            padding: 10px 13px;

            border-radius: 8px;

            font-size: 14px;

            font-weight: 600;

            color: var(--brown-light);

            transition: .2s;
        }


        .main-nav a:hover {
            color: var(--terracotta);

            background:
                rgba(184,92,56,.08);
        }


        .search {
            width: 245px;

            height: 42px;

            display: flex;

            align-items: center;

            gap: 9px;

            padding: 0 13px;

            background: var(--white);

            border: 1px solid var(--border);

            border-radius: 10px;
        }


        .search input {
            width: 100%;

            border: 0;

            outline: 0;

            background: transparent;

            color: var(--brown);
        }


        .search input::placeholder {
            color: #9b8d80;
        }


        .icon-btn {
            border: 0;

            background: transparent;

            color: var(--brown);

            cursor: pointer;

            font-size: 16px;
        }


        .header-actions {
            display: flex;

            align-items: center;

            gap: 13px;
        }


        .cart {
            position: relative;

            display: flex;

            align-items: center;

            justify-content: center;

            width: 40px;
            height: 40px;

            border-radius: 50%;

            background:
                var(--brown);

            color: white;
        }


        .cart-count {
            position: absolute;

            right: -4px;
            top: -5px;

            width: 19px;
            height: 19px;

            display: grid;

            place-items: center;

            border-radius: 50%;

            background:
                var(--terracotta);

            color: white;

            font-size: 10px;

            font-weight: 700;
        }


        .mobile-toggle {
            display: none;

            border: 0;

            background: transparent;

            color: var(--brown);

            font-size: 20px;

            cursor: pointer;
        }



        /* =====================================================
           HERO
        ===================================================== */

        .hero {
            position: relative;

            min-height: 570px;

            display: flex;

            align-items: center;

            overflow: hidden;

            background:
                linear-gradient(
                    90deg,
                    rgba(53,42,34,.90) 0%,
                    rgba(53,42,34,.62) 42%,
                    rgba(53,42,34,.15) 100%
                ),
                url("https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1800&q=90")
                center/cover no-repeat;
        }


        .hero-content {
            max-width: 680px;

            color: white;
        }


        .hero-label {
            display: inline-flex;

            align-items: center;

            gap: 8px;

            padding: 7px 12px;

            margin-bottom: 18px;

            border:
                1px solid rgba(255,255,255,.3);

            border-radius: 30px;

            background:
                rgba(255,255,255,.1);

            font-size: 11px;

            font-weight: 700;

            letter-spacing: 1.5px;
        }


        .hero h1 {
            margin: 0 0 18px;

            font-family:
                "Playfair Display",
                serif;

            font-size:
                clamp(42px,6vw,72px);

            line-height: 1.04;

            letter-spacing: -2px;
        }


        .hero p {
            max-width: 580px;

            margin: 0 0 30px;

            color:
                rgba(255,255,255,.84);

            font-size: 16px;
        }


        .btn {
            display: inline-flex;

            align-items: center;

            justify-content: center;

            gap: 9px;

            padding: 13px 21px;

            border-radius: 8px;

            border: 0;

            cursor: pointer;

            font-weight: 700;

            transition: .25s;
        }


        .btn:hover {
            transform:
                translateY(-2px);
        }


        .btn-primary {
            background:
                var(--terracotta);

            color: white;

            box-shadow:
                0 9px 22px rgba(184,92,56,.28);
        }


        .btn-primary:hover {
            background:
                var(--terracotta-dark);
        }


        .btn-outline {
            margin-left: 7px;

            color: white;

            background:
                transparent;

            border:
                1px solid rgba(255,255,255,.45);
        }



        /* =====================================================
           SECTIONS
        ===================================================== */

        .section {
            padding: 78px 0;
        }


        .section-heading {
            text-align: center;

            margin-bottom: 38px;
        }


        .eyebrow {
            margin-bottom: 7px;

            color: var(--terracotta);

            font-size: 11px;

            font-weight: 800;

            letter-spacing: 2px;
        }


        .section-heading h2 {
            margin: 0;

            font-family:
                "Playfair Display",
                serif;

            font-size: 36px;

            font-weight: 600;
        }


        .section-heading p {
            margin:
                8px auto 0;

            color:
                var(--brown-light);

            max-width: 600px;
        }



        /* =====================================================
           CATEGORY CARDS
        ===================================================== */

        .categories {
            display: grid;

            grid-template-columns:
                repeat(6,1fr);

            gap: 16px;
        }


        .category-card {
            padding: 25px 12px;

            text-align: center;

            background:
                var(--white);

            border:
                1px solid var(--border);

            border-radius: 14px;

            cursor: pointer;

            transition: .25s;
        }


        .category-card:hover {
            transform:
                translateY(-6px);

            border-color:
                var(--terracotta);

            box-shadow:
                var(--shadow);
        }


        .category-icon {
            width: 57px;
            height: 57px;

            display: grid;

            place-items: center;

            margin: auto;

            border-radius: 50%;

            color: white;

            background:
                var(--olive);

            font-size: 21px;
        }


        .category-card h4 {
            margin:
                14px 0 3px;

            font-size: 14px;
        }


        .category-card p {
            margin: 0;

            color:
                var(--brown-light);

            font-size: 11px;
        }



        /* =====================================================
           PRODUCTS
        ===================================================== */

        .products {
            display: grid;

            grid-template-columns:
                repeat(4,1fr);

            gap: 22px;
        }


        .product {
            position: relative;

            overflow: hidden;

            display: flex;

            flex-direction: column;

            background:
                var(--white);

            border:
                1px solid var(--border);

            border-radius: 15px;

            transition: .3s;
        }


        .product:hover {
            transform:
                translateY(-7px);

            box-shadow:
                var(--shadow);
        }


        .product-image {
            position: relative;

            height: 245px;

            overflow: hidden;

            background:
                var(--cream-dark);
        }


        .product-image img {
            width: 100%;
            height: 100%;

            object-fit: cover;

            transition: .45s;
        }


        .product:hover .product-image img {
            transform:
                scale(1.06);
        }


        .badge {
            position: absolute;

            top: 12px;
            left: 12px;

            padding: 6px 9px;

            border-radius: 6px;

            background:
                var(--terracotta);

            color: white;

            font-size: 10px;

            font-weight: 800;
        }


        .product-body {
            padding: 17px;

            flex: 1;
        }


        .product-category {
            color:
                var(--olive);

            font-size: 10px;

            font-weight: 800;

            letter-spacing: 1px;

            text-transform: uppercase;
        }


        .product h3 {
            margin:
                6px 0 10px;

            font-family:
                "Playfair Display",
                serif;

            font-size: 19px;
        }


        .price-row {
            display: flex;

            align-items: center;

            justify-content: space-between;
        }


        .price {
            font-size: 18px;

            font-weight: 800;

            color:
                var(--brown);
        }


        .old-price {
            margin-left: 5px;

            color:
                #a79b8e;

            font-size: 12px;

            text-decoration:
                line-through;
        }


        .rating {
            color:
                var(--gold);

            font-size: 12px;
        }


        .reviews {
            color:
                #9c9083;

            font-size: 10px;
        }


        .product-footer {
            display: flex;

            gap: 8px;

            padding:
                0 14px 14px;
        }


        .add-btn {
            flex: 1;

            padding: 11px;

            border: 0;

            border-radius: 8px;

            background:
                var(--brown);

            color: white;

            font-weight: 700;

            cursor: pointer;

            transition: .2s;
        }


        .add-btn:hover {
            background:
                var(--terracotta);
        }


        .wish-btn {
            width: 43px;

            border:
                1px solid var(--border);

            border-radius: 8px;

            background:
                transparent;

            color:
                var(--brown);

            cursor: pointer;
        }


        .wish-btn:hover {
            color:
                var(--terracotta);
        }



        /* =====================================================
           FLASH SALE
        ===================================================== */

        .deal {
            display: flex;

            overflow: hidden;

            background:
                var(--white);

            border:
                1px solid var(--border);

            border-radius: 18px;

            box-shadow:
                var(--shadow);
        }


        .deal-image {
            width: 50%;

            min-height: 390px;

            object-fit: cover;
        }


        .deal-content {
            flex: 1;

            padding: 50px;
        }


        .deal-content h2 {
            margin:
                10px 0;

            font-family:
                "Playfair Display",
                serif;

            font-size: 38px;
        }


        .deal-tag {
            display: inline-block;

            padding: 6px 10px;

            border-radius: 6px;

            background:
                rgba(184,92,56,.1);

            color:
                var(--terracotta);

            font-size: 10px;

            font-weight: 800;

            letter-spacing: 1px;
        }


        .timer {
            display: flex;

            gap: 10px;

            margin: 25px 0;
        }


        .time-box {
            min-width: 72px;

            padding: 11px 8px;

            text-align: center;

            border-radius: 8px;

            background:
                var(--olive);

            color: white;
        }


        .time-number {
            font-size: 20px;

            font-weight: 800;
        }


        .time-label {
            font-size: 9px;

            opacity: .75;

            letter-spacing: 1px;
        }



        /* =====================================================
           TESTIMONIALS
        ===================================================== */

        .testimonials {
            display: grid;

            grid-template-columns:
                repeat(2,1fr);

            gap: 20px;
        }


        .testimonial {
            padding: 28px;

            background:
                var(--white);

            border:
                1px solid var(--border);

            border-radius: 15px;
        }


        .testimonial-stars {
            color:
                var(--gold);

            margin-bottom: 12px;
        }


        .testimonial-text {
            color:
                var(--brown-light);

            font-family:
                "Playfair Display",
                serif;

            font-size: 17px;

            line-height: 1.6;
        }


        .customer {
            display: flex;

            align-items: center;

            gap: 10px;

            margin-top: 20px;
        }


        .customer img {
            width: 42px;
            height: 42px;

            border-radius: 50%;

            object-fit: cover;
        }


        .customer-name {
            font-weight: 700;
        }


        .customer-type {
            color:
                #9b8d80;

            font-size: 11px;
        }



        /* =====================================================
           NEWSLETTER
        ===================================================== */

        .newsletter {
            padding: 60px 25px;

            text-align: center;

            border-radius: 18px;

            background:
                var(--olive);

            color: white;
        }


        .newsletter h2 {
            margin: 0;

            font-family:
                "Playfair Display",
                serif;

            font-size: 34px;
        }


        .newsletter p {
            color:
                rgba(255,255,255,.75);
        }


        .newsletter-form {
            display: flex;

            justify-content: center;

            gap: 8px;

            flex-wrap: wrap;

            margin-top: 22px;
        }


        .newsletter input {
            width: 310px;

            padding: 13px 15px;

            border: 0;

            outline: 0;

            border-radius: 7px;
        }


        .newsletter .btn-primary {
            background:
                var(--terracotta);
        }



        /* =====================================================
           FOOTER
        ===================================================== */

        footer {
            padding:
                55px 0 25px;

            background:
                var(--brown);

            color: white;
        }


        footer .muted {
            color:
                rgba(255,255,255,.55);
        }


        .footer-grid {
            display: flex;

            justify-content: space-between;

            gap: 50px;

            flex-wrap: wrap;
        }


        .footer-links {
            display: flex;

            gap: 70px;
        }


        .footer-links h4 {
            margin-top: 0;
        }


        .footer-links div div {
            color:
                rgba(255,255,255,.55);

            line-height: 2;
        }


        .social {
            display: flex;

            gap: 8px;

            margin-top: 15px;
        }


        .social a {
            width: 35px;
            height: 35px;

            display: grid;

            place-items: center;

            border-radius: 50%;

            background:
                rgba(255,255,255,.08);
        }


        .copyright {
            margin-top: 35px;

            padding-top: 20px;

            border-top:
                1px solid rgba(255,255,255,.1);

            text-align: center;

            color:
                rgba(255,255,255,.45);

            font-size: 12px;
        }



        /* =====================================================
           MOBILE
        ===================================================== */

        @media(max-width:1100px) {

            .categories {
                grid-template-columns:
                    repeat(3,1fr);
            }

            .products {
                grid-template-columns:
                    repeat(3,1fr);
            }

        }


        @media(max-width:900px) {

            .main-nav {
                display: none;
            }

            .mobile-toggle {
                display: block;
            }

            .search {
                width: 200px;
            }

            .products {
                grid-template-columns:
                    repeat(2,1fr);
            }

            .deal-image {
                width: 42%;
            }

        }


        @media(max-width:650px) {

            .header-inner {
                min-height: 68px;
            }

            .search {
                display: none;
            }

            .hero {
                min-height: 550px;
            }

            .hero h1 {
                font-size: 43px;
            }

            .categories,
            .products,
            .testimonials {
                grid-template-columns: 1fr;
            }

            .deal {
                flex-direction: column;
            }

            .deal-image {
                width: 100%;

                min-height: 250px;
            }

            .deal-content {
                padding: 30px;
            }

            .deal-content h2 {
                font-size: 30px;
            }

            .timer {
                flex-wrap: wrap;
            }

            .footer-links {
                gap: 35px;
            }

        }

    </style>
</head>


<body>


<!-- =========================================================
     HEADER
========================================================= -->

<header>

    <div class="container header-inner">

        <div style="
            display:flex;
            align-items:center;
            gap:15px;">

            <button
                class="mobile-toggle"
                id="mobileToggle">

                <i class="fas fa-bars"></i>

            </button>


            <a class="brand" href="#">

                <div class="brand-mark">
                    M
                </div>

                Maison<span>Cart</span>

            </a>

        </div>


        <nav class="main-nav">

            <ul>

                <li>
                    <a href="#">
                        <i class="fas fa-house"></i>
                        Home
                    </a>
                </li>

                <li>
                    <a href="#categories">
                        <i class="fas fa-grid-2"></i>
                        Categories
                    </a>
                </li>

                <li>
                    <a href="#products">
                        <i class="fas fa-sparkles"></i>
                        New Arrivals
                    </a>
                </li>

                <li>
                    <a href="#deals">
                        <i class="fas fa-tag"></i>
                        Offers
                    </a>
                </li>

                <li>
                    <a href="#about">
                        About
                    </a>
                </li>

            </ul>

        </nav>


        <div style="
            display:flex;
            align-items:center;
            gap:13px;">

            <div class="search">

                <i
                    class="fas fa-search"
                    style="color:#978a7d;">
                </i>

                <input
                    type="search"
                    id="searchInput"
                    placeholder="Search the collection...">

                <button
                    class="icon-btn"
                    id="searchBtn">

                    <i class="fas fa-arrow-right"></i>

                </button>

            </div>


            <div class="header-actions">

                <a
                    class="icon-btn"
                    href="#"
                    title="Account">

                    <i class="far fa-user"></i>

                </a>


                <a
                    class="icon-btn"
                    href="#"
                    title="Wishlist">

                    <i class="far fa-heart"></i>

                </a>


                <a
                    class="cart"
                    href="#"
                    id="cartBtn">

                    <i class="fas fa-bag-shopping"></i>

                    <span
                        class="cart-count"
                        id="cartCount">
                        0
                    </span>

                </a>

            </div>

        </div>

    </div>


    <!-- MOBILE MENU -->

    <div
        id="mobileMenu"
        style="
        display:none;
        background:var(--white);
        border-top:1px solid var(--border);">

        <div
            class="container"
            style="padding:15px 25px;">

            <nav>

                <a
                    href="#"
                    style="
                    display:block;
                    padding:11px 0;">
                    Home
                </a>

                <a
                    href="#categories"
                    style="
                    display:block;
                    padding:11px 0;">
                    Categories
                </a>

                <a
                    href="#products"
                    style="
                    display:block;
                    padding:11px 0;">
                    New Arrivals
                </a>

                <a
                    href="#deals"
                    style="
                    display:block;
                    padding:11px 0;">
                    Offers
                </a>

            </nav>

        </div>

    </div>

</header>



<!-- =========================================================
     MAIN
========================================================= -->

<main>


<!-- HERO -->

<section class="hero">

    <div class="container">

        <div class="hero-content">

            <div class="hero-label">

                <i class="fas fa-leaf"></i>

                THE AUTUMN EDIT — 2026

            </div>


            <h1>
                Timeless pieces.
                Modern living.
            </h1>


            <p>
                Discover thoughtfully selected fashion,
                technology and everyday essentials —
                beautifully curated for your lifestyle.
            </p>


            <button
                class="btn btn-primary"
                id="shopNow">

                Explore Collection

                <i class="fas fa-arrow-right"></i>

            </button>


            <button
                class="btn btn-outline"
                id="exploreDeals">

                View Offers

            </button>

        </div>

    </div>

</section>



<!-- CATEGORIES -->

<section
    class="section container"
    id="categories">

    <div class="section-heading">

        <div class="eyebrow">
            SHOP YOUR WAY
        </div>

        <h2>
            Explore Categories
        </h2>

        <p>
            Curated collections for every part of your day.
        </p>

    </div>


    <div
        class="categories"
        id="categoriesGrid">
    </div>

</section>



<!-- PRODUCTS -->

<section
    class="section container"
    id="products">

    <div class="section-heading">

        <div class="eyebrow">
            NEW & NOTEWORTHY
        </div>

        <h2>
            Latest Arrivals
        </h2>

        <p>
            Discover pieces selected for their quality,
            design and everyday appeal.
        </p>

    </div>


    <div
        class="products"
        id="productsGrid">
    </div>

</section>



<!-- FLASH DEAL -->

<section
    class="section container"
    id="deals">

    <div class="section-heading">

        <div class="eyebrow">
            SPECIAL OFFER
        </div>

        <h2>
            Today's Featured Deal
        </h2>

    </div>


    <div class="deal">

        <img
            class="deal-image"
            src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=1200&q=90"
            alt="Featured sneaker">


        <div class="deal-content">

            <span class="deal-tag">
                LIMITED EDITION
            </span>


            <h2>
                New Balance
                Lifestyle Sneakers
            </h2>


            <p style="
                color:var(--brown-light);
                max-width:500px;">

                Designed for everyday comfort with
                a timeless silhouette and premium finish.

            </p>


            <div class="timer">

                <div class="time-box">

                    <div
                        class="time-number"
                        id="dealDays">
                        0
                    </div>

                    <div class="time-label">
                        DAYS
                    </div>

                </div>


                <div class="time-box">

                    <div
                        class="time-number"
                        id="dealHours">
                        00
                    </div>

                    <div class="time-label">
                        HOURS
                    </div>

                </div>


                <div class="time-box">

                    <div
                        class="time-number"
                        id="dealMinutes">
                        00
                    </div>

                    <div class="time-label">
                        MINUTES
                    </div>

                </div>


                <div class="time-box">

                    <div
                        class="time-number"
                        id="dealSeconds">
                        00
                    </div>

                    <div class="time-label">
                        SECONDS
                    </div>

                </div>

            </div>


            <div style="
                display:flex;
                align-items:center;
                gap:12px;
                margin-bottom:18px;">

                <span
                    style="
                    font-size:28px;
                    font-weight:800;">
                    $129
                </span>

                <span
                    class="old-price"
                    style="font-size:15px;">
                    $179
                </span>

                <span
                    style="
                    padding:5px 8px;
                    border-radius:5px;
                    background:var(--terracotta);
                    color:white;
                    font-size:10px;
                    font-weight:800;">
                    SAVE 28%
                </span>

            </div>


            <button
                class="btn btn-primary"
                id="buyDeal">

                Add to Cart

                <i class="fas fa-bag-shopping"></i>

            </button>

        </div>

    </div>

</section>



<!-- TESTIMONIALS -->

<section class="section container">

    <div class="section-heading">

        <div class="eyebrow">
            FROM OUR CUSTOMERS
        </div>

        <h2>
            Loved by shoppers
        </h2>

    </div>


    <div
        class="testimonials"
        id="testimonials">


        <div class="testimonial">

            <div class="testimonial-stars">
                ★★★★★
            </div>


            <div class="testimonial-text">

                "Beautiful products and the quality
                is even better than the pictures.
                My order arrived beautifully packed."

            </div>


            <div class="customer">

                <img
                    src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80"
                    alt="Customer">


                <div>

                    <div class="customer-name">
                        Sophia Williams
                    </div>

                    <div class="customer-type">
                        Verified customer
                    </div>

                </div>

            </div>

        </div>



        <div class="testimonial">

            <div class="testimonial-stars">
                ★★★★★
            </div>


            <div class="testimonial-text">

                "The website is easy to use and
                everything I ordered felt premium.
                Definitely coming back."

            </div>


            <div class="customer">

                <img
                    src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80"
                    alt="Customer">


                <div>

                    <div class="customer-name">
                        Daniel Carter
                    </div>

                    <div class="customer-type">
                        Returning customer
                    </div>

                </div>

            </div>

        </div>

    </div>

</section>



<!-- NEWSLETTER -->

<section class="section container">

    <div class="newsletter">

        <div class="eyebrow"
            style="color:#dfc184;">
            MAISON INSIDER
        </div>


        <h2>
            A little something
            special in your inbox.
        </h2>


        <p>
            Get first access to new collections,
            private offers and seasonal edits.
        </p>


        <form
            class="newsletter-form"
            id="newsletterForm"
            onsubmit="return false;">

            <input
                id="newsletterEmail"
                type="email"
                placeholder="Your email address"
                required>


            <button
                class="btn btn-primary"
                id="subscribeBtn">

                Subscribe

            </button>

        </form>


        <div
            id="newsletterMsg"
            style="
            margin-top:10px;
            font-size:13px;
            display:none;">
        </div>

    </div>

</section>

</main>



<!-- =========================================================
     FOOTER
========================================================= -->

<footer id="about">

    <div class="container">

        <div class="footer-grid">


            <div style="max-width:370px;">

                <div
                    class="brand"
                    style="color:white;">

                    <div class="brand-mark">
                        M
                    </div>

                    Maison<span>Cart</span>

                </div>


                <p class="muted">

                    A thoughtfully curated online
                    boutique for modern living.

                </p>


                <div class="social">

                    <a href="#">
                        <i class="fab fa-instagram"></i>
                    </a>

                    <a href="#">
                        <i class="fab fa-facebook-f"></i>
                    </a>

                    <a href="#">
                        <i class="fab fa-pinterest-p"></i>
                    </a>

                </div>

            </div>


            <div class="footer-links">

                <div>

                    <h4>
                        Company
                    </h4>

                    <div>
                        About<br>
                        Our Story<br>
                        Careers
                    </div>

                </div>


                <div>

                    <h4>
                        Customer Care
                    </h4>

                    <div>
                        Contact<br>
                        Shipping<br>
                        Returns
                    </div>

                </div>


                <div>

                    <h4>
                        Legal
                    </h4>

                    <div>
                        Privacy<br>
                        Terms<br>
                        Cookies
                    </div>

                </div>

            </div>

        </div>


        <div class="copyright">

            © <span id="year"></span>
            MaisonCart. All rights reserved.

        </div>

    </div>

</footer>



<script>

/* =========================================================
   DATA
========================================================= */

const CATEGORIES = [

    {
        id: "fashion",
        name: "Fashion",
        icon: "fa-shirt"
    },

    {
        id: "beauty",
        name: "Beauty",
        icon: "fa-wand-magic-sparkles"
    },

    {
        id: "technology",
        name: "Technology",
        icon: "fa-laptop"
    },

    {
        id: "footwear",
        name: "Footwear",
        icon: "fa-shoe-prints"
    },

    {
        id: "accessories",
        name: "Accessories",
        icon: "fa-gem"
    },

    {
        id: "home",
        name: "Home",
        icon: "fa-couch"
    }

];


const PRODUCTS = [

    {
        id: 1,

        title:
            "Linen Oversized Shirt",

        price: 79,

        oldPrice: 99,

        rating: 5,

        reviews: 142,

        badge:
            "NEW",

        img:
            "https://images.unsplash.com/photo-1596755389378-c31d21fd1273?auto=format&fit=crop&w=700&q=90",

        category:
            "fashion"
    },


    {
        id: 2,

        title:
            "Minimal Leather Bag",

        price: 149,

        oldPrice: 189,

        rating: 5,

        reviews: 98,

        badge:
            "BESTSELLER",

        img:
            "https://images.unsplash.com/photo-1548036328-c9fa89d128fa?auto=format&fit=crop&w=700&q=90",

        category:
            "accessories"
    },


    {
        id: 3,

        title:
            "Ceramic Table Lamp",

        price: 89,

        rating: 4,

        reviews: 76,

        img:
            "https://images.unsplash.com/photo-1507473885765-e6ed057f782c?auto=format&fit=crop&w=700&q=90",

        category:
            "home"
    },


    {
        id: 4,

        title:
            "Classic White Sneakers",

        price: 119,

        oldPrice: 149,

        rating: 5,

        reviews: 215,

        badge:
            "-20%",

        img:
            "https://images.unsplash.com/photo-1495555961986-6d4c1ecb7be3?auto=format&fit=crop&w=700&q=90",

        category:
            "footwear"
    },


    {
        id: 5,

        title:
            "Wireless Headphones",

        price: 199,

        rating: 4,

        reviews: 87,

        img:
            "https://images.unsplash.com/photo-1546435770-a3e426bf472b?auto=format&fit=crop&w=700&q=90",

        category:
            "technology"
    },


    {
        id: 6,

        title:
            "Luxury Perfume",

        price: 110,

        oldPrice: 135,

        rating: 5,

        reviews: 164,

        badge:
            "POPULAR",

        img:
            "https://images.unsplash.com/photo-1594035910387-fea47794261f?auto=format&fit=crop&w=700&q=90",

        category:
            "beauty"
    },


    {
        id: 7,

        title:
            "Minimal Wrist Watch",

        price: 129,

        rating: 5,

        reviews: 105,

        img:
            "https://images.unsplash.com/photo-1524805444758-089113d48a6d?auto=format&fit=crop&w=700&q=90",

        category:
            "accessories"
    },


    {
        id: 8,

        title:
            "Soft Lounge Chair",

        price: 349,

        rating: 4,

        reviews: 48,

        img:
            "https://images.unsplash.com/photo-1555041469-a586c61ea9bc?auto=format&fit=crop&w=700&q=90",

        category:
            "home"
    }

];



/* =========================================================
   ELEMENTS
========================================================= */

const categoriesGrid =
    document.getElementById(
        "categoriesGrid"
    );

const productsGrid =
    document.getElementById(
        "productsGrid"
    );

const cartCountEl =
    document.getElementById(
        "cartCount"
    );

const searchInput =
    document.getElementById(
        "searchInput"
    );


let cartCount = 0;



/* =========================================================
   CATEGORIES
========================================================= */

function renderCategories() {

    categoriesGrid.innerHTML = "";


    CATEGORIES.forEach(category => {

        const card =
            document.createElement("div");


        card.className =
            "category-card";


        card.innerHTML = `

            <div class="category-icon">

                <i class="fas ${category.icon}">
                </i>

            </div>


            <h4>
                ${category.name}
            </h4>


            <p>
                Explore collection
            </p>

        `;


        card.addEventListener(
            "click",
            () => {

                searchInput.value =
                    category.name;

                filterProducts(
                    category.name
                );


                document
                    .getElementById("products")
                    .scrollIntoView({
                        behavior:
                            "smooth"
                    });

            }
        );


        categoriesGrid.appendChild(
            card
        );

    });

}



/* =========================================================
   PRODUCTS
========================================================= */

function renderProducts(list) {

    productsGrid.innerHTML = "";


    if (list.length === 0) {

        productsGrid.innerHTML = `

            <div style="
                grid-column:1/-1;
                text-align:center;
                padding:60px;
                background:var(--white);
                border-radius:15px;
                border:1px solid var(--border);">

                <i
                    class="fas fa-magnifying-glass"
                    style="
                    font-size:35px;
                    color:var(--terracotta);">
                </i>

                <h3>
                    No products found
                </h3>

                <p style="
                    color:var(--brown-light);">
                    Try another search.
                </p>

            </div>

        `;

        return;
    }


    list.forEach(product => {

        const card =
            document.createElement(
                "article"
            );


        card.className =
            "product";


        card.innerHTML = `

            <div class="product-image">

                ${
                    product.badge
                    ?
                    `
                    <div class="badge">
                        ${product.badge}
                    </div>
                    `
                    :
                    ""
                }


                <img
                    src="${product.img}"
                    alt="${escapeHtml(product.title)}">

            </div>


            <div class="product-body">

                <div class="product-category">
                    ${product.category}
                </div>


                <h3>
                    ${escapeHtml(
                        product.title
                    )}
                </h3>


                <div class="price-row">

                    <div>

                        <span class="price">
                            $${product.price}
                        </span>


                        ${
                            product.oldPrice
                            ?
                            `
                            <span class="old-price">
                                $${product.oldPrice}
                            </span>
                            `
                            :
                            ""
                        }

                    </div>


                    <div class="rating">

                        ${"★".repeat(
                            product.rating
                        )}

                        <span class="reviews">
                            (${product.reviews})
                        </span>

                    </div>

                </div>

            </div>


            <div class="product-footer">

                <button
                    class="add-btn"
                    data-id="${product.id}">

                    <i
                        class="fas fa-plus">
                    </i>

                    Add to Cart

                </button>


                <button
                    class="wish-btn"
                    aria-label="Wishlist">

                    <i
                        class="far fa-heart">
                    </i>

                </button>

            </div>

        `;


        productsGrid.appendChild(card);

    });


    productsGrid
        .querySelectorAll(".add-btn")
        .forEach(button => {

            button.addEventListener(
                "click",
                () => {

                    addToCart(
                        Number(
                            button.dataset.id
                        )
                    );

                }
            );

        });

}



/* =========================================================
   ESCAPE HTML
========================================================= */

function escapeHtml(text) {

    return String(text)
        .replace(
            /[&<>"']/g,
            character => ({

                "&": "&amp;",
                "<": "&lt;",
                ">": "&gt;",
                '"': "&quot;",
                "'": "&#39;"

            }[character])
        );

}



/* =========================================================
   CART
========================================================= */

function addToCart(productId) {

    const product =
        PRODUCTS.find(
            item =>
                item.id === productId
        );


    if (!product)
        return;


    cartCount++;


    cartCountEl.textContent =
        cartCount;


    const button =
        document.querySelector(
            `.add-btn[data-id="${productId}"]`
        );


    if (button) {

        const original =
            button.innerHTML;


        button.innerHTML =
            `<i class="fas fa-check"></i>
             Added`;


        button.disabled = true;


        setTimeout(
            () => {

                button.innerHTML =
                    original;

                button.disabled =
                    false;

            },
            1200
        );

    }

}



/* =========================================================
   SEARCH
========================================================= */

function filterProducts(query) {

    const q =
        String(query || "")
            .trim()
            .toLowerCase();


    if (!q) {

        renderProducts(
            PRODUCTS
        );

        return;
    }


    const filtered =
        PRODUCTS.filter(
            product =>

                product.title
                    .toLowerCase()
                    .includes(q)

                ||

                product.category
                    .toLowerCase()
                    .includes(q)

        );


    renderProducts(
        filtered
    );

}


document
    .getElementById("searchBtn")
    .addEventListener(
        "click",
        () => {

            filterProducts(
                searchInput.value
            );

        }
    );


searchInput.addEventListener(
    "keydown",
    event => {

        if (
            event.key === "Enter"
        ) {

            filterProducts(
                event.target.value
            );

        }

    }
);



/* =========================================================
   MOBILE MENU
========================================================= */

const mobileToggle =
    document.getElementById(
        "mobileToggle"
    );

const mobileMenu =
    document.getElementById(
        "mobileMenu"
    );


mobileToggle.addEventListener(
    "click",
    () => {

        mobileMenu.style.display =
            mobileMenu.style.display ===
            "block"
            ?
            "none"
            :
            "block";

    }
);



/* =========================================================
   NEWSLETTER
========================================================= */

document
    .getElementById(
        "newsletterForm"
    )
    .addEventListener(
        "submit",
        event => {

            event.preventDefault();


            const email =
                document
                    .getElementById(
                        "newsletterEmail"
                    )
                    .value
                    .trim();


            const message =
                document.getElementById(
                    "newsletterMsg"
                );


            message.style.display =
                "block";


            if (
                !email ||
                !email.includes("@")
            ) {

                message.style.color =
                    "#ffd0c4";

                message.textContent =
                    "Please enter a valid email address.";

                return;
            }


            message.style.color =
                "#e2f0c7";


            message.textContent =
                "✓ You're on the list. Welcome to MaisonCart!";


            document
                .getElementById(
                    "newsletterEmail"
                )
                .value = "";


            setTimeout(
                () => {

                    message.style.display =
                        "none";

                },
                3000
            );

        }
    );



/* =========================================================
   COUNTDOWN
========================================================= */

(function setupTimer() {

    const now =
        new Date();


    const target =
        new Date(
            now.getTime()
            +
            (
                24 * 60 + 36
            )
            *
            60
            *
            1000
        );


    function tick() {

        const difference =
            target -
            new Date();


        const days =
            Math.floor(
                difference /
                (
                    24 *
                    3600 *
                    1000
                )
            );


        const hours =
            Math.floor(
                (
                    difference %
                    (
                        24 *
                        3600 *
                        1000
                    )
                )
                /
                (
                    3600 *
                    1000
                )
            );


        const minutes =
            Math.floor(
                (
                    difference %
                    (
                        3600 *
                        1000
                    )
                )
                /
                (
                    60 *
                    1000
                )
            );


        const seconds =
            Math.floor(
                (
                    difference %
                    (
                        60 *
                        1000
                    )
                )
                /
                1000
            );


        document.getElementById(
            "dealDays"
        ).textContent =
            days;


        document.getElementById(
            "dealHours"
        ).textContent =
            String(hours)
                .padStart(2,"0");


        document.getElementById(
            "dealMinutes"
        ).textContent =
            String(minutes)
                .padStart(2,"0");


        document.getElementById(
            "dealSeconds"
        ).textContent =
            String(seconds)
                .padStart(2,"0");


        if (
            difference <= 0
        ) {

            clearInterval(
                timer
            );

        }

    }


    tick();


    const timer =
        setInterval(
            tick,
            1000
        );

})();



/* =========================================================
   HERO BUTTONS
========================================================= */

document
    .getElementById("shopNow")
    .addEventListener(
        "click",
        () => {

            document
                .getElementById(
                    "products"
                )
                .scrollIntoView({
                    behavior:
                        "smooth"
                });

        }
    );


document
    .getElementById(
        "exploreDeals"
    )
    .addEventListener(
        "click",
        () => {

            document
                .getElementById(
                    "deals"
                )
                .scrollIntoView({
                    behavior:
                        "smooth"
                });

        }
    );



/* =========================================================
   DEAL BUTTON
========================================================= */

document
    .getElementById(
        "buyDeal"
    )
    .addEventListener(
        "click",
        () => {

            cartCount++;


            cartCountEl.textContent =
                cartCount;


            alert(
                "Featured deal added to cart!"
            );

        }
    );



/* =========================================================
   INITIALIZE
========================================================= */

(function init() {

    renderCategories();

    renderProducts(
        PRODUCTS
    );

    cartCountEl.textContent =
        cartCount;

    document.getElementById(
        "year"
    ).textContent =
        new Date()
            .getFullYear();

})();

</script>

</body>
</html>
