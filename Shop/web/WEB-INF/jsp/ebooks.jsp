<%@include file="header.jsp" %>
<div id="wrapper">
    <div class="links-body">
                    <a href="/Shop/index.htm">Home</a>  »
                    <a href="#">eBooks</a>
                </div>
    <section id="mainContent">
        <div id="content">
            <!--page details-->
            <section id="pages-details">
                <h1>eBooks</h1>
                <div class="pages-img">
                    <img class="apnlogo" src="resources/images/pages/ebooks.png" title="APN online store" alt="Book Store" />
                </div>
                <div class="pages-text">
                    <p>E The ANP Online store included more than 1000 books which categories up to 5 categories.
                    These categories are: Student, Children, Parents, Guide and Medical books.
                    The ANP Online store included more than 1000 books which categories up to 5 categories.
                    These categories are: Student, Children, Parents, Guide and Medical books.
                    The ANP Online store included more than 1000 books which categories up to 5 categories.
                    These categories are: Student, Children, Parents, Guide and Medical books.
                    The ANP Online store included more than 1000 books which categories up to 5 categories.
                    These categories are: Student, Children, Parents, Guide and Medical books.The ANP Online store included more than 1000 books which categories up to 5 categories.
                    These categories are: Student, Children, Parents, Guide and Medical books.</p>
                </div>
            </section>
            <div id="seperator">
                        <hr />   
                    </div>
            
            <section id="pages-content">
            <!--Latest Product-->
            <div class="box">
                <div class="box-heading-1"><span>eBooks</span></div>
                <div class="box-content-1">
                    <div class="box-product-1">
                    <c:forEach var="product" items="${products}">
                    <c:url value="/product.htm" var="url" context="/Shop">
                    <c:param name="pid" value="${product.product_id}"/>
                    </c:url>
                        <div>
                            <div class="image">
                              <a onClick="location.href='${url}'" ><img src="${product.img_url}" alt="Book" action="get"/></a>
                            </div>
                            <div class="proName">
                                <div class="name"><a onClick="location.href='${url}'" alt="Book" action="get"><c:out value="${product.name}"/></a></div>
                                <div class="price"><h2>£<c:out value="${product.price}"/></h2></div>
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
            </section>
        










</div>

<%@include file="footer.jsp" %>