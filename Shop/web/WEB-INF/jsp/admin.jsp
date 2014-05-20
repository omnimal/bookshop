<%@include file="header.jsp" %>
            <div id="wrapper">
                <div class="links-body">
                    <a href="/Shop/index.htm">Home</a>  »
                    <a href="#">Administrator Area</a>
                </div>
                     <aside id="contact-left">
                    <div class="box">
                        <div class="box-heading-2"><h1>Administrator Area</h1></div>
                        <div class="box-category">
                            <p>
                                
                            </p>

                        </div>
                    </div>
                </aside>
                    
                <section id="mainContent">
                    <div>
        <h1>User List</h1>
        
        <table>
            <tr>
                <th>Id</th>
                <th>Password</th>
                <th>Username</th>
                <th>Email</th>
                <th>Address</th>
                <th>Phone number</th>
            </tr>    
        <c:forEach var="user" items="${users}">
            <tr>
                <td>
                  <c:out value="${user.user_id}"/>
                </td>
                <td>
                  <c:out value="${user.password}"/>
                </td>
                <td>
                  <c:out value="${user.username}"/>
                </td>
                 <td>
                  <c:out value="${user.email}"/>
                </td>
                <td>
                  <c:out value="${user.address}"/>
                </td>
                 <td>
                  <c:out value="${user.phonenumber}"/>
                </td>
           </tr>
        </c:forEach>
           
        </table>
</div>
                </section>
            </div>

            <%@include file="footer.jsp" %>
