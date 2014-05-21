<%@include file="header.jsp" %>
            <div id="wrapper">
                <div class="links-body">
                    <a href="/Shop/index.htm">Home</a>  »
                    <a href="#">Search Results</a>
                </div>
                
                    <!-- side bar-->
                <aside id="column-left">
                    <div class="box">
                        <div class="box-heading">Results</div>
                        <div class="box-category">
                            <ul>
                                <li>Your search results</li>
                            </ul>
                        </div>
                    </div>
                </aside>
                    
                    <section id="mainContent">
                         <div id="contatiner">    
                    
                        <!--shopping cart content-->
                        <div id="shopping-cart">
                            <h1>Search Results</h1>
                          
                            <table id="cart">
                                <thead>
                                    <tr>
                                        <th class="first">Preview</th>
                                        <th class="second">Name</th>
                                        <th class="third">Category</th>
                                        <th class="fourth">Cost</th>

                                    </tr>
                                      
                                </thead>
                                                             
                                    <tbody>
                                   <c:forEach var="product" items="${products}"> 
                                        <tr class="product-item">
                                             
                                        
                                          <c:url value="/product.htm" var="url" context="/Shop">
                                <c:param name="pid" value="${product.product_id}"/>
                                </c:url>
                                        
                                        
                                        <td class="cart-image">
                                            <a onClick="location.href='${url}'" ><img src="${pageContext.request.contextPath}/${product.img_url}" alt="Book" action="get"/></a>
                                        </td>
                                        
                                        <td class="cart-title">${product.name}</td>
                                        <td class="cart-category"><a href="${pageContext.request.contextPath}/${product.category}.htm">${product.category.toUpperCase()}</a></td>
                                        <td class="cartqty">£${product.price}</td>
                                      
                                        <td></td>
                                    
                                    
                                        
  

                                    </tr> 
                                    </c:forEach>                                   
                                </tbody>
                            </table>
                            
                                   
                                       
                                        </div>
                                </div>
                    </section>
               
                </div>

            <%@include file="footer.jsp" %>
