
<style type="text/css">
	.pest{

	}
	.pest .pest-information{

	}

	.pest .pest-information .pest-img{
		width: 100%;
	}
	.pest .pest-information .pest-img > .pest-img-slide{
		width: 50%;
	}
.img-display{

}
.img-container{
   width:19.65%;
   display: inline-block;
}
.img-display .img-thumbnail{
  width:100%;
  cursor: pointer;
  display: block;
  border-bottom: none;
  border-radius: 1px;
  height: 120px;
  object-fit: cover;


}
.img-display .img-title{
  display: block;
  background-color: #fff;
  height: 30px;
  max-height: 30px;
  overflow: hidden;
  font-size: 11px;
  display: inline-block;
  width: 100%;
  padding: 4px;
  line-height: 1.42857143;
  background-color: #fff;
  border: 1px solid #ddd;
  border-top: none;

  border-radius: 1px;
  -webkit-transition: all .2s ease-in-out;
       -o-transition: all .2s ease-in-out;
          transition: all .2s ease-in-out;

}
.modal-header {
    padding:9px 15px;
    border-bottom:1px solid #eee;
    -webkit-border-top-left-radius: 5px;
    -webkit-border-top-right-radius: 5px;
    -moz-border-radius-topleft: 5px;
    -moz-border-radius-topright: 5px;
     border-top-left-radius: 5px;
     border-top-right-radius: 5px;
 }
.modal-body{
  height: 450px;
}
/* Not so important */
.image-container{
  height: 400px;
}
.clear-fix {
  clear: both;
}
.image-here {
  width: 100%;
  padding: 20px 0 0 20px;
  background: black;
  margin: 20px auto;
  height: 350px;
}
.image-here .image {
  margin: 0 5px 5px 0;
  float: left;
  box-shadow: 0 0 1px black;
  /** Interesting part starts here */
  font-size: 0;
  text-align: center;

}
.image-here .image img {
  display: inline-block;
  vertical-align: middle;
  max-height: 100%;
  max-width: 100%;
}
.image-here .image:before {
  content: "";
  display: inline-block;
  vertical-align: middle;
  height: 100%;
}


@media screen and (max-width: 900px) {

.img-container{
   width:32.65%;
   display: inline-block;
   min-width: 120px;
}

  }
  @media screen and (max-width: 731px) {

.modal-body{
  height: auto;
}

.image-here {
  padding: 1px;
  height: auto;
}
  
  }

@media screen and (max-width: 720px) {

.modal-body{
}
.img-container{
   width:49.65%;
   display: inline-block;
   min-width: 120px;
}
.image-here {
  padding: 1px;
  height: 200px;
  min-height: 200px;
}
  
  }
@media screen and (max-width: 400px) {

.img-container{
   width:100%;
   display: inline-block;
   min-width: 120px;
}

  }
</style>
<!--link rel="stylesheet" type="text/css" href="<?=base_url('assets/roy/roy-lightbox.css')?>" -->


    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-flag"></i> Pest <a class="btn btn-primary btn-sm pull-right"><i class="fa fa-plus"></i> Add more</a>
        <small>Pest / index</small>
      </h1> 

    </section>
	<section class="content pest">

    <div class="img-display">
      
        <img class="img-thumbnail" src="http://localhost/cacao/themes/Company/images/2.jpg" alt="Snow 1" data-desc="">
        <img class="img-thumbnail" src="http://localhost/cacao/themes/Company/images/3.jpg" alt="Snow 2" data-desc="">
        <img class="img-thumbnail" src="http://localhost/cacao/themes/Company/images/4.jpg" alt="Snow 3" data-desc="">
        <img class="img-thumbnail" src="http://localhost/cacao/themes/Company/images/4.jpg" alt="Snow 4" data-desc="">
        <img class="img-thumbnail" src="http://localhost/cacao/themes/Company/images/4.jpg" alt="Snow 5" data-desc="">

    </div>

  <div class="modal" id="modalimage">
    <div class="modal-dialog modal-lg">
    <div class="modal-content">    

      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        &nbsp;
      </div>
      <div class="modal-body">
        <div class="row">
          <div class="col-md-8 image-container" >
            <div class="image-here">
              <div class="image">
                <img src="http://localhost/cacao/themes/Company/images/4.jpg" alt="Snow 5" data-desc="">

              </div>
                <div class="clear-fix"></div>
            </div>
          </div>
          <div class="col-md-4 text-container">
            <div class="title" style="font-weight: bold;font-size: 20px;">Title here</div>
            <div class="description">
              [Description here]
            </div>
            
          </div>

        </div>
        <div class="pull-right" style="position:absolute;bottom: 10px;float: right;right:10px;">
              <button class="btn btn-default btn-prev">Prev</button>&nbsp;<button class="btn btn-default btn-next">Next</button>
            </div>
      </div>

    </div>

    </div>
    </div>
  </div>
	</section>

