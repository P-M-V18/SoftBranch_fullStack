<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
     <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
     <meta name="viewport" content="width=device-width, initial-scale=1.0" />
     <title>P_M_V</title>
    <link rel="icon" href="images/icon.jpeg.jpg" type="image/x-icon" >
    <link rel="stylesheet" href="style.css" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
    />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
  </head>
  <body>
    <div id="nav">
      <img src="images/navbar-img.jpg" alt="code" />
      <div id="nav-inner">
        <h4>CYBERSECURITY</h4>
        <h4>DATA SCIENCE</h4>
        <h4>FULLSTACK</h4>
        <h4>AI</h4>
        <h4>MACHINE LEARNING</h4>
        
      </div>
     
      <div id="nav-buton">
        <a
          href="#"
          class="buton"
          data-bs-toggle="modal"
          data-bs-target="#myModal"
          ><span>Login</span></a
        >
        <a href="register.html" class="buton"><span>Register</span></a>
        
      </div>
      <div id="user-info">
        <h5>${session_name}</h5>
        
      </div>
      
    </div>

    <div id="cursor"></div>
    <div id="cursor-blur"></div>

    <!-- The Modal -->
    <div class="modal fade" id="myModal">
      <div class="modal-dialog modal-dialog-centered modal-fullscreen-md-down">
        <div class="modal-content">
          <!-- Modal body -->
          <div class="modal-body">
            <div class="close">
              <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>            
            <h4 class="modal-title">Sign In</h4>
            
            <form action="logging" method="post">
              <div class="mb-3 mt-3" id="mod-eml">
                <input
                  type="email"
                  id="email"
                  placeholder="&nbsp;&nbsp;&nbsp;Enter email"
                  name="email"
                  autocomplete="off"
                  required
                  autofocus
                />
              </div>
              <div class="mb-3" id="mod-pass">                
                  <input
                    type="password"
                    id="pwd"
                    placeholder="&nbsp;&nbsp;&nbsp;Enter password"
                    name="pswd"
                    required
                  />              
              </div>
              <div id="forgo">
                <a href="#"><h5>Forgot password?</h5></a>
              </div>
              <button type="submit" class="btn btn-primary" id="mod-buton">
                Login
              </button>
            </form>
            <div id="create1">
              <h4>Don't have an account? <a href="register.html">Create one </a></h4>
            </div>
          </div>
        </div>
      </div>
    </div>
    <video
      autoplay
      loop
      muted
      src="images/coursee/istockphoto-1193478588-640_adpp_is.mp4"
    ></video>
    <div id="main">
      <div id="page1">
        <br /><br /><br />
        <h1>CODE.DEVELOP.</h1>
        <h2>WELCOME TO THE WEBSITE!</h2>
        <p>
          Computer science is a vast field as such it can be pretty intimidating to the beginners to decide which way to go or which technology to learn. In this website you can understand all the ins and outs of computer-science.
        </p>
      </div>
      <div id="page2">
        <div id="scroller">
          <div id="scroller-in">
            <h4>CYBERSECURITY</h4>
            <h4>DATA SCIENCE</h4>
            <h4>FULLSTACK</h4>
            <h4>ARTIFICIAL INTELLIGENCE</h4>
            <h4>MACHINE LEARNING</h4>
          </div>
          <div id="scroller-in">
            <h4>CYBERSECURITY</h4>
            <h4>DATA SCIENCE</h4>
            <h4>FULLSTACK</h4>
            <h4>ARTIFICIAL INTELLIGENCE</h4>
            <h4>MACHINE LEARNING</h4>
          </div>
        </div>
        <div class="container-fluid" id="about-us">
          <div class="row">
            <div class="col-3">
              <img src="images/abot-1.jpg" alt="DEVELOPERS" />
            </div>
            <div class="col-6">
              <h3>Careers</h3>
              <p>
                Home to a 46-bay, multi-tier, floodlit driving range, powered by
                Toptracer Range technology. Complimented by a practice green and
                bunker, coffee shop and American Golf Store. There truly is
                something for everyone as we also boast two outdoor 18-hole
                dinosaur themed crazy golf courses.
              </p>
              <p>
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Ex
                culpa, ipsa a, earum voluptatem maxime ratione saepe sit
                excepturi voluptates velit nihil ea exercitationem. Nam, eius
                repellendus. Dolorum, praesentium deleniti?
              </p>
            </div>
            <div class="col-3">
              <img src="images/abot-2.jpg" alt="HTML" />
            </div>
          </div>
        </div>
        <h4 id="tex-card">Branches</h4>
        <div id="card-container">
          <div class="card-in" id="card1">
            <div class="overly">
              <h4>Ai</h4>
              <div id="sym">
                <p class="green-arrow">&#8594;</p>
              </div>
            </div>
          </div>
          <div class="card-in" id="card2">
            <div class="overly">
              <h4>Data Science</h4>
              <div id="sym">
                <p class="green-arrow">&#8594;</p>
              </div>
            </div>
          </div>
          <div class="card-in" id="card3">
            <div class="overly">
              <h4>Full Stack</h4>
              <div id="sym">
                <p class="green-arrow">&#8594;</p>
              </div>
            </div>
          </div>
        </div>
        <div id="card-container">
          <div class="card-in" id="card4">
            <div class="overly">
              <h4>Cyber Security</h4>
              <div id="sym">
                <p class="green-arrow">&#8594;</p>
              </div>
            </div>
          </div>
          <div class="card-in" id="card5">
            <div class="overly">
              <h4>Machine Learning</h4>
              <div id="sym">
                <p class="green-arrow">&#8594;</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br /><br /><br /><br />
      <div class="signup">
        <img src="images/dots-side.svg" alt="bg" id="img1" />

        <h4>SIGN UP FOR SPECIAL NEWS AND EVENTS STRAIGHT TO YOUR INBOX</h4>

        <img src="images/dots-side.svg" alt="bg" id="img2" />
      </div>
      <br /><br /><br /><br />
      <div class="page3">
        <div class="container">
          <div class="row">
            <div class="col-6">
              <!-- Carousel -->
              <div
                id="demo"
                class="carousel carousel-dark slide"
                data-bs-ride="carousel"
              >
                <!-- Indicators/dots -->
                <div class="carousel-indicators">
                  <button
                    type="button"
                    data-bs-target="#demo"
                    data-bs-slide-to="0"
                    class="active"
                  ></button>
                  <button
                    type="button"
                    data-bs-target="#demo"
                    data-bs-slide-to="1"
                  ></button>
                  <button
                    type="button"
                    data-bs-target="#demo"
                    data-bs-slide-to="2"
                  ></button>
                </div>

                <!-- The slideshow/carousel -->
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img
                      src="images/coursee/fulst1.jpg"
                      alt="Los Angeles"
                      class="d-block"
                      style="width: 100%"
                    />
                  </div>
                  <div class="carousel-item">
                    <img
                      src="images/coursee/fulst2.jpg"
                      alt="Chicago"
                      class="d-block"
                      style="width: 100%"
                    />
                  </div>
                  <div class="carousel-item">
                    <img
                      src="images/coursee/ai2.jpg"
                      alt="New York"
                      class="d-block"
                      style="width: 100%"
                    />
                  </div>
                </div>

                <!-- Left and right controls/icons -->
                <button
                  class="carousel-control-prev"
                  type="button"
                  data-bs-target="#demo"
                  data-bs-slide="prev"
                >
                  <span class="carousel-control-prev-icon"></span>
                </button>
                <button
                  class="carousel-control-next"
                  type="button"
                  data-bs-target="#demo"
                  data-bs-slide="next"
                >
                  <span class="carousel-control-next-icon"></span>
                </button>
              </div>
            </div>
            <div class="col-6" id="fusco">
              <h4>Future Scope</h4>
              <p>
                Lorem ipsum, dolor sit amet consectetur adipisicing elit. Non ad
                fuga saepe, sequi vel sit ex facilis voluptatum, eius reiciendis
                corrupti quae obcaecati velit sed, officia est minus ut
                perspiciatis?
              </p>
              <p>
                Lorem ipsum, dolor sit amet consectetur adipisicing elit. Non ad
                fuga saepe, sequi vel sit ex facilis voluptatum.
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div id="foot">
      <div id="foot-icons">
        <a href="https://www.facebook.com/yourpage" target="_blank"
          ><i class="fab fa-facebook"></i
        ></a>
        <a href="https://www.instagram.com/yourpage" target="_blank"
          ><i class="fab fa-instagram"></i
        ></a>
        <a href="https://twitter.com/yourpage" target="_blank"
          ><i class="fab fa-twitter"></i
        ></a>
        <a href="https://github.com/yourpage" target="_blank"
          ><i class="fab fa-github"></i
        ></a>
        <a href="https://www.youtube.com/yourpage" target="_blank"
          ><i class="fab fa-youtube"></i
        ></a>
        <a href="https://plus.google.com/yourpage" target="_blank"
          ><i class="fab fa-google"></i
        ></a>
      </div>
      <div id="foot-inner">
        <img src="images/navbar-img.jpg" alt="code" />
        <div id="link1">
          <h4>TOP</h4>
          <h4>ABOUT US</h4>
          <h4>COURSES</h4>
        </div>
        <div id="link2">
          <h4>CYBERSECURITY</h4>
          <h4>DATA SCIENCE</h4>
          <h4>FULLSTACK</h4>
          <h4>AI</h4>
          <h4>MACHINE LEARNING</h4>
        </div>
      </div>
    </div>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/gsap.min.js"
      integrity="sha512-16esztaSRplJROstbIIdwX3N97V1+pZvV33ABoG1H2OyTttBxEGkTsoIVsiP1iaTtM8b3+hu2kB6pQ4Clr5yug=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    ></script>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/ScrollTrigger.min.js"
      integrity="sha512-Ic9xkERjyZ1xgJ5svx3y0u3xrvfT/uPkV99LBwe68xjy/mGtO+4eURHZBW2xW4SZbFrF1Tf090XqB+EVgXnVjw=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    ></script>
    <script src="script.js"></script>
  </body>
</html>
