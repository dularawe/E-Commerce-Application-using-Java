<%-- 
    Document   : login
    Created on : Mar 27, 2024, 8:15:10 PM
    Author     : DELL
--%>

<html class="no-js" lang="">
    <jsp:include page="header.jsp" />
    <body>
        <jsp:include page="navbar.jsp" />
        <jsp:include page="connection.jsp" />

        <div class="pages-title section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="pages-title-text text-center">
                            <h2>Register</h2>
                            <ul class="text-left">
                                <li><a href="index.html">Home </a></li>
                                <li><span> // </span>Register</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- pages-title-end -->
        <!-- login content section start -->
    <section class="pages login-page section-padding">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="main-input padding60">
                        <div class="log-title">
                            <h3><strong>registered customers</strong></h3>
                        </div>
                        <div class="login-text">
                            <div class="custom-input">
                                <p>If you have an account with us, Please log in!</p>
                                <form id="loginForm" action="loginservletnew" method="post">
                                    <input type="text" name="mail" id="email" placeholder="Email" />
                                    <input type="password" name="psw" id="psw" placeholder="Password" />

                                    <div class="submit-text">
                                        <input type="submit" value="Login" style="background-color: black; color:white" >
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="main-input padding60 new-customer">
                        <div class="log-title">
                            <h3><strong>new customers</strong></h3>
                        </div>
                        <div class="custom-input">
                            <form action="register" method="POST">
                                <input type="text" name="first_name" placeholder="Name here.." />
                                <input type="text" name="last_name" placeholder="First here.." />
                                <input type="text" name="gender" placeholder="Gender" />
                                <input type="text" name="mobile" placeholder="Phone Number.." />
                                <input type="text" name="email" placeholder="Email Address.." />
                                <input type="password" name="password" placeholder="Password" />
                                 <div class="submit-text">
                                        <input type="submit" value="Register" style="background-color: black; color:white" >
                                    </div>

                        
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <jsp:include page="footer.jsp" />
    <jsp:include page="scripts.jsp" />



</body>
</html>
