<%-- 
    Document   : contact
    Created on : Aug 24, 2021, 3:15:55 PM
    Author     : Neet Nguyen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <section class="mb-5">
            <div class="container">
              <div class="row">
                <div class="col-md-6 mb-5">
                  <h1 class="display-4">Contact Us</h1>
                  <p class="lead text-secondary">A free bootstrap template by <a href="https://uicookies.com/" target="_blank">uicookies.com</a></p>
                </div>
              </div>
            </div>
        </section>


        <section class="probootstrap-services">
            <div class="container">
              <div class="row no-gutters">
                <div class="col-md-3 pb-5 probootstrap-aside-stretch-left probootstrap-inside">
                  <div class="mb-3 pt-5">
                    <h2 class="h6">Contact</h2>
                    <ul class="list-unstyled probootstrap-light mb-4">
                      <li class="active"><a href="#">Contact</a></li>
                      <li><a href="#">More Link</a></li>
                      <li><a href="#">Another Link</a></li>
                    </ul>
                  </div>
                </div>
                <div class="col-md-9 pl-md-5 pb-5 pl-0 probootstrap-inside">
                  <h1 class="mt-4 mb-4">Get In Touch</h1>
                  <div class="row">
                    <div class="col-md-12">
                      <form action="" method="post" class="probootstrap-form">
                        <div class="form-group">
                          <label for="name" class="sr-only">Name</label>
                          <input type="text" class="form-control" id="name" placeholder="Enter your name">
                        </div>
                        <div class="form-group">
                          <label for="email" class="sr-only">Email</label>
                          <input type="text" class="form-control" id="email" placeholder="Enter your email">
                        </div>
                        <div class="form-group">
                          <label for="message" class="sr-only">Message</label>
                          <textarea name="message" id="message" cols="30" rows="10" class="form-control" placeholder="Write your message"></textarea>
                        </div>
                        <div class="form-group">
                          <input type="submit" class="btn btn-primary" value="Send Message">
                        </div>
                      </form>
                    </div>
                  </div>
                </div>
              </div>
            </div>
        </section>


        <section class="probootstrap-subscribe">
            <div class="container">
              <div class="row mb-5">
                <div class="col-md-12">
                  <h2 class="h1 text-white">Subscribe Newsletter</h2>
                  <p class="lead text-white">Far far away, behind the word mountains, far from the countries Vokalia.</p>
                </div>
              </div>
              <form action="#" method="post">
                <div class="row">
                  <div class="col-md-4">
                    <input type="text" class="form-control" placeholder="Name">    
                  </div>
                  <div class="col-md-4 mb-md-0 mb-3">
                    <input type="text" class="form-control" placeholder="Email">
                  </div>
                  <div class="col-md-4">
                    <input type="submit" value="Subscribe" class="btn btn-primary btn-block">
                  </div>

                </div>
              </form>
            </div>
        </section>
        
    </body>
</html>
