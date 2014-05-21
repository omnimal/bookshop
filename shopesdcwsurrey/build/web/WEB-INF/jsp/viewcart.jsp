<%@include file="header.jsp" %>
            <div id="wrapper">
                <div class="links-body">
                    <a href="/Shop/index.htm">Home</a>  »
                    <a href="#">Your Cart</a>
                </div>
                
                    <!-- side bar-->
                <aside id="column-left">
                    <div class="box">
                        <div class="box-heading">Your Cart</div>
                        <div class="box-category">
                            <ul>
                                <li>In your Cart you can add, decrease or remove the Books that you want</li>
                                
                            </ul>
                        </div>
                    </div>
                </aside>
                    
                <section id="mainContent">
                <div id="contatiner">    
                    ${paysuccess}
                        <!--shopping cart content-->
                        <div id="shopping-cart">
                            <h1>Shopping Cart</h1>
                          
                            <table id="cart">
                                <thead>
                                    <tr>
                                        <th class="first">Preview</th>
                                        <th class="second">Title</th>
                                        <th class="third">Category</th>
                                        <th class="fourth">Quantity</th>
                                        <th class="fifth">Unit Price</th>
                                        <th class="sixth">Remove</th>
                                    </tr>
                                    <c:forEach items="${cart.items}" varStatus="i" var="item">
                                        <c:url value="/cart/remove.htm" var="r_url" context="/Shop">
                                    <c:param name="pid" value="${item.product.product_id}"/>
                                    </c:url>
                                    <c:url value="/cart/increase.htm" var="i_url" context="/Shop">
                                    <c:param name="pid" value="${item.product.product_id}"/>
                                    </c:url>
                                    <c:url value="/cart/decrease.htm" var="d_url" context="/Shop">
                                    <c:param name="pid" value="${item.product.product_id}"/>
                                     </c:url>
                                </thead>
                                
                                <tbody>
                                    <tr class="product-item">
                                        
                                    <c:url value="/product.htm" var="url" context="/Shop">
                                <c:param name="pid" value="${item.product.product_id}"/>
                                </c:url>
                                        
                                        
                                        <td class="cart-image">
                                            <a onClick="location.href='${url}'" ><img src="${item.product.img_url}" alt="Book" action="get"/></a>
                                        </td>
                                        
                                        <td class="cart-title">${item.product.name}</td>
                                        <td class="cart-category"><a href="${pageContext.request.contextPath}/${item.product.category}.htm">${item.product.category.toUpperCase()}</a></td>
                                        <td class="cartqty"><a href="${d_url}"><img src="resources/images/arrow-left.png"></a> <input id="qty" type="text" name="quantity" size="1" value="${item.quantity}" /> <a href="${i_url}"><img src="resources/images/arrow-right.png"></a></td>
                                        <td class="cart-price">£${item.product.price}</td>
                                        <td class="cart-remove"><a href="${r_url}"><img src="resources/images/remove.png" alt="X"></a></td>
                                        <td></td>
                                    
                                    </c:forEach>

                                    </tr>                                    
                                </tbody>
                            </table>
                            <div class="totalprice">
         <button class="cart-button yellow" onClick="location.href='/Shop/checkout.htm'"">
    <div class="title">Checkout</div>
    <div class="price">£${cart.getTotal()}</div>
        </button>
                         </div>
                                   
                                       
                                        </div>
                                </div>
                </div>
                </section>
            </div>

            <%@include file="footer.jsp" %>
