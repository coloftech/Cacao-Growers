<link rel="stylesheet" type="text/css" href="<?=base_url('assets/roy/roy-lightbox.css')?>">
<style type="text/css">
  .img-preview img{
    width: 100%;
  }
</style>

    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-flag"></i> Pest <a class="btn btn-primary btn-sm pull-right" data-toggle="modal" data-target="#modalUpload"><i class="fa fa-plus"></i> Add more</a>
        <small>Pest / index</small>
      </h1> 

    </section>
  <section class="content">
    <?php if (isset($images) && is_array($images)): ?>

      <?php foreach ($images as $image): ?>
        
<?php $imagesize = getimagesize(str_replace('http://localhost/cacao/index.php/gallery/r/', 'http://localhost/cacao/public/images/', $image->link)); ?>


        <div class="gallery">      
         <img class="img-thumbnail" src="<?=$image->link?>" alt="<?=$image->title?>" data-desc="<?=$image->description?>" data-size='<?=$imagesize[0]?> &times; <?=$imagesize[1]?>'>
      <?php endforeach ?>

      </div>
      <?php else: ?>    

        <div class="gallery">     
        <img src="http://localhost/cacao/themes/Company/images/2.jpg" alt="Snow 1" data-desc="Hello world 1">
        <img class="img-thumbnail" src="http://localhost/cacao/themes/Company/images/3.jpg" alt="Snow 2" data-desc="Hello world 2">
        <img class="img-thumbnail" src="http://localhost/cacao/themes/Company/images/4.jpg" alt="Snow 3" data-desc="Hello world 3">
        <img class="img-thumbnail" src="http://localhost/cacao/themes/Company/images/4.jpg" alt="Snow 4" data-desc="Hello world 4">
        <img class="img-thumbnail" src="http://localhost/cacao/themes/Company/images/4.jpg" alt="Snow 5" data-desc="Hello world 5">
      </div>
    <?php endif ?>




  </section>


<!-- Modal -->
<div id="modalUpload" class="modal fade" role="dialog">
  <div class="modal-dialog modal-lg">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Upload image</h4>
      </div>
      <div class="modal-body">
        <p>
              <div class="row">
        <div class="col-md-7">
    <div class="img-preview">
      
    <div class="result"></div>

    </div>

  </div>
  <div class="col-md-5">
    <div class="information">
      <div class="form-group">      
        <div class="radio">
          <label for="isupload" class="btn"><input value="1" name="rdupload" class="radio" type="radio" id="isupload" checked=""> Upload photo</label>&nbsp;<label for="isdefault" class="btn"><input value="2" name="rdupload" class="radio" type="radio" id="isdefault"> Use default</label>
        </div>
      <input type="file" id="file-input"  accept="image/*" class="">
      </div>
      <div class="form-group">
        <label>Title <small class="required">(This field is required)</small></label>
        <input type="text" name="img_title" class="form-control input-sm">
      </div>
      <div class="form-group">
        <label>Description <small class="required">(This field is required)</small></label>
        <textarea class="form-control input-sm" name="img_description" rows="5"></textarea>
      </div>
      <div class="form-group">  
        <button class="btn btn-primary save hide">Upload</button>
      </div>    
    </div>
  </div>

    </div>


      </p>
      </div>
      <div class="modal-footer">
        <div class="pull-right loading hidden" style="height: 50px;width: 50px;"><img src="<?=base_url('gallery/r/loading.gif')?>" style="width:100%;"></div>
      </div>
    </div>

  </div>
</div>

<!-- end modal upload -->

<script type="text/javascript">
  var defaultimg = '<?=site_url("gallery/r/pest-2.png")?>';
  var rdupload = 1;
$('input:radio[name="rdupload"]').on('change',function(){
  if($(this).val() == 1){
    $('#file-input').removeClass('hidden').val(null);
    rdupload = 1;
    $('.result').html('');
    $('.save').addClass('hide');
    return false;
  }

    let img = document.createElement('img');
    img.id = 'image';
    img.src = defaultimg;

    $('.result').html(img);
    $('.save').removeClass('hide');
    $('#file-input').addClass('hidden').val(null);
    rdupload = 2;
})

    let result = document.querySelector('.result'),
    save = document.querySelector('.save'),
    upload = document.querySelector('#file-input'),
    cropper = '';

// on change show image with crop options
upload.addEventListener('change', (e) => {

  if (e.target.files.length) {
    // start file reader
    const reader = new FileReader();
    reader.onload = (e)=> {
      if(e.target.result){
        // create new image
        let img = document.createElement('img');
        img.id = 'image';
        img.src = e.target.result
        // clean result before
        result.innerHTML = '';
        // append new image
        result.appendChild(img);
        // show save btn and options
        save.classList.remove('hide');
        //options.classList.remove('hide');
        // init cropper
        cropper = new Cropper(img,{
            aspectRatio :290/220
        })




      }
    };
    reader.readAsDataURL(e.target.files[0]);
  }
});


// save on click
save.addEventListener('click',(e)=>{
  e.preventDefault();

          var img_title = $('input[name="img_title"]').val();
          var img_description = $('textarea[name="img_description"]').val();

if(rdupload == 2){

          var data = [];
              data.title = img_title;
              data.description = img_description;
              data.url = defaultimg;

                  saveImageInfo(data);

  return false;
}
      cropper.getCroppedCanvas().toBlob(function (blob) {
          

          var error = false;
          if (img_title.length == 0) {
            error = true;
          }
          if (img_description.length == 0) {
            error = true;
          }
          if (error == true) {
            notify('warning','Please fill the required field!');
            return false;
          }
          var data = [];
              data.title = img_title;
              data.description = img_description;

            var formData = new FormData();

            formData.append('croppedImage', blob);

            $.ajax('<?=site_url('gallery/upload')?>', {
              method: "POST",
              data: formData,
              processData: false,
              contentType: false,
              dataType: 'json',
              beforSend: function(){
                $('.loading').removeClass('hidden');
              },
              success: function (response) {

                if (response.status == true) {
                  data.url = response.url;
                  saveImageInfo(data);

                }else{
                  notify('warning','No image was uploaded.')
                }

              },

              complete: function(){
                $('.loading').addClass('hidden');
              },
              error: function (request, status, error) {
                console.log(request.responseText);
              }
            });

          
        })

});



var saveImageInfo = function(data){

            $.ajax({
              url: '<?=site_url('pests/saveimage')?>',
              type: "POST",
              data: 'title='+data.title+'&description='+data.description+'&link='+data.url,
              dataType: 'json',
              success: function (response) {

                if(response.status == true){

                  notify('success',response.msg);
                  $('.modal').modal('hide');

                }else{
                  notify('warning',response.msg);
                }

              },

              error: function (request, status, error) {
                console.log(request.responseText);

              }
            });
}


</script>
<script type="text/javascript" src="<?=base_url('assets/roy/roy-lightbox.js')?>"></script>