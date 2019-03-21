<link rel="stylesheet" type="text/css" href="<?=base_url('assets/jquery.lightbox/jquery.lightbox.css')?>">
	<section class="content-header"></section>
	<section class="content pest">
	<!-- Link to the image -->
<div  class="gallery">
<a href="http://localhost/cacao/themes/Company/images/4.jpg"  data-caption="This is a picture of a cat">
<img src="http://localhost/cacao/themes/Company/images/4.jpg"></a>
<a href="http://localhost/cacao/themes/Company/images/3.jpg"  data-caption="This is a picture of a dog">
<img src="http://localhost/cacao/themes/Company/images/3.jpg"></a>
</div>


	</section>

<script type="text/javascript" src="<?=base_url('assets/jquery.lightbox/jquery.lightbox.js')?>"></script>

<script>
 $(function()
 {
    $('.gallery a').lightbox(); 
    
    // If you want seperate galleries on the same page
    // just specify different class names. 
    $('.gallery-2 a').lightbox();
 });
</script>