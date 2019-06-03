

    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-flag"></i> Gallery
        <small>Gallery / index</small>
      </h1>
    </section>
    <section class="content">
    	<div class="row">	
    		<div class="col-md-12">

<button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#modalUpload"><i class="fa fa-plus"></i> Add photos</button>
    		</div>
    	</div>
    </section>


<!-- Modal -->
<div id="modalUpload" class="modal fade" role="dialog">
  <div class="modal-dialog modal-lg">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Modal Header</h4>
      </div>
      <div class="modal-body">
        <p>
        <div class="form-responsive">
    				<form class="form">

              <style type="text/css">
                .img-preview-upload
                {
                  height:400px;width: 100%;margin:auto;

                }
                .img-preview-upload > img{
                                   
                    object-fit: cover; 
                }
              </style>
              <div class="row">
                <div class="col-md-8">
                  
              <div class='img-preview-upload '>
                <img src="<?=base_url('public/images/default-image.jpg')?>" id="img-preview" >
              </div>
                </div>
                <div class="col-md-4">
                  

              <div class="form-group">
                <label></label>
                <input type="file" name="uploadimage" accept="image/*" />


              </div>

                </div>
              </div>


              
    				</form>
    			</div>
    		</p>
      </div>
      <div class="modal-footer">
        <button class="btn" id="btnUpload">Upload</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
<!-- end modal upload -->

<script type="text/javascript">

  $(function(){
      var is_new = false;
    $("input[name='uploadimage']").on('change',function(){


      var image =document.getElementById('img-preview')
      var files  = $(this)[0].files
      var file =  files[0]
      $('#img-preview').attr('src',window.URL.createObjectURL(file));

      
      var cropper = new Cropper(image,{
        aspectRatio :290/220
        })
      cropper.crop()

      $('#btnUpload').on('click',function(){

      cropper.getCroppedCanvas().toBlob(function (blob) {

            var formData = new FormData();
            formData.append('croppedImage', blob);

            $.ajax('<?=site_url('gallery/upload')?>', {
              method: "POST",
              data: formData,
              processData: false,
              contentType: false,
              success: function (response) {
                console.log(response);
              },
              error: function () {
                console.log('Upload error');
              }
            });

          
        })



      });

      })



    });

</script>