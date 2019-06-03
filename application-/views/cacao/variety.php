<link rel="stylesheet" type="text/css" href="<?=base_url('assets/roy/roy-lightbox.css')?>">
<section class="content-header">
  <h1>Cacao variety <div class="pull-right">
        <a class="btn btn-primary btn-sm btn-add-more"><i class="fa fa-plus"></i> Add more</a>
        <a class="btn btn-default btn-sm btn-back hidden"><i class="fa fa fa-arrow-circle-o-left"></i> Back</a>
      </div></h1>
</section>
<section class="content">
  <div class="row cacao-variety-list">

    <div class="col-md-12">
       <div class="gallery">     
        <img class="img-thumbnail"  src="http://localhost/cacao/themes/Company/images/2.jpg" alt="Snow 1" data-desc="Hello world 1">
        <img class="img-thumbnail" src="http://localhost/cacao/themes/Company/images/3.jpg" alt="Snow 2" data-desc="Hello world 2">
        <img class="img-thumbnail" src="http://localhost/cacao/themes/Company/images/4.jpg" alt="Snow 3" data-desc="Hello world 3">
        <img class="img-thumbnail" src="http://localhost/cacao/themes/Company/images/4.jpg" alt="Snow 4" data-desc="Hello world 4">
        <img class="img-thumbnail" src="http://localhost/cacao/themes/Company/images/4.jpg" alt="Snow 5" data-desc="Hello world 5">
      </div>

    </div>
  </div>
  <div class="row cacao-variety-add"> 
    <div class="col-md-12">
      
      
        <br />
        <br />
    </div>
    <div class="col-md-12  form-add hidden">
      <div class="form-responsive">
      <form class="form">
        <div class="col-md-8">
          <div class="form-group">
          <label>Name:</label>
          <input type="text" name="variety" class="form-control">
        </div>
        <div class="form-group">
          <label>Description:</label>
          <textarea class="form-control" rows="10" name="description "></textarea>
        </div>
       
        <div class="form-group">
          <label></label>
          <button class="btn btn-primary">Save</button>
        </div>
        </div>
        <div class="col-md-4">
          <div class="image-preview">
            <img src="<?=site_url("gallery/r/default-image.jpg")?>">
          </div>
           <div class="form-group"><br />
            <label>&nbsp;</label>
            <button type="button" class="btn btn-default btn-xs btn-upload"  data-toggle="modal" data-target="#modalUpload"><i class="fa fa-upload"> Upload Image</i></button>
          </div>
        </div>
        

      </form>
    </div>
    </div>
  </div>
</section>




<script type="text/javascript" src="<?=base_url('assets/roy/roy-lightbox.js')?>"></script>
<script type="text/javascript">

var saveurl = site_url+'/post/saveimage';
var upload_url = site_url+'/gallery/upload';
var default_img = site_url+'/gallery/r/default-image.jpg';
var preview_el = $('.cover-preview');

$(document).on('click','.btn-add-more',function(){
  $(this).addClass('hidden');
  $('.btn-back').removeClass('hidden');
  $('.form-add').removeClass('hidden');
  $('.cacao-variety-list').addClass('hidden');

});
$(document).on('click','.btn-back',function(){

  $(this).addClass('hidden');

  $('.btn-add-more').removeClass('hidden');
  $('.form-add').addClass('hidden');
  $('.cacao-variety-list').removeClass('hidden');

  $('form')[0].reset();

});

$(document).on('click','.btn-upload',function(){

 var title = $('input[name="variety"]').val();
 var description = $('textarea[name="description"]').val();

 if(title.length <= 0 || title == ""){
  title = 'No title';
 }

  if(description == ""){
  description = 'No description';
 }
console.log(description);
 $('input[name="img_title"]').val(title);
 $('textarea[name="img_description"]').val(description);

});


</script>

<script type="text/javascript" src="<?=base_url('assets/js/image-uploader-v1.js')?>"></script>