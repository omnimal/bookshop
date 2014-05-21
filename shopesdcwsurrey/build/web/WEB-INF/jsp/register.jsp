<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="header.jsp" %>


        <div id="wrapper">
            <div id="body-wrapper">
                <div class="links-body">
                    <a href="/index.htm">Home</a>  »
                    <a href="/account.htm">My Account</a>  »
                    <a href="#">Register</a>
                </div>
                 <!-- side bar-->
                <aside id="column-left">
                    <div class="box">
                        <div class="box-heading">Register Account</div>
                        <div class="box-category">
                            <ul>
                                <li><a href="login.htm">Login</a> | <a href="register.htm">Register</a></li>
                            </ul>
                        </div>
                    </div>
                </aside>
                <section id="mainContent">
            <div id="content">
                <h1>Register with us</h1>

            <div id="register-wrapper">
<h2>Create a New Account</h2><br />
                <form:form name="register" method="POST" action="/Shop/users/addUser.htm" onsubmit="return regvalidation()">
   <table>
    <tr>
        <td><form:label path="name">Name -&nbsp<span style="color:red;">required</span></form:label></td> 
        <td><form:input path="name" name="name" /></td>
    </tr>
    <tr>
        <td><form:label path="username">Username -&nbsp<span style="color:red;">required</span></form:label></td>
        <td><form:input path="username" name="username"/></td>
    </tr>
    <tr>
        <td><form:label path="email">Email -&nbsp<span style="color:red;">required</span></form:label></td>
        <td><form:input path="email" name="email"/></td>
    </tr>
    <tr>
        <td><form:label path="password">Password -&nbsp<span style="color:red;">required</span></form:label></td>
        <td><form:input path="password" name="password"/></td>
    </tr>
    <tr>
        <td><form:label path="phonenumber">Phone number</form:label></td>
        <td><form:input path="phonenumber" name="phonenumber"/></td>
    </tr>
     <tr>
        <td><form:label path="address">Address</form:label></td>
        <td><form:input path="address" name="address"/></td>
    </tr>
    <tr>
        <td colspan="2">
            <br />
                <input type="submit" value="Submit"/>
        </td>
   
    </tr>
    
</table>
         
</form:form>
<br />
<p style="color:red;"><b>field mark with * are required</b></p>
<p>already have an account? please<a href="/Shop/login.htm">Login here</a></p>
            </div>
            
            

                            
            </div>
        </section>  
            </div>
        </div>
        <%@include file="footer.jsp" %>
    
