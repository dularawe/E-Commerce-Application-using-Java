<%-- 
    Document   : shop
    Created on : May 1, 2024, 10:59:19 PM
    Author     : Chathushka
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="">
       <jsp:include page="header.jsp" />
    <body>
        <jsp:include page="navbar.jsp" />
           <jsp:include page="connection.jsp" />
        <div class="main-slider-one slider-area">
			<div id="wrapper">
				<div class="slider-wrapper">
					<div id="mainSlider" class="nivoSlider">
						<img src="img/slider/home1/1.jpg" alt="main slider" title="#htmlcaption"/>
						<img src="img/slider/home1/2.jpg" alt="main slider" title="#htmlcaption2"/>
					</div>
					<div id="htmlcaption" class="nivo-html-caption slider-caption">
						<div class="container">
							<div class="slider-left slider-right">
								<div class="slide-text animated bounceInRight">
									<h3 class="bounceInDown">new collection</h3>
									<h1>Gems Collection 2021</h1>
									<span>Starting at $65.00. Don’t miss out!</span>
								</div>
								<div class="one-p animated bounceInLeft">
									<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum".</p>
								</div>
								<div class="animated slider-btn fadeInUpBig">
									<a class="shop-btn" href="single-product.html">Shop now</a>
								</div>
							</div>
						</div>
					</div>
					<div id="htmlcaption2" class="nivo-html-caption slider-caption">
						<div class="container">
							<div class="slider-left slider-right">
								<div class="slide-text animated bounceInRight">
									<h3>new collection</h3>
									<h1>Sri Lankan Gems 2021</h1>
									<span>Starting at $65.00. Don’t miss out!</span>
								</div>
								<div class="one-p animated bounceInLeft">
									<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum".</p>
								</div>
								<div class="animated slider-btn fadeInUpBig">
									<a class="shop-btn" href="single-product.html">Shop now</a>
								</div>
							</div>
						</div>
					</div>
				</div>							
			</div>
		</div>
		<!-- slider section end -->
        <!-- collection section start -->
		
		<!-- collection section end -->