<script type="text/javascript">
$(function(){
  var firstload =  true;
  if(firstload == true){

  var thumbnail = $('.img-display img');
    $('.img-display').html('');
    var i =0;
  $.each(thumbnail,function () {
   

    if (i >= thumbnail.length) {
      return false;
    }else{

      var div = $('<div/>').addClass('img-container').attr('id','img-'+i).data('index',i);
          div.append($(this));
          div.append($('<span/>').text($(this).attr('alt')).addClass('img-title'));

       $('.img-display').append(div);
    }
    i++;
    
  });
  firstload = false;
  }
var index = 0;

  $('.img-container').on('click',function(e){

      index = $(this).data('index');
      lightbox(index);

    $('#modalimage').modal('show');

    $('.close').on('click',function(){
      $('.modal').modal('hide');
    });

    $('.btn-prev').on('click',function(){
     // console.log('Prev'+index);

     index =  index-1;
      if (index == -1) {
        index=thumbnail.length - 1;
      }
     lightbox(index);

    })
    
    $('.btn-next').on('click',function(){
     // console.log('Next'+index);
     index =  index+1;
      if (index >= thumbnail.length) {
        index=0;
      }
     lightbox(index);

    })

  })

});

var lightbox = function(index){

  
  var img = {
    id: 0,
    slide: 0,
    src: null,
    title: null,
    desc: null,
    total: 0,
    init: function(){

      var container = $('#img-'+index);
      img.total = $('.img-container').length;

      img.id = $(container).attr('id');
      img.src =  $(container).find('img').attr('src')
      img.slide = index;
      img.title = $(container).find('.img-title').text();
      img.desc = $(container).find('img').data('desc');
      img.loadImage();
      img.loadCaption();

    },
    loadImage: function(){

    $('.modal .image-here img').attr('src',img.src);

    },
    loadCaption: function(){
    

    if(img.title.length > 0){
      $('.text-container .title').html(img.title);
    }else{

      $('.text-container .title').html('[no title]');
    }
    if(img.desc.length > 0){
      $('.text-container .description').html(img.desc);
    }else{

      $('.text-container .description').html('[no description]');
    }

    }

  }
  img.init(index);
}

/*
  $.fn.lightbox =  function(options){
      'use strict';
        var plugin = {

            items: [],
            lightbox: null,
            image: null,
            current: null,
            locked: false,
            caption: null,

            init: function (n) {
              n = 0;
              plugin.items = $('.img');
              console.log(plugin.items[n]);
                var i;
                if (n > plugin.items.length) {plugin.current = 1} 
                if (n < 1) {plugin.current = plugin.items.length} ;
                for (i = 0; i < plugin.items.length; i++) {
                  plugin.items[i].style.display = "none"; 
                }
                plugin.items[plugin.current-1].style.display = "block"; 

              }
    
    }
    plugin.init(this);
  }
*/
  //$('.list-img').lightbox();

	/*var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("pest-img-slide");
  if (n > x.length) {slideIndex = 1} 
  if (n < 1) {slideIndex = x.length} ;
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none"; 
  }
  x[slideIndex-1].style.display = "block"; 
}
*/
// Get the modal
/*
var modal = document.getElementById('myModal');

// Get the image and insert it inside the modal - use its "alt" text as a caption
var img = document.getElementById('myImg');
var modalImg = document.getElementById("img01");
var captionText = document.getElementById("caption");
img.onclick = function(){
  modal.style.display = "block";
  modalImg.src = this.src;
  captionText.innerHTML = this.alt;
}

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on <span> (x), close the modal
span.onclick = function() { 
  modal.style.display = "none";
}

*/



</script>