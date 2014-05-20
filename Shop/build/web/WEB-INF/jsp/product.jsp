<%@include file="header.jsp" %>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_UK/sdk.js#xfbml=1&version=v2.0";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<div id="wrapper">
    <div class="links-body">
                    <a href="/Shop/index.htm">Home</a>  »
                    <a href="#">Books</a>
                </div>
    
            <section id="contentWrapper">
                <div id="contatiner">
                    
                    <aside id="column-left">
                        <div class="box">
                            <div class="box-heading">Categories</div>
                            <div class="box-content">
                                 <div class="box-category">
                                     <ul id="camaccordion">
                                          <li><a href="/Shop/books.htm">Books</a></li>
                            <li><a href="/Shop/ebooks.htm">eBooks</a></li>
                            <li><a href="/Shop/audio.htm">Audio Books</a></li>
                            <li><a href="/Shop/magazines.htm">Magazines</a></li>
                            <li><a href="/Shop/used.htm">Used Books</a></li>    
                                    </ul>
                                   </div>
                              </div>
                         </div>  
                    </aside>
             
            <!--right-->
            <section id="mainContent">
                <div id="content">
                    <div class="product-info">
                    <div class="left">
                            <div class="image">                 
                                <a><img src="${product.img_url}" alt="Book" /></a>   
                            </div>
                    </div>
                            
                    <div class="right">
                    	<div class="description">
                            <h1>${product.name}</h1> 
                            <div class="product-details">
                            <span>Description:</span> ${product.description}
                            </div>
                            
                                <span>Product Category:</span> ${product.category}<br />
                                <span>Stock:</span> ${product.stock}
                        </div>
                        <div class="price">
                            <div class="price-bg"><p>£${product.price}</p>
                                <p class="details">Free Delivery</p></div>    
                        </div>
                        
                        <div class="cart">
                                <div class="qty"> 
                                <c:url value="/cart/add.htm" var="url" context="/Shop">
                                <c:param name="pid" value="${product.product_id}"/>
                                </c:url>
                                    <label class="btn"><input type="button" value="Add to Cart" id="button-cart" onClick="location.href='${url}'" class="button" action="get" /></label>
                            	</div>
                                <div class="add-link"> 
                                  
                                </div>
                            </div>
                            
                            <div class="review">
                              
                            </div>
                        
                    </div>
                </div>
                      
                    <div class="tab-content">
                        <h2 id="review-title">Write a review</h2><br />
                        
                        <form:form method="POST" action="/Shop/comments_rating/addComment.htm" modelAttribute="comment">
          
                          <table>
                                                               <tr>
        <td>   <form:label path="username">User Name</form:label></td>
        <td>  <form:input path="username" /></td>
    </tr>
                              

                              <tr>
        <td>   <form:input path="product_id" type="hidden" alue="${product.product_id}"/></td>
    </tr>
    
    <tr>
        <td>   <form:label path="comment">Add your Comment</form:label></td>
        <td>  <form:input path="comment" /></td>
    </tr>
    

    <tr>
        <td colspan="2">
            <br />
                 <input type="submit" value="Submit" />
        </td>
   
    </tr>
    
                          </table>
          
                            
                        </form:form>
                       
                       
                      </div>         

                                <div class="tab-content">
                                    
                                    <c:forEach var="comments_rating" items="${comments_rating}">
                                        <table>
                                        
                                                                                                  <tr>
        <td>User Name</td>
        <td><c:out value="${comments_rating.username}"/></td>
    </tr>
                                                          <tr>
        <td>Comment</td>
        <td><c:out value="${comments_rating.comment}"/></td>
    </tr>
                                        </table>
                                        
           
        </c:forEach>       
                </div>
                    
                
              
            </section>
                </div>    
            </section>   
        </div>
<%@include file="footer.jsp" %>