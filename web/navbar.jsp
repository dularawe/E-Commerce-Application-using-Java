<%-- 
    Document   : navbar
    Created on : May 1, 2024, 4:24:52 PM
    Author     : Chathushka
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<header class="header-one">
			<div class="container-fluid text-center">
				<div class="row">
					<div class="col-md-2">
						<div class="logo">
							<a href="index.jsp"><img src="img/logo.png" alt="Sellshop" /></a>
						</div>
					</div>
					<div class="col-md-8">
						<div class="header-middel">
							<div class="middel-top clearfix">
								<div class="left floatleft">
									<p><i class="mdi mdi-clock"></i> Mon-Fri : 09:00-19:00</p>
								</div>
								<div class="center floatleft">
									<form action="javascript:void(0)">
										<button type="submit"><i class="mdi mdi-magnify"></i></button>
										<input type="text" placeholder="Search within these results..." />
									</form>
								</div>
								<div class="right floatleft">
									<ul class="clearfix">
										<li><a href="#"><i class="mdi mdi-account"></i></a>
											<ul>
												<li><a href="login.jsp">Login</a></li>
												<li><a href="login.jsp">Registar</a></li>
												<li><a href="my-account.jsp">My account</a></li>
											</ul>
										</li>
										<li><a href="#"><i class="mdi mdi-settings"></i></a>
											<ul>
												<li><a href="my-account.jsp">My account</a></li>
												<li><a href="cart.jsp">My cart</a></li>
								
											
											</ul>
										</li>
									</ul>
								</div>
							</div>
							<div class="mainmenu">
								<nav>
									<ul>
										<li><a href="index.jsp">Home</a>
										</li>
										<li><a href="shop.jsp">Shop</a>
										</li>
										<li><a href="login.jsp">Login</a>
										</li>
										<li><a href="login.jsp">Register</a></li>
                                                                                <li><a href="logout.jsp">LogOut</a></li
									
									</ul>
								</nav>
							</div>
							<!-- mobile menu start -->
							<div class="mobile-menu-area">
								<div class="mobile-menu">
									<nav id="dropdown">
										<ul>
										<li><a href="index.jsp">Home</a>
										</li>
										<li><a href="shop.jsp">Shop</a>
										</li>
										<li><a href="login.jsp">Login</a>
										</li>
										<li><a href="login.jsp">Register</a></li>
                                                                                <li><a href="logout.jsp">LogOut</a></li
										</ul>
									</nav>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-2">
						
					</div>
				</div>
			</div>
		</header>