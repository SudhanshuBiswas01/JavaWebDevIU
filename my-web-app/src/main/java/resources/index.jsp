
<%
	if(session.getAttribute("name")==null){
		response.sendRedirect("login.jsp");
	}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Accommodations Reservation System</title>
    <link rel="stylesheet" href="style.css">
    <!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
 
<link href="css/index-styles.css" rel="stylesheet" />
</head>
<body>
    <nav
		class="navbar navbar-expand-lg bg-danger text-uppercase fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="#page-top">accommodation Reservation System</a>
			<button
				class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#Accommodations">Home</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#Accommodations">Accommodations</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#about">About</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#contact">Contact</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="logout">Logout</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="logout">Welcome </br> <%= session.getAttribute("name") %></a></li>
					
				</ul>
			</div>
		</div>
	</nav>
    <!--
    <nav class="navbar">
        <div class="container">̣̣
            <a href="#" class="brand">Accommodations Reservation System</a>
            <ul class="nav-links">
                <li><a href="#">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Accommodations</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </div>
    </nav>
     Navigation Bar -->
    <!-- Main Content -->
    <main class="main-content" id="Accommodations">
        <div class="container">
            <h1 style="margin-top: 90px;">Welcome to the Accommodations Reservation System</h1>
            <h6 style="margin-top: 30px;">Find and book your perfect stay.</h6>
            <div class="divider-custom ">
				<div class="divider-custom-line "></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
            <!--  Accommodation Card -->
            <div class="accommodation-card">
                <a href="Luxury Beach House.jsp">
                <img src="Luxury Beach House.jpg" alt="Accommodation Image">
                <div class="accommodation-details">
                    <h2>Luxury Beach House</h2>
                    <p>Location: Miami Beach, FL</p>
                    <p>Price: $200/night</p>
                </div>
            </a>
            </div>
            <!--  
            <div class="accommodation-card">
                <a href="Berlin Penthouse Apartment.html" class="accommodation-card">
                <img src="Berlin penthouse.jpeg" alt="Accommodation Image">
                <div class="accommodation-details">
                    <h2>Berlin Penthouse Apartment</h2>
                    <p>Location: Berlin, Germany</p>
                    <p>Price: €120/night</p>
                </div>
                </a>
            </div>
            -->
            <div class="accommodation-card">
                <a href="Berlin Penthouse Apartment.html" >
                    <img src="Berlin penthouse.jpeg" alt="Accommodation Image">
                    <div class="accommodation-details">
                        <h2>Berlin Penthouse Apartment</h2>
                        <p>Location: Berlin, Germany</p>
                        <p>Price: €120/night</p>
                    </div>
                </a>
            </div>
            <div class="accommodation-card">
                <a href="Munich city.html"> 
                <img src="Munich City Center Studio.jpeg" alt="Accommodation Image">
                <div class="accommodation-details">
                    <h2>Munich City Center Studio</h2>
                    <p>Location: Munich, Germany</p>
                    <p>Price: €100/night</p>
                </div>
            </a>
            </div>
            <div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
            <div class="accommodation-card">
                <a href="frankfurt river view.html">
                <img src="Frankfurt River View Loft.jpg" alt="Accommodation Image">
                <div class="accommodation-details">
                    <h2>Frankfurt River View Loft</h2>
                    <p>Location: Frankfurt, Germany</p>
                    <p>Price: €130/night</p>
                </div>
            </a>
            </div>
            <div class="accommodation-card">
                <a href="Hamburg Harbor.html">
                <img src="Hamburg Harbor Hotel.jpg" alt="Accommodation Image">
                <div class="accommodation-details">
                    <h2>Hamburg Harbor Hotel</h2>
                    <p>Location: Hamburg, Germany</p>
                    <p>Price: €190/night</p>
                </div>
            </a>
            </div>
        
            <div class="accommodation-card">
                <a href="Cologne Cathedral.html">
                <img src="Cologne Cathedral View Apartment.jpg" alt="Cologne Cathedral View Apartment">
                <div class="accommodation-details">
                    <h2>Cologne Cathedral View Apartment</h2>
                    <p>Location: Cologne, Germany</p>
                    <p>Price: €130/night</p>
                </div>
                </a>
            </div>
            <div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
            <div class="accommodation-card">
                <a href="Heidelberg Historic.html">
            <img src="Heidelberg Historic Castle Suite.jpg" alt="Heidelberg Historic Castle Suite">
            <div class="accommodation-details">
                <h2>Heidelberg Historic Castle Suite</h2>
                <p>Location: Heidelberg, Germany</p>
                <p>Price: €160/night</p>
            </div>
        </a>
        </div>
            <div class="accommodation-card">
                <a href="Vienna Imperial.html">
                <img src="Vienna Imperial Palace Suite.jpg" alt="Vienna Imperial Palace Suite">
                <div class="accommodation-details">
                    <h2>Vienna Imperial Palace Suite</h2>
                    <p>Location: Vienna, Austria</p>
                    <p>Price: €200/night</p>
                </div>
            </a>
            </div>
            <div class="accommodation-card">
                <a href="Zurich Lakefront.html">
                <img src="Zurich Lakefront Apartment.jpg" alt="Zurich Lakefront Apartment">
                <div class="accommodation-details">
                    <h2>Zurich Lakefront Apartment</h2>
                    <p>Location: Zurich, Switzerland</p>
                    <p>Price: €220/night</p>
                </div>
            </a>
            </div>
            <div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
           
            <div class="accommodation-card">
                <a href="amsterdam.html">
                <img src="Amsterdam Canal House.jpg" alt="Amsterdam Canal House">
                <div class="accommodation-details">
                    <h2>Amsterdam Canal House</h2>
                    <p>Location: Amsterdam, Netherlands</p>
                    <p>Price: €190/night</p>
                </div>
                </a>
            </div>
            <div class="accommodation-card">
                <a href="Brussels Grand.html">
                <img src="Brussels Grand Place Loft.jpeg" alt="Brussels Grand Place Loft">
                <div class="accommodation-details">
                    <h2>Brussels Grand Place Loft</h2>
                    <p>Location: Brussels, Belgium</P>
                    <p>price: €190/night </p>
                </div>
            </a>
            </div>
            <div class="accommodation-card">
                <a href="Paris Eiffel Tower.html">
                <img src="Paris Eiffel Tower View Studio.jpg" alt="Brussels Grand Place Loft">
                <div class="accommodation-details">
                    <h2>Paris Eiffel Tower View Studio</h2>
                    <p>Location: Paris, France</P>
                    <p>price: €290/night </p>
                </div>
            </a>
            </div>
            <div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
            <div class="accommodation-card">
                <a href="Barcelona Gothic.html">
                <img src="Barcelona Gothic Quarter Apartment.jpg" alt="Brussels Grand Place Loft">
                <div class="accommodation-details">
                    <h2>Barcelona Gothic Quarter Apartment</h2>
                    <p>Location:  Barcelona, Spain</P>
                    <p>price: €190/night </p>
                </div>
            </a>
            </div>
            <div class="accommodation-card">
                <a href="Rome Colosseum.html">
                <img src="Rome Colosseum View Apartment.jpeg" alt="Brussels Grand Place Loft">
                <div class="accommodation-details">
                    <h2>Rome Colosseum View Apartment</h2>
                    <p>Location: Rome, Italy</P>
                    <p>price: €190/night </p>
                </div>
            </a>
            </div>
            <div class="accommodation-card">
                <a href="Prague Old Town.html">
                <img src="Prague Old Town Square Hotel.jpg" alt="Brussels Grand Place Loft">
                <div class="accommodation-details">
                    <h2>Prague Old Town Square Hotel</h2>
                    <p>Location: Prague, Czech Republic</P>
                    <p>price: €160/night </p>
                </div>
            </a>
            </div>
            <div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
            <div class="accommodation-card">
                <a href="Luxury Beach House.html">
                <img src="Lisbon Riverside Loft.jpg" alt="Zurich Lakefront Apartment">
                <div class="accommodation-details">
                    <h2>Lisbon Riverside Loft</h2>
                    <p>Location: Lisbon, Portugal</p>
                    <p>Price: €90/night</p>
                </div>
            </a>
            </div>
        </div>
    </main>
    <div class="divider-custom">
        <div class="divider-custom-line"></div>
        <div class="divider-custom-icon">
            <i class="fas fa-star"></i>
        </div>
        <div class="divider-custom-line"></div>
    </div>  

    <!-- About Section-->
	<section class="page-section bg-danger text-white mb-0" id="about">
		<div class="container">
			<!-- About Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-white">About</h2>
			<!-- Icon Divider-->
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- About Section Content-->
			<div class="row text-white  text-justify ">
				<div class="col-lg-4 ms-auto">
					<p class="lead">Welcome to the Accommodation Reservation System, your ultimate
                        destination for finding and booking the perfect stay across Europe. Our platform
                        is designed to connect travelers with a wide range of accommodations, from luxury 
                        penthouses in Berlin to charming lofts in Lisbon. Whether you are looking for a short
                        city break or an extended vacation, we offer a seamless booking experience with detailed
                        information on each property, including amenities, location, and pricing. Our user-friendly 
                        interface ensures that you can easily browse through various options, read reviews, and make 
                        reservations with just a few clicks.
                        </p>
				</div>
				<div class="col-lg-4 me-auto">
					<p class="lead">Our team is dedicated to providing exceptional customer support
                        and ensuring a hassle-free travel experience. We understand the
                        importance of finding the right accommodation and are committed
                        to offering a diverse selection to meet every need. Our secure and
                        efficient booking process is designed to give you peace of mind,
                        allowing you to focus on enjoying your trip. At the heart of our 
                        service is a commitment to quality and reliability, making us your
                        trusted partner in travel. Discover your next stay with the Accommodation 
                        Reservation System and experience the ease of booking with a platform built
                        with you in mind.</p>
				</div>
			</div>
		</div>
	</section>
    <section class="page-section" id="contact">
		<div class="container">
			<!-- Contact Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">Contact
				Me</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Contact Section Form-->
			<div class="row justify-content-center">
				<div class="col-lg-8 col-xl-7">
					<form id="contactForm" data-sb-form-api-token="API_TOKEN">
						<!-- Name input-->
						<div class="form-floating mb-3">
							<input class="form-control" id="name" type="text"
								placeholder="Enter your name..." data-sb-validations="required" />
							<label for="name">Full name</label>
							<div class="invalid-feedback" data-sb-feedback="name:required">A
								name is required.</div>
						</div>
						<!-- Email address input-->
						<div class="form-floating mb-3">
							<input class="form-control" id="email" type="email"
								placeholder="name@example.com"
								data-sb-validations="required,email" /> <label for="email">Email
								address</label>
							<div class="invalid-feedback" data-sb-feedback="email:required">An
								email is required.</div>
							<div class="invalid-feedback" data-sb-feedback="email:email">Email
								is not valid.</div>
						</div>
						<!-- Phone number input-->
						<div class="form-floating mb-3">
							<input class="form-control" id="phone" type="tel"
								placeholder="(123) 456-7890" data-sb-validations="required" />
							<label for="phone">Phone number</label>
							<div class="invalid-feedback" data-sb-feedback="phone:required">A
								phone number is required.</div>
						</div>
						<!-- Message input-->
						<div class="form-floating mb-3">
							<textarea class="form-control" id="message" type="text"
								placeholder="Enter your message here..." style="height: 10rem"
								data-sb-validations="required"></textarea>
							<label for="message">Message</label>
							<div class="invalid-feedback" data-sb-feedback="message:required">A
								message is required.</div>
						</div>
						<!-- Submit success message-->
						<!---->
						<!-- This is what your users will see when the form-->
						<!-- has successfully submitted-->
						<div class="d-none" id="submitSuccessMessage">
							<div class="text-center mb-3">
								<div class="fw-bolder">Form submission successful!</div>
								To activate this form, sign up at <br /> <a
									href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
							</div>
						</div>
						<!-- Submit error message-->
						<!---->
						<!-- This is what your users will see when there is-->
						<!-- an error submitting the form-->
						<div class="d-none" id="submitErrorMessage">
							<div class="text-center text-danger mb-3">Error sending
								message!</div>
						</div>
						<!-- Submit Button-->
						<button class="btn btn-primary btn-xl disabled" id="submitButton"
							type="submit">Send</button>
					</form>
				</div>
			</div>
		</div>
	</section>
    <!-- Footer -->
    <footer class="footer text-center bg-danger" >
		<div class="container">
			<div class="row">
				<!-- Footer Location-->
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Created By <br /> <br /> Sudhanshu Biswas</h4>
					<!--<p class="lead mb-0">
						2215 John Daniel Drive <br /> Clark, MO 65243
					</p>
                     Footer Location-->
				</div>
				<!-- Footer Social Icons-->
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">My Socials</h4>
					<a class="btn btn-outline-light btn-social mx-1" href="https://www.facebook.com/international.iu/"><i
						class="fab fa-fw fa-facebook-f"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="https://www.facebook.com/international.iu/"><i
						class="fab fa-fw fa-twitter"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="https://www.linkedin.com/in/sudhanshu-biswas-26b668268/"><i
						class="fab fa-fw fa-linkedin-in"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="https://www.instagram.com/sudhanshu._.op_/"><i
						class="fab fa-fw fa-instagram"></i></a>
				</div>
				<!-- Footer About Text-->
				<div class="col-lg-4">
					<h4 class="text-uppercase mb-4">For IUBH </h4>
					<p class="lead mb-0">
						2nd Semester Subject: Java and Web Developement 
					</p>
				</div>
			</div>
		</div>
	</footer>
    <footer class="footer">
        <div class="container">
            <p>&copy; 2024 Accommodations Reservation System. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>
