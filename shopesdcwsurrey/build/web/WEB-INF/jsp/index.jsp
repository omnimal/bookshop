
        <%@include file= "header.jsp" %>
       <div id="wrapper">
        <section id="mainContent">
          <div id="content">
              <!--Slider-->
              <section id="slider-container">
                  <input id="button-1" type="radio" name="radio-set" class="sl-selector-1" checked="checked" />
                  <label for ="button-1" class="button-label-1"></label>
                  
                  <input id="button-2" type="radio" name="radio-set" class="sl-selector-2" checked="checked" />
                  <label for ="button-2" class="button-label-2"></label>
                  
                  <input id="button-3" type="radio" name="radio-set" class="sl-selector-3" checked="checked" />
                  <label for ="button-3" class="button-label-3"></label>
                  
                  
                  
                  <label for="button-1" class="sl-arrow sl-a1"></label>
                  <label for="button-2" class="sl-arrow sl-a2"></label>
                  <label for="button-3" class="sl-arrow sl-a3"></label>
                  
                  
                  <div class="sl-content">
                      
                          <ul class="sl-slider clearfix">
                              <li><img src="resources/images/slider/banner1.png" alt="" /></li>
                              <li><img src="resources/images/slider/banner2.png" alt="" /></li>
                              <li><img src="resources/images/slider/banner3.png" alt="" /></li>
                            
                          </ul>
                      </div>
              </section>
                
              
            <!--Latest Product-->
            <div class="box">
                <div class="box-heading-1"><span>Latest</span></div>
                <div class="box-content-1">
                    <div class="box-product-1">
                        
                        <c:forEach var="rec" items="${recent}" begin="1" end="8">
                            <div>
                                <c:url value="/product.htm" var="url" context="/Shop">
                                <c:param name="pid" value="${rec.product_id}"/>
                                </c:url>
                            <div class="image">
                                <a onClick="location.href='${url}'" ><img src="${rec.img_url}" alt="Book" action="get"/></a>
                            </div>
                            <div class="proName">
                                <div class="name"><a href="product.htm"><c:out value="${rec.name}"/></a></div>
                                <div class="price">£<c:out value="${rec.price}"/></div>
                                <c:url value="/cart/add.htm" var="url" context="/Shop">
                                <c:param name="pid" value="${rec.product_id}"/>
                                </c:url>
                                <div class="cart">  <input type="button" value="Add to Cart" onClick="location.href='${url}'" class="button" action="get"/> </div>
                            </div>
                        </div>
                        </c:forEach>

                  </div>
                </div>
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
       
        <%@include file= "footer.jsp" %>
