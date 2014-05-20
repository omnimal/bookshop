<%@include file="header.jsp" %>
            <div id="wrapper">
                <div class="links-body">
                    <a href="/Shop/index.htm">Home</a>  »
                    <a href="/Shop/viewcart.htm">Cart</a>  »
                    <a href="#">Order Checkout</a>
                </div>
                    
                <section id="mainContent">
                    <div id="content">
                        <div class="payment-wrpper">
                        <h1>Checkout</h1>
                        
                        <form id="payment" name="pay" method="POST" action="/Shop/cart/payment.htm" onsubmit="return payvalidation()">
                            <fieldset>
                                <ol>
                                    <li>
        <fieldset>
          <legend>Card type</legend>
          <ol>
            <li>
              <input id="visa" name="cardtype" type="radio">
              <label for=visa>VISA</label>
            </li>
            <li>
              <input id="amex" name="cardtype" type="radio">
              <label for=amex>AmEx</label>
            </li>
            <li>
              <input id="mastercard" name="cardtype" type="radio">
              <label for=mastercard>Mastercard</label>
            </li>
          </ol>
        </fieldset>
      </li>
      <li>
        <label for="cardnumber">Card number</label>
        <input id="cardnumber" name="cardnumber" type="number" required>
      </li>
      <li>
        <label for="secure">Security code</label>
        <input id="secure" name="secure" type="number" required>
      </li>
      <li>
        <label for="namecard">Name on card</label>
        <input id="namecard" name="namecard" type="text" placeholder="Name as on the card" required>
      </li>
    </ol>
  </fieldset>
  <fieldset>
    <div class="payment-button">
      <a onClick="location.href='/Shop/contact.htm'" action="get" type="submit" class="button-login grey">Need help?</a>
    <a onClick="location.href='/Shop/viewcart.htm'" action="get" type="submit" class="button-login dsgnmoo">Back to Cart</a>
    <input type="submit" class="button-login orange" value="Make a Payment"/>
    </div>
                
  </fieldset>
</form>
                       
                        </div>
                    </div>
                </section>
            </div>

            <%@include file="footer.jsp" %>
