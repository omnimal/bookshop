<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="header.jsp" %>


        <div id="wrapper">
            <div id="body-wrapper">
                <div class="links-body">
                    <a href="/index.htm">Home</a>  »
                    <a href="/account.htm">My Account</a>  »
                    <a href="#">Login</a>
                </div>
                 <!-- side bar-->
                <aside id="column-left">
                    <div class="box">
                        <div class="box-heading">Account</div>
                        <div class="box-category">
                            <ul>
                                <li><a href="login.htm">Login</a> | <a href="register.htm">Register</a></li>
                            </ul>
                        </div>
                    </div>
                </aside>
                <section id="mainContent">
			<div id="content">
                            <h1>Account Login</h1>
                            <div class="login-content">
                              <div class="left">
                                  <h2>New Customer</h2>
                                  <div class="content">
                                    <p><b>Register Account</b></p>
                                    <p>By creating an account you will be able to shop faster, be up to date on an order's status, and keep track of the orders you have previously made.</p>
                                  <a onClick="location.href='/Shop/register.htm'" action="get" type="submit" class="button-login grey">Register</a>  
                                  </div>
                              </div>
                              <div class="right">
                              <h2>Returning Customer</h2>
                             <form name="f" action="<c:url value='j_spring_security_check' />" method="POST" onsubmit="return logvalidation()">

                              <div class="content">
                                <p>I am a returning customer</p>
                                <b>Username:</b><br>
                                <input type="text" value="" name="j_username">
                                <br>
                                <br>
                                <b>Password:</b><br>
                                <input type="password" value="" name="j_password">
                                <br>
                                <a href="contact.htm">Forgotten Password</a><br>
                                <br>
                                <label class="btn"><input type="submit" class="button" value="Login"></label>
                            </div>
                        </form>
                    </div>
           		</div>
  			</div>
  		</section>  
            </div>
        </div>
        <%@include file="footer.jsp" %>
    
