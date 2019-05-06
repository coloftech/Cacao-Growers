
  <div id="breadcrumb">
    <div class="container">
      <div class="breadcrumb">
        <li><a href="index.html">Home</a></li>
        <li>About Us</li>
      </div>
    </div>
  </div>
<?php if (isset($homeSettings)): ?>
  <?php foreach ($homeSettings as $key): ?>

      <?php echo $key->settings_value; ?>

   

  <?php endforeach ?>
<?php endif ?>