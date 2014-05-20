
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="description" content="Online Book Store"/>
        
        <!--css files-->
          <link rel="stylesheet" class="theme" type="text/css" href="${pageContext.request.contextPath}/resources/css/form-style.css"/>
        <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet"/>
        
        
        <!--JS files-->
        <script src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
       <script src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/custom.js"></script>
        
        
        
        
        <script type="text/javascript">
            $(window).scroll(function () {
        if ($(this).scrollTop() > 100) {
            $('.back-to-top').fadeIn();
            } else {
            $('.back-to-top').fadeOut();
        }
    });
    $('.back-to-top').click(function(){
        $('html, body').animate({scrollTop:0}, 800);
    });
    
   
                
                
function regvalidation()
{
var t1=document.forms["register"]["name"].value;
if (t1===null || t1==="")
  {
  alert("Error: the name field must not be empty");
  return false;
  }
if (!t1.match(/^[A-z]+$/))
  {
  alert("Error: please enter only alphabetical characters");
  return false;
  }
var t2=document.forms["register"]["username"].value;
if (t2===null || t2==="")
  {
  alert("Error: the username field must not be empty");
  return false;
  }
if (!t2.match(/[a-zA-Z_][0-9a-zA-Z_]*/))
  { 
  alert("Error: the username must contain only letters, numbers and underscores");
  return false; 
  }
var t3=document.forms["register"]["email"].value;
if (t3===null || t3==="")
  {
  alert("Error: the email field must not be empty");
  return false;
  }
if (!t3.match( /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/))
  {
  alert("Error: the email must be of type example@email.com");
  return false;
  }
var t4=document.forms["register"]["password"].value;
if (t4===null || t4==="")
  {
  alert("Error: the password field must not be empty");
  return false;
  }
if(!re1.test(t4.value))
  { 
  alert("Error: the password must contain only letters, numbers and underscores");
  return false; 
  }
var t5=document.forms["register"]["phonenumber"].value;
if (t5===null || t5==="")
  {
  alert("Error: the phonenumber field must not be empty");
  return false;
  }
if (!t5.match(/^[0-9]+$/))
  {
  alert("Error: the phone number field must contain only numbers");
  return false;
  }
var t6=document.forms["register"]["address"].value;
if (t6===null || t6==="")
  {
  alert("Error: the address field must not be empty");
  return false;
  }

}


