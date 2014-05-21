<%@include file="header.jsp" %>
            <div id="wrapper">
                <div class="links-body">
                    <a href="/Shop/index.htm">Home</a>  »
                    <a href="#">Book</a>
                </div>
                     <aside id="contact-left">
                    <div class="box">
                            <div class="box-heading-2"><h1>Book</h1></div>
                        <div class="box-category">
                            <p>
                                
                            </p>

                        </div>
                    </div>
                </aside>
                    
                <section id="mainContent">
                    <div>
                        
                        <c:forEach var="product" items="${products}">
            <table>
            <tr>
                <td>
                    <c:url value="/product.htm" var="url" context="/Shop">
                                <c:param name="pid" value="${item.product.product_id}"/>
                                </c:url>
                            <div class="image">
                                <a onClick="location.href='${url}'" ><img src="${item.product.img_url}" alt="Book" action="get"/></a>
                            </div>
                    </td>
                <td><c:out value="${product.product_id}"/></td>
                <td><a onClick="location.href='${url}'" alt="Book" action="get"><c:out value="${product.name}"/></a></td>
                <td><c:out value="${product.price}"/></td>
                <td><c:out value="${product.img_url}"/></td>
           </tr>
            </table>
        </c:forEach>
                        
                    </div>
                </section>
            </div>

            <%@include file="footer.jsp" %>
