<%@include file="header.jsp" %>
            <div id="wrapper">
                <div class="links-body">
                    <a href="/Shop/index.htm">Home</a>  »
                    <a href="#">Control Panel</a>
                </div>
                
                <section id="mainContent">
                    <div id="content">
                        
                        
                        <div class="control-wrpper-2">
                            <h1>Control Panel</h1>
                        <p class="control-w">Welcome ( ${username} )</p>
                        
                            <form:form action="/Shop/control.htm" modelAttribute="f_upload" method="post" 
                                   enctype="multipart/form-data" class="control-wrapper">
                            <input type="file" id="upload" name="file" required>
                            <input type="submit" value="Upload" id="submit"> 
                            
                        </form:form>
                  
                <p>
                    ${f_name}                   
                </p> 
                        </div>
                        
                       
                    
                
                    </div>
                </section>
            </div>

            <%@include file="footer.jsp" %>