function logvalidation()
{
var t1=document.forms["f"]["j_username"].value;
if (t1===null || t1==="")
  {
  alert("The name must not be empty");
  return false;
  }
var t2=document.forms["f"]["j_password"].value;
if (t2===null || t2==="")
  {
  alert("The username must not be empty");
  return false;
  }

  }
  
  
  function convalidation()
{
var t1=document.forms["anp-contact"]["name"].value;
if (t1===null || t1==="")
  {
  alert("Your Name must not be empty");
  return false;
  }
var t2=document.forms["anp-contact"]["email"].value;
if (t2===null || t2==="")
  {
  alert("Your Email must not be empty");
  return false;
  }
var t3=document.forms["anp-contact"]["message"].value;
if (t3===null || t3==="")
  {
  alert("Your message must not be empty");
  return false;
  }
alert("We will contact you soon!");
  }
  
  
  function payvalidation()
{
var t1=document.forms["pay"]["cardnumber"].value;
if (t1===null || t1==="")
  {
  alert("The card number field must not be empty");
  return false;
  }
if (!t1.match(/^[0-9]+$/))
  {
  alert("Error: please enter numbers only");
  return false;
  }
var t2=document.forms["pay"]["secure"].value;
if (t2===null || t2==="")
  {
  alert("The security code field must not be empty");
  return false;
  }
if (!t2.match(/^[0-9]+$/))
  {
  alert("Error: please enter numbers only");
  return false;
  }
var t3=document.forms["pay"]["namecard"].value;
if (t3===null || t3==="")
  {
  alert("The name on your card field must not be empty");
  return false;
  }
  
  
  
  
  

  }

        </script>
        
        <title>ANP Bookshop | ${current_title}</title>
    </head>
    
        <div id="wrapper">
            <!-- header-->
            <header id="header-wrapper">
                <div id="upper-header">
                    <!--logo-->
                    <div id="logo">
                        <a href="/Shop/index.htm"><img class="apnlogo" src="${pageContext.request.contextPath}/resources/images/logo.png" title="APN online store" alt="Book Store" /></a>
                    </div>
                        <!--cart-->
                          <div class="header-cart">
                            <div id="cart">
                                <c:forEach items="${cart.items}" var="item">
                                <c:set var="numItems" value="${numItems+item.quantity}"/>
                                </c:forEach>
                                
                                <div class="heading">
                                    <a href="/Shop/viewcart.htm"><span id="cart-total">My Cart [${numItems > 0 ? numItems : 0}] - £${cart.getTotal()}</span></a>
                                </div>
                                
                                
                            </div>                        
                        </div>
                    
                    <!--header links-->
                    <div id="header-links">
                        <a href="/Shop/index.htm">Home</a> |
                        <a href="/Shop/faq.htm">FAQ</a> |
                        <a href="/Shop/contact.htm">Contact us</a> |
                        <a class="account" href="/Shop/control.htm">My Account</a> 
                    </div>
                    
                    <div id="seperator">
                        <hr />   
                    </div>
                </div>
                
                <div id="lower-header">
                    <div id="search-bar">
                        <div class="search-heading">
                            <h4></h4>
                        </div>
                        <form id="search-box" action="/Shop/products/find.htm">
                        <input id="search" name="category" type="text" placeholder="Search books...">
                        <input id="submit" type="submit" value="GO" method="get">
                        </form>  
                     </div>
                    
           

                    
                    <div id="header-links">
                                 
            <form action="${logoutUrl}" method="post" id="logoutForm">
      <input type="hidden" 
        name="${_csrf.parameterName}"
        value="${_csrf.token}" />
    </form>        
                                        <c:choose>
  <c:when test="${pageContext.request.userPrincipal.authenticated}">
      
      <a class="button-login dsgnmoo" href="<c:url value="j_spring_security_logout" />" >Logout</a> 

  </c:when>
     <c:otherwise></c:otherwise>
</c:choose>
                  
                        
                        <c:choose>
                        <c:when test="${pageContext.request.userPrincipal.authenticated}">
                        <a href="/Shop/control.htm" class="button-login orange">My Account</a>
                      
                        </c:when>
                        <c:when test="${isAdmin}">
                        <a href="/Shop/control.htm" class="button-login dsgnmoo">Admin</a>
                           
                        
                        </c:when>
                        <c:otherwise>
                            <a href="/Shop/login.htm" class="button-login grey">Login</a>
               
                        </c:otherwise>
                        </c:choose>
                        <c:if test="${isAdmin}">
                            <a href="/Shop/admin.htm" class="button-login dsgnmoo"> | Administration</a>
                        
                        </c:if>
                            
                    </div>
                </div>
 
                <nav id="nav">
                    <div id="menu">
                        <h3 class="menuarrow"><span>Menu</span></h3>
                        <ul>
                            <li><a href="/Shop/books.htm">Books</a></li>
                            <li><a href="/Shop/ebooks.htm">eBooks</a></li>
                            <li><a href="/Shop/audio.htm">Audio Books</a></li>
                            <li><a href="/Shop/magazines.htm">Magazines</a></li>
                            <li><a href="/Shop/used.htm">Used Books</a></li>
                            <li></li>
                            <li><a href="/Shop/about.htm">About</a></li>
                            <li><a href="/Shop/contact.htm">Contact us</a></li>
                            <li class="offer"><a href="/Shop/offers.htm">Offers</a></li>
                            <li class="soon"><a href="/Shop/coming.htm">Coming Soon</a></li>
                        </ul>
                        
                    </div> 
                </nav>
                          <!--Social Icons Start--> 
            <div class="social">
                <ul>
                    <li><a class="ico-fb" onClick="window.open('http://www.facebook.com/');" title="Follow Your Store on Facebook"> &nbsp; </a> </li>
                    <li><a class="ico-twit" onClick="window.open('http://twitter.com/');" title="Follow Your Store on Twitter"> &nbsp; </a> </li>
                    <li><a class="ico-google" onClick="window.open('https://plus.google.com/');" title="Follow Your Store on Google+"> &nbsp; </a> </li>
                </ul>
            </div>
            <!--Social Icons End--> 
          
                </header>
            </div>
    <body>
    