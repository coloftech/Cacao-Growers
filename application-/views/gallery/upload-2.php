<style type="text/css">
	
	.img-preview{
	margin: auto;
	padding: 0.5em;
	width: calc(70% - 1em);
	}

	img{
		width: 100%;
	}
	.required{
		color: red;
		font-weight: normal;
		font-size: 10px;
	}
</style>
	<section class="content">

    	<div class="row">	
    		<div class="col-md-12">

				<button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#modalUpload"><i class="fa fa-plus"></i> Add photos</button>
    		</div>
    	</div>


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
				<div class="col-md-6">
		<div class="img-preview">
			
		<div class="result"></div>

		</div>

	</div>
	<div class="col-md-6">
		<div class="information">
			<div class="form-group">			
			<input type="file" id="file-input"  accept="image/*" >
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
      </div>
    </div>

  </div>
</div>


	</section>


<script type="text/javascript">
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


      cropper.getCroppedCanvas().toBlob(function (blob) {
      		var img_title = $('input[name="img_title"]').val();
      		var img_description = $('textarea[name="img_description"]').val();
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

            var formData = new FormData();

            formData.append('croppedImage', blob);
            formData.append('img_title',img_title);
            formData.append('img_description',img_description);
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


</script>