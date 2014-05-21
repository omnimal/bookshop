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
                        <div class="box-heading">${okmessage1}${error1}</div>
                        <div class="box-category">
                            <ul>
                                <li><a href="/Shop/control.htm">Your Account Details</a></li>
                            </ul>
                        </div>
                    </div>
                </aside>
                <section id="mainContent">
            <div id="content">

            ${okmessage2}${error2}
            
            
           
   <table>
    <tr>
        
        <td>${name}</td>
    </tr>
    <tr>
        
        <td>${email}</td>
    </tr>
      <tr>
        
        <td>${username}</td>
    </tr>
      <tr>
        
        <td>${password}</td>
    </tr>
      <tr>
        
        <td>${phonenumber}</td>
    </tr>
  
     <tr>
        
        <td>${address}</td>
    </tr>
  
</table> 
                            
            </div>
        </section>  
            </div>
        </div>
        <%@include file="footer.jsp" %>
    
