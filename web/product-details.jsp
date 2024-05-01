<%-- 
    Document   : product-details
    Created on : May 1, 2024, 5:31:17 PM
    Author     : Chathushka
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<html class="no-js" lang="">
      <jsp:include page="header.jsp" />
    <body>
       <jsp:include page="navbar.jsp" />
           <jsp:include page="connection.jsp" />
		
<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    try {
        String url = "jdbc:mysql://localhost:3306/ecommerce";
        String productId = request.getParameter("id"); 
        String query = "SELECT * FROM products WHERE ProductID = '" + productId + "'";
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection(url, "root", "");
        st = con.createStatement();
        rs = st.executeQuery(query);
        if (rs.next()) { // Check if there are any results
%>
    <div class="product-details pages section-padding-top">
        <div class="container">
            <div class="single-list-view row">
                <div class="col-md-5 col-lg-4">
                    <div class="quick-image">
                        <div class="single-quick-image text-center">
                            <div class="list-img">
                                <div class="product-img tab-content">
																<div class="simpleLens-container tab-pane fade show" id="sin-1">
																	<div class="pro-type">
																		<span>new</span>
																	</div>
																	<a class="simpleLens-image" data-lens-image="img/products/<%=rs.getString("ProductImage")%>" href="#"><img src="img/products/<%=rs.getString("ProductImage")%>" alt="" class="simpleLens-big-image"></a>
																</div>
																<div class="simpleLens-container tab-pane active fade show" id="sin-2">
																	<div class="pro-type sell">
																		<span>sell</span>
																	</div>
																	<a class="simpleLens-image" data-lens-image="img/products/<%=rs.getString("ProductImage")%>" href="#"><img src="img/products/<%=rs.getString("ProductImage")%>" alt="" class="simpleLens-big-image"></a>
																</div>
																<div class="simpleLens-container tab-pane fade show" id="sin-3">
																	<div class="pro-type">
																		<span>-15%</span>
																	</div>
																	<a class="simpleLens-image" data-lens-image="img/products/<%=rs.getString("ProductImage")%>" href="#"><img src="img/products/<%=rs.getString("ProductImage")%>" alt="" class="simpleLens-big-image"></a>
																</div>
																<div class="simpleLens-container tab-pane fade show" id="sin-4">
																	<div class="pro-type">
																		<span>new</span>
																	</div>
																	<a class="simpleLens-image" data-lens-image="img/products/<%=rs.getString("ProductImage")%>" href="#"><img src="img/products/<%=rs.getString("ProductImage")%>" alt="" class="simpleLens-big-image"></a>
																</div>
															</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-7 col-lg-8">
                    <div class="quick-right">
                        <div class="list-text">
                            <h3><%= rs.getString("ProductName") %></h3>
            
                            <h5>$<%= rs.getString("Price") %></h5>
                            <p><%= rs.getString("ProductDescription") %></p>
                            <div class="list-btn">
                               <button onclick="addToWishlist('<%= productId %>')">Add to Cart</button>
                
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
<%
        } else {
            out.println("No product found with the specified ID.");
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        try {
            if (rs != null) rs.close();
            if (st != null) st.close();
            if (con != null) con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
                                                                
		<!-- product-details section end -->
        <!-- related-products section start -->
		
		<!-- related-products section end -->
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
														<h3>gems</h3>
														<span>gems sri lanka</span>
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
																		<button type="button" class="btn dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
															<a href="cart.html">add to cart</a>
															<a href="wishlist.html">wishlist</a>
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
<script>
function addToWishlist(productId) {
    // Send an AJAX request to the server to add the product to the wishlist
    var xhr = new XMLHttpRequest();
    xhr.open("POST", "AddToWishlistServlet?productId=" + productId, true);
    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4 && xhr.status === 200) {
            // Handle the response from the server (if needed)
            alert(xhr.responseText);
        }
    };
    xhr.send();
}
</script>

				   <jsp:include page="footer.jsp" />
   <jsp:include page="scripts.jsp" />
    </body>
</html>