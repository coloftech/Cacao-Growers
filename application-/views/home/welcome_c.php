
  <section id="main-slider" class="no-margin">
    <div class="carousel slide">
      <div class="carousel-inner">
        <div class="item active" style="background-image: url(<?php echo $this->settings->getValue('section1','home'); ?>)">
          <div class="container">
            <div class="row slide-margin">
              <div class="col-sm-6">
                <div class="carousel-content">
                  <h3 class="animation animated-item-1"><span>Welcome to</span> THE CACAO GROWERS</h3>
                  <p class="animation animated-item-2">The Bohol Cacao Integrated Information System Database sponsored by DOST 7.</p>
                  <a class="btn-slide animation animated-item-3" href="#">Read More</a>
                </div>
              </div>

              <div class="col-sm-6 hidden-xs animation animated-item-4">
                <div class="slider-img">
                  <img src="<?=base_url('public/images')?>/cacao-clip.png" class="img-responsive hidden">
                  <img src="<?=base_url('assets/themes')?>/Company/images/slider/img3.png" class="img-responsive hidden">
                </div>
              </div>

            </div>
          </div>
        </div>
        <!--/.item-->
      </div>
      <!--/.carousel-inner-->
    </div>
    <!--/.carousel-->
  </section>
  <!--/#main-slider-->

  <div class="feature">
    <div class="container">
      <div class="text-center">

        <?php echo $this->settings->getValue('section2','home'); ?>

      </div>
    </div>
  </div>

  <div class="about">
    <div class="container">
      
        <?php echo $this->settings->getValue('section3','home'); ?>
    </div>
  </div>

  <div class="lates">
    <div class="container">
      <div class="text-center">
        <h2>Latest Post</h2>
      </div>
      <div class="col-md-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
        <img src="<?=base_url('assets/themes')?>/Company/images/4.jpg" class="img-responsive" />
        <h3>Template built with Twitter Bootstrap</h3>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque libero,
          pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque
        </p>
      </div>

      <div class="col-md-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
        <img src="<?=base_url('assets/themes')?>/Company/images/4.jpg" class="img-responsive" />
        <h3>Template built with Twitter Bootstrap</h3>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque libero,
          pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque
        </p>
      </div>

      <div class="col-md-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="900ms">
        <img src="<?=base_url('assets/themes')?>/Company/images/4.jpg" class="img-responsive" />
        <h3>Template built with Twitter Bootstrap</h3>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque libero,
          pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque
        </p>
      </div>
    </div>
  </div>


        <?php echo $this->settings->getValue('section5','home'); ?>
   

  <section id="conatcat-info">
    <div class="container">
      <div class="row">

        <?php echo $this->settings->getValue('section6','home'); ?>
      </div>
    </div>
    <!--/.container-->
  </section>
  <!--/#conatcat-info-->