<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    try {
        String url = "jdbc:mysql://localhost:3306/ecommerce";
        String query = "SELECT * FROM products LIMIT 20";
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection(url, "root", "");
        st = con.createStatement();
        rs = st.executeQuery(query);
%>
<section class="single-products section-padding extra-padding-bottom">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="section-title text-center">
                    <h2>Featured Products</h2>
                </div>
            </div>
        </div>
        <div class="wrapper">
            <ul class="load-list load-list-one">
                <li>
                    <div class="row text-center">
                        <% while(rs.next()) { %>
                        <div class="col-md-6 col-lg-3" style="margin-bottom:  10px">
                            <div class="single-product">
                                <div class="product-img">
                                    <div class="pro-type">
                                        <span>new</span>
                                    </div>
                                     <a href="product-details.jsp?id=<%= rs.getString("ProductID") %>"><img src="img/products/<%=rs.getString("ProductImage")%>" alt="Product Title" /></a>
                                    <div class="actions-btn">
                                        <a href="#" data-bs-toggle="modal" data-bs-target="#quick-view"><i class="mdi mdi-eye"></i></a>
                                        <a href="#"><i class="mdi mdi-heart"></i></a>
                                    </div>
                                </div>
                                <div class="product-dsc">
                                    <p><a href="product-details.jsp?id=<%= rs.getString("ProductID") %>"><%= rs.getString("ProductName") %></a></p>
                                    <span>$<%= rs.getString("Price") %></span>
                                </div>
                            </div>
                        </div>
                        <% } // end while %>
                    </div>
                </li>
            </ul>
            <button id="load-more-one">Load More</button>
        </div>
    </div>
</section>
<%
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        // Close database resources in the finally block
        try {
            if (rs != null) rs.close();
            if (st != null) st.close();
            if (con != null) con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>


<script>
document.getElementById("load-more-one").addEventListener("click", function() {
    window.location.href = "shop.jsp";
});
</script>

		<!-- tab-products section end -->
        <!-- service section start -->
		<section class="service-area section-padding">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="section-title text-center">
							<h2>Our Service</h2>
						</div>
					</div>
				</div>
				<div class="row text-center">
					<div class="col-md-4">
						<div class="service-text">
							<i class="mdi mdi-truck"></i>
							<h4>home delivery</h4>
							<p>Contrary to popular belief, Lorem Ipsum is <br /> not simply random text.</p>
						</div>
					</div>
					<div class="col-md-4">
						<div class="service-text">
							<i class="mdi mdi-lock"></i>
							<h4>PAYMENT SECURED</h4>
							<p>Contrary to popular belief, Lorem Ipsum is <br /> not simply random text.</p>
						</div>
					</div>
					<div class="col-md-4">
						<div class="service-text">
							<i class="mdi mdi-rotate-left"></i>
							<h4>30 days money back</h4>
							<p>Contrary to popular belief, Lorem Ipsum is <br /> not simply random text.</p>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- service section end -->
        <!-- blog section start -->
		<section class="latest-blog section-padding extra-padding">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="section-title text-center">
							<h2>Latest Blog</h2>
						</div>
					</div>
				</div>
				<div class="wrapper">
					<ul class="load-list load-list-blog">
						<li>
							<div class="row">
								<div class="col-md-4">
									<div class="l-blog-text">
										<div class="banner"><a href="single-blog.html"><img src="img/blog/1.jpg" alt="" /></a></div>
										<div class="s-blog-text">
											<h4><a href="single-blog.html">01.	Gem Mining in Sri Lanka</a></h4>
											<span>By : <a href="#">Rakib</a> | <a href="#">210 Like</a> | <a href="#">69 Comments</a></span>
											<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour....</p>
										</div>
										<div class="date-read clearfix">
											<a href="#"><i class="mdi mdi-clock"></i> jun 25, 2021</a>
											<a href="single-blog.html">read more</a>
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="l-blog-text">
										<div class="banner"><a href="single-blog.html"><img src="img/blog/2.jpg" alt="" /></a></div>
										<div class="s-blog-text">
											<h4><a href="single-blog.html">02.	Ceylon Blue Sapphires</a></h4>
											<span>By : <a href="#">Rakib</a> | <a href="#">210 Like</a> | <a href="#">69 Comments</a></span>
											<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour....</p>
										</div>
										<div class="date-read clearfix">
											<a href="#"><i class="mdi mdi-clock"></i> jun 15, 2021</a>
											<a href="single-blog.html">read more</a>
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="l-blog-text">
										<div class="banner"><a href="single-blog.html"><img src="img/blog/3.jpg" alt="" /></a></div>
										<div class="s-blog-text">
											<h4><a href="single-blog.html">03.	Color-Changing Gemstones - Precious Surprises</a></h4>
											<span>By : <a href="#">Rakib</a> | <a href="#">210 Like</a> | <a href="#">69 Comments</a></span>
											<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour....</p>
										</div>
										<div class="date-read clearfix">
											<a href="#"><i class="mdi mdi-clock"></i> jun 22, 2021</a>
											<a href="single-blog.html">read more</a>
										</div>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="row">
								<div class="col-md-4">
									<div class="l-blog-text">
										<div class="banner"><a href="single-blog.html"><img src="img/blog/3.jpg" alt="" /></a></div>
										<div class="s-blog-text">
											<h4><a href="single-blog.html">05.	Sri Lanka Gemstone </a></h4>
											<span>By : <a href="#">Rakib</a> | <a href="#">210 Like</a> | <a href="#">69 Comments</a></span>
											<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour....</p>
										</div>
										<div class="date-read clearfix">
											<a href="#"><i class="mdi mdi-clock"></i> jun 22, 2021</a>
											<a href="single-blog.html">read more</a>
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="l-blog-text">
										<div class="banner"><a href="single-blog.html"><img src="img/blog/1.jpg" alt="" /></a></div>
										<div class="s-blog-text">
											<h4><a href="single-blog.html">04.	Sri Lankan gems</a></h4>
											<span>By : <a href="#">Rakib</a> | <a href="#">210 Like</a> | <a href="#">69 Comments</a></span>
											<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour....</p>
										</div>
										<div class="date-read clearfix">
											<a href="#"><i class="mdi mdi-clock"></i> jun 25, 2021</a>
											<a href="single-blog.html">read more</a>
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="l-blog-text">
										<div class="banner"><a href="single-blog.html"><img src="img/blog/2.jpg" alt="" /></a></div>
										<div class="s-blog-text">
											<h4><a href="single-blog.html">Padparadscha</a></h4>
											<span>By : <a href="#">Rakib</a> | <a href="#">210 Like</a> | <a href="#">69 Comments</a></span>
											<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour....</p>
										</div>
										<div class="date-read clearfix">
											<a href="#"><i class="mdi mdi-clock"></i> jun 15, 2021</a>
											<a href="single-blog.html">read more</a>
										</div>
									</div>
								</div>
							</div>
						</li>
					</ul>
					<button id="load-more-blog">Load More</button>
				</div>
			</div>
		</section>
		<!-- blog section end -->
        <!-- quick view start -->
		<div class="product-details quick-view modal animated zoomInUp" id="quick-view">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="d-table">
							<div class="d-tablecell">
								<div class="modal-dialog">
									<div class="main-view modal-content">
										<div class="modal-footer" data-bs-dismiss="modal">
											<span>x</span>
										</div>
										<div class="row">
											<div class="col-md-5 col-lg-4">
												<div class="quick-image">
													<div class="single-quick-image text-center">
														<div class="list-img">
															<div class="product-img tab-content">
																<div class="simpleLens-container tab-pane fade show" id="sin-1">
																	<div class="pro-type">
																		<span>new</span>
																	</div>
																	<a class="simpleLens-image" data-lens-image="img/products/z1.jpg" href="#"><img src="img/products/z1.jpg" alt="" class="simpleLens-big-image"></a>
																</div>
																<div class="simpleLens-container tab-pane active fade show" id="sin-2">
																	<div class="pro-type sell">
																		<span>sell</span>
																	</div>
																	<a class="simpleLens-image" data-lens-image="img/products/z2.jpg" href="#"><img src="img/products/z2.jpg" alt="" class="simpleLens-big-image"></a>
																</div>
																<div class="simpleLens-container tab-pane fade show" id="sin-3">
																	<div class="pro-type">
																		<span>-15%</span>
																	</div>
																	<a class="simpleLens-image" data-lens-image="img/products/z3.jpg" href="#"><img src="img/products/z3.jpg" alt="" class="simpleLens-big-image"></a>
																</div>
																<div class="simpleLens-container tab-pane fade show" id="sin-4">
																	<div class="pro-type">
																		<span>new</span>
																	</div>
																	<a class="simpleLens-image" data-lens-image="img/products/z4.jpg" href="#"><img src="img/products/z4.jpg" alt="" class="simpleLens-big-image"></a>
																</div>
															</div>
														</div>
													</div>
													<div class="quick-thumb">
														<ul class="product-slider nav">
															<li><a data-bs-toggle="tab" href="#sin-1"> <img src="img/products/s1.jpg" alt="quick view" /> </a></li>
															<li><a class="active" data-bs-toggle="tab" href="#sin-2"> <img src="img/products/s2.jpg" alt="small image" /> </a></li>
															<li><a data-bs-toggle="tab" href="#sin-3"> <img src="img/products/s3.jpg" alt="small image" /> </a></li>
															<li><a data-bs-toggle="tab" href="#sin-4"> <img src="img/products/s4.jpg" alt="small image" /> </a></li>
														</ul>
													</div>
												</div>						
											</div>
											<div class="col-md-7 col-lg-8">
												<div class="quick-right">
													<div class="list-text">
														<h3>Gems</h3>
														<span>Summer men’s fashion</span>
														<div class="ratting floatright">
															<p>( 27 Rating )</p>
															<i class="mdi mdi-star"></i>
															<i class="mdi mdi-star"></i>
															<i class="mdi mdi-star"></i>
															<i class="mdi mdi-star-half"></i>
															<i class="mdi mdi-star-outline"></i>
														</div>
														<h5><del>$79.30</del> $69.30</h5>
														<p>There are many variations of passages of Lorem Ipsum available, but the majority have be suffered alteration in some form, by injected humour, or randomised words which donot look even slightly believable. If you are going to use a passage of Lorem Ipsum, you neede be sure there isn't anything embarrassing hidden in the middle of text. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
														<div class="all-choose">
															<div class="s-shoose">
																<h5>Color</h5>
																<div class="color-select clearfix">
																	<span></span>
																	<span class="outline"></span>
																	<span></span>
																	<span></span>
																</div>
															</div>
															<div class="s-shoose">
																<h5>size</h5>
																<div class="size-drop">
																	<div class="btn-group">
																		<button type="button" class="btn">XL</button>
																		
																			<span class=""><i class="mdi mdi-chevron-down"></i></span>
																		</button>
																		<ul class="dropdown-menu">
																			<li><a href="#">Xl</a></li>
																			<li><a href="#">SL</a></li>
																			<li><a href="#">S</a></li>
																			<li><a href="#">L</a></li>
																		</ul>
																	</div>
																</div>
															</div>
															<div class="s-shoose">
																<h5>qty</h5>
																<form action="#">
																	<div class="plus-minus">
																		<a class="dec qtybutton">-</a>
																		<input type="text" value="02" name="qtybutton" class="plus-minus-box">
																		<a class="inc qtybutton">+</a>
																	</div>
																</form>
															</div>
														</div>
														<div class="list-btn">
															<a href="#">add to cart</a>
															<a href="#">wishlist</a>
															<a href="#">zoom</a>
														</div>
														<div class="share-tag clearfix">
															<ul class="blog-share floatleft">
																<li><h5>share </h5></li>
																<li><a href="#"><i class="mdi mdi-facebook"></i></a></li>
																<li><a href="#"><i class="mdi mdi-twitter"></i></a></li>
																<li><a href="#"><i class="mdi mdi-linkedin"></i></a></li>
																<li><a href="#"><i class="mdi mdi-vimeo"></i></a></li>
																<li><a href="#"><i class="mdi mdi-dribbble"></i></a></li>
																<li><a href="#"><i class="mdi mdi-instagram"></i></a></li>
															</ul>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- quick view end -->
        <!-- footer section start -->
		<footer>

			<!-- social media section end -->
			<!-- footer-top area start -->
			<div class="footer-top section-padding">
				<div class="footer-dsc">
					<div class="container">
						<div class="row">
							<div class="col-md-6 col-lg-3">
								<div class="single-text">
									<div class="footer-title">
										<h4>Contact us</h4>
									</div>
									<div class="footer-text">
										<ul>
											<li>
												<i class="mdi mdi-map-marker"></i>
												<p>Your address goes here.</p>
												<p>Your address goes here.</p>
											</li>
											<li>
												<i class="mdi mdi-phone"></i>
												<p>+94717177517</p>
												<p>0123456789</p>
											</li>
											<li>
												<i class="mdi mdi-email"></i>
												<p>mhusair666@gmail.com</p>
												<p>demo@example.com</p>
											</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-md-3 col-lg-2 wide-mobile">
								<div class="single-text">
									<div class="footer-title">
										<h4>my account</h4>
									</div>
									<div class="footer-menu">
										<ul>
											<li><a href="login.html"><i class="mdi mdi-menu-right"></i>My Account</a></li>
											<li><a href="wishlist.html"><i class="mdi mdi-menu-right"></i>My Wishlist</a></li>
										
											<li><a href="login.html"><i class="mdi mdi-menu-right"></i>Sign In</a></li>
											<li><a href="checkout.html"><i class="mdi mdi-menu-right"></i>Check out</a></li>
											
										</ul>
									</div>
								</div>
							</div>
							<div class="col-md-3 col-lg-2 wide-mobile">
								<div class="single-text">
									<div class="footer-title">
										<h4>shipping</h4>
									</div>
									<div class="footer-menu">
										<ul>
											<li><a href="product-grid.html"><i class="mdi mdi-menu-right"></i>New Products</a></li>
											<li><a href="contact.html"><i class="mdi mdi-menu-right"></i>Contact Us</a></li>
											<li><a href="product-grid.html"><i class="mdi mdi-menu-right"></i>Shop Page</a></li>
											<li><a href="blog-style-1.html"><i class="mdi mdi-menu-right"></i>Blog</a></li>
											<li><a href="about.html"><i class="mdi mdi-menu-right"></i>About Us</a></li>
										
										</ul>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-2 r-margin-top wide-mobile">
								<div class="single-text">
									<div class="footer-title">
										<h4>Information</h4>
									</div>
									<div class="footer-menu">
										<ul>
									
											<li><a href="#"><i class="mdi mdi-menu-right"></i>Fast Delivery</a></li>
											<li><a href="#"><i class="mdi mdi-menu-right"></i>Online Shopping</a></li>
											<li><a href="#"><i class="mdi mdi-menu-right"></i>Shipping Guide</a></li>
											<li><a href="#"><i class="mdi mdi-menu-right"></i>Turm Of Use</a></li>
										
										</ul>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-3 r-margin-top wide-mobile">
								<div class="single-text">
									<div class="footer-title">
										<h4>instagram</h4>
									</div>
									<div class="clearfix instagram">
										<ul>
											<li><a href="#"><img src="img/footer/in1.png" alt="Instagram" /></a></li>
											<li><a href="#"><img src="img/footer/in2.png" alt="Instagram" /></a></li>
											<li><a href="#"><img src="img/footer/in3.png" alt="Instagram" /></a></li>
											<li><a href="#"><img src="img/footer/in4.png" alt="Instagram" /></a></li>
											<li><a href="#"><img src="img/footer/in5.png" alt="Instagram" /></a></li>
											<li><a href="#"><img src="img/footer/in6.png" alt="Instagram" /></a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- footer-top area end -->
			<!-- footer-bottom area start -->
			<div class="footer-bottom">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<p class="copy-text"> © 2021 <strong>ceylon gems</strong> Made With <i class="mdi mdi-heart" style="color: red;" aria-hidden="true"></i> By <a class="company-name" href="#">
                                <strong> helascript</strong></a>.</p>
						</div>
						<div class="col-md-6 text-center text-md-end">
							<a href="#"><img src="img/footer/payment.png" alt="" /></a>
						</div>
					</div>
				</div>
			</div>
			<!-- footer-bottom area end -->
		</footer>
        <!-- footer section end -->
        
		<!-- all js here -->
		<!-- jquery latest version -->
        <script src="js/vendor/jquery-3.6.0.min.js"></script>
        <script src="js/vendor/jquery-migrate-3.3.2.min.js"></script>
		<!-- bootstrap js -->
        <script src="js/bootstrap.bundle.min.js"></script>
		<!-- owl.carousel js -->
        <script src="js/owl.carousel.min.js"></script>
		<!-- meanmenu js -->
        <script src="js/jquery.meanmenu.js"></script>
		<!-- countdown JS -->
        <script src="js/countdown.js"></script>
		<!-- nivo.slider JS -->
        <script src="js/jquery.nivo.slider.pack.js"></script>
		<!-- simpleLens JS -->
        <script src="js/jquery.simpleLens.min.js"></script>
		<!-- jquery-ui js -->
        <script src="js/jquery-ui.min.js"></script>
		<!-- load-more js -->
        <script src="js/load-more.js"></script>
		<!-- plugins js -->
        <script src="js/plugins.js"></script>
		<!-- main js -->
        <script src="js/main.js"></script>
    </body>
</html>
