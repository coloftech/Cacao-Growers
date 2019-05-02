
  <div id="breadcrumb">
    <div class="container">
      <div class="breadcrumb">
        <li><a href="index.html">Home</a></li>
        <li>Services</li>
      </div>
    </div>
  </div>

  <div class="services">
    <div class="container">


        <?php echo $this->settings->getValue('section1','services'); ?>
    </div>
  </div>

  <div class="sub-services">
    <div class="container">

        <?php echo $this->settings->getValue('section2','services'); ?>
    </div>
  </div>
