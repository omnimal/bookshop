<%@include file="header.jsp" %>
            <div id="wrapper">
                <div class="links-body">
                    <a href="/Shop/index.htm">Home</a>  »
                    <a href="#">Offers!</a>
                </div>
                    
                <section id="mainContent">
                    <div id="content">
                        <h1> Here you will find the best prices on books!</h1>
                    <div class="soon-img">
                    <img class="apnlogo" src="resources/images/pages/offers.png" title="APN online store" alt="Book Store" />
                    </div>
                        
                        <div class="box">
                <div class="box-heading-1"><span>Offers</span></div>
                <div class="box-content-1">
                    <div class="box-product-1">
                        <c:forEach var="product" items="${products}" begin="1" end="8">
                            <div>
                                <c:url value="/product.htm" var="url1" context="/Shop">
                                <c:param name="pid" value="${product.product_id}"/>
                                </c:url>
                            <div class="image">
                                <a onClick="location.href='${url1}'"><img src="${product.img_url}" alt="Book" /></a>
                            </div>
                            <div class="proName">
                                <div class="name"><a href="product.htm"><c:out value="${product.name}"/></a></div>
                                <div class="price">£<c:out value="${product.price}"/></div>
                                <c:url value="/cart/add.htm" var="url" context="/Shop">
                                <c:param name="pid" value="${product.product_id}"/>
                                </c:url>
                                <div class="cart">  <input type="button" value="Add to Cart" onClick="location.href='${url}'" class="button" action="get"/> </div>
                            </div>
                        </div>
                        </c:forEach>
                        
                           
                    </div>
                    </div>
                </div>
                    
                    </div>
                </section>
            </div>

            <%@include file="footer.jsp" %>
