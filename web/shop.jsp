<%-- 
    Document   : shop
    Created on : May 1, 2024, 10:59:19 PM
    Author     : Chathushka
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="">
    <jsp:include page="header.jsp" />
    <body>
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

        <!-- header section start -->
		  <jsp:include page="navbar.jsp" />
     <jsp:include page="connection.jsp" />
        <!-- header section end -->
        <!-- pages-title-start -->
		<div class="pages-title section-padding">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="pages-title-text text-center">
							<h2>Shop</h2>
							<ul class="text-left">
								<li><a href="index.html">Home </a></li>
								<li><span> // </span>Shop</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- pages-title-end -->
        <!-- collection section start -->
		
		<!-- collection section end -->
		<!-- product-grid-view content section start -->
		<section class="pages products-page section-padding-bottom">
			<div class="container">
				<div class="row">
				
			<div class="col-md-12 col-lg-12">
						<div class="right-products">
							<div class="row">
								<div class="col-12">
									<div class="section-title clearfix">
										<ul>
											<li>
												<ul class="nav-view nav">
													<li><a class="active" data-bs-toggle="tab" href="#grid"> <i class="mdi mdi-view-module"></i> </a></li>
													<li><a data-bs-toggle="tab" href="#list"> <i class="mdi mdi-view-list"></i> </a></li>
												</ul>
											</li>
											<li class="sort-by floatright">
												Showing 1-9 of 89 Results
											</li>
										</ul>
									</div>
								</div>
							</div>  
							<div class="row">
								<div class="tab-content grid-content">
									<div class="tab-pane fade show active text-center" id="grid">
										<div class="row">
											<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    try {
        String url = "jdbc:mysql://localhost:3306/ecommerce";
        String query = "SELECT * FROM products LIMIT 100";
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
											<!-- single product end -->
											
												</div>
											</div>
											<!-- single product end -->
										</div>
									</div>
								</div>
							</div>
							
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- product-grid-view content section end -->
        <!-- quick view start -->
		
		<!-- quick view end -->
    <jsp:include page="footer.jsp" />
<jsp:include page="scripts.jsp" />
    </body>
</html>
