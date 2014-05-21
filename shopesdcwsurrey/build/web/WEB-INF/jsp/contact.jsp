<%@include file="header.jsp" %>
            <div id="wrapper">
               <div class="links-body">
                    <a href="/Shop/index.htm">Home</a>  »
                    <a href="/Shop/contact.htm">Contact Us</a>
               </div>
               
                <aside id="contact-left">
                    <div class="box">
                        <h1>Contact Details</h1>
                        <div class="contact-details">
                            <div class="map">
                                <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d39963.45867455262!2d-0.5895140000000002!3d51.242721999999894!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4875d0c1849cc2e7%3A0xfc4001c4e62e0b6c!2sUniversity+of+Surrey!5e0!3m2!1sen!2suk!4v1400242580485" width="290" height="240" frameborder="0" style="border:0"></iframe>
                            </div>
                            <p class="contact-title">Address:</p>
                            <p class="contact-details">12 University of Surrey, 
                            Guildford, Surrey, United Kingdom 
                            GU2 7YW</P>
                            <br />
                            <p class="contact-title">Telephone:</p>
                            <p class="contact-details">+44(01)4833333 | +44(01)4844444</p>
                            <br />
                            <p class="contact-title">Website:</p>
                            <p class="contact-details"><a href="/Shop/index.htm">http://www.onlineshop.co.uk</a></P>
                                                     
                        </div>
                    </div>
                </aside>
                    
                <section id="mainContent">
                    <div id="contact-right">
                        <h1>Contact Us</h1>
                        <form enctype="multipart/form-data" name="anp-contact" id="anp-contact-form" action="index.htm" onsubmit="return convalidation()">
                            <div id="wrapping" class="clearfix">

                                <section id="aligned">
                                    <input type="text" name="name" id="name" value="" class="txtinput" required/>
                                    <input type="email" name="email" id="email" value=""   class="txtinput" required/>
                                    <textarea name="message" id="message" value="message"  tabindex="5" class="txtblock" required></textarea>
                                </section>
                                
                                <section id="aside" class="clearfix">
                <section id="recipientcase">
                <h3>Recipient:</h3>
                    <select id="recipient" name="recipient" tabindex="6" class="selmenu">
                        <option value="order">Order Enquiry</option>
                        <option value="return">Return</option>
                        <option value="billing">Billing Department</option>
                        <option value="technical">Technical Issue</option>
                        <option value="support">General Support</option>
                    </select>
                </section>
                                    
                                <section id="prioritycase">
                    <h3>Priority:</h3>
                    <span class="radiobadge">
                        <input type="radio" id="low" name="priority" value="low">
                        <label for="low">Low</label>
                    </span>
                
                    <span class="radiobadge">
                        <input type="radio" id="med" name="priority" value="med" checked="checked">
                        <label for="med">Medium</label>
                    </span>
                
                    <span class="radiobadge">
                        <input type="radio" id="high" name="priority" value="high">
                        <label for="high">High</label>
                    </span>
                </section>
                                </section>
                            </div>
                             
                            <section id="buttons">
                             <input type="submit" class="button-contact dsgnmoo" value="Send">
                                                          
                            </section>
                        </form>
                    </div>
                </section>

                    
                    
                    
                    
                    
                    
                    
                    
                    
                  
                        
    </div> 

            <%@include file="footer.jsp" %>
