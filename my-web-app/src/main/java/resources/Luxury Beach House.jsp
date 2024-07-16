<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Luxury Beach House</title>
    <link rel="stylesheet" href="style.css">
    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
     <link href="css/index-styles.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- SweetAlert CSS 
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">-->

    <style>
        .gallery {
            display: flex;
            overflow-x: auto;
            margin-bottom: 20px;
        }
        .gallery img {
            width: 600px; /* Adjust width of each image */
            height: 400px; /* Adjust height of each image */
            object-fit: cover; /* Maintain aspect ratio and cover area */
            margin-right: 20px; /* Space between images */
        }
        .accommodation-details {
            margin-bottom: 20px;
        }
        .amenities {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
   

    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
        <div class="container">
            <a class="navbar-brand" href="#page-top">Accommodation Reservation System</a>
            <button class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                Menu <i class="fas fa-bars"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="index.jsp">Home</a></li>
                    <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="index.jsp">Accommodations</a></li>
                    <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="index.jsp">About</a></li>
                    <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="index.jsp">Contact</a></li>
                </ul>
            </div>
        </div>
    </nav>
    
    <!-- Main Content -->
    <main class="main-content">
        <div class="container">
            <h1 style="margin-top:100px; padding-bottom: 20px;">Luxury Beach House</h1>
            <div class="gallery">
                <img src="Luxury Beach House.jpg" alt="Luxury Beach House Image 1">
                <img src="LuxuryBeach2.jpg" alt="Luxury Beach House Image 2">
                <img src="LuxuryBeach3.webp" alt="Luxury Beach House Image 3">
            </div>
            <div class="accommodation-details">
                <h2>Description</h2>
                <p>Experience ultimate luxury at our stunning beach house located right on the shore. With breathtaking views of the ocean and luxurious amenities, this beach house offers the perfect retreat for families and groups.</p>
                <p>Size: 3000 sq ft</p>
                <p>Bedrooms: 4</p>
                <p>Bathrooms: 3</p>
                <p>Max Guests: 8</p>
                <p>Price per night: $1000</p>
            </div>
            <div class="amenities">
                <h2>Amenities</h2>
                <ul>
                    <li>Private beach access</li>
                    <li>Infinity pool overlooking the ocean</li>
                    <li>Spa and wellness center</li>
                    <li>Fully equipped kitchen</li>
                    <li>Outdoor dining area</li>
                    <li>Free Wi-Fi</li>
                </ul>
            </div>
        </div>
        <section class="booking">
            <h2>Book Now</h2>
            <form id="bookingForm" action="LuxuryBeach" method="post">
                <label for="checkin">Check-in:</label>
                <input type="date" id="checkin" name="checkin">
                <label for="checkout">Check-out:</label>
                <input type="date" id="checkout" name="checkout">
                <label for="guests">Guests:</label>
                <input type="number" id="guests" name="guests" min="1" max="10">
                <button type="submit" id="Book">Book Now</button>
            </form>
        </section>
    </main>
    
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
    <!-- SweetAlert JS -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <script>
            document.getElementById('Book').addEventListener('click', function(event) {
                event.preventDefault();
                Swal.fire({
                    title: "Are you sure you want to book this accommodation?",
                    text: "Click OK to confirm",
                    icon: "info",
                    showCancelButton: true,
                    closeOnConfirm: false,
                    showLoaderOnConfirm: true,
                    preConfirm: () => {
                        return new Promise((resolve) => {
                            setTimeout(() => {
                                resolve();
                                Swal.fire({
                                    title: "Accommodation Booked Successfully.",
                                    icon: "success"
                                }).then(() => {
                                    document.getElementById('bookingForm').submit();
                                });
                            }, 2000);
                        });
                    }
                });
            });
    </script>

    <footer>
        <p>&copy; 2024 Your Company Name. All rights reserved.</p>
    </footer>
</body>
</html>
