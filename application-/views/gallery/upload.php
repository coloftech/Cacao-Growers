<style type="text/css">
	
.page {
	margin: 1em auto;
	max-width: 768px;
	display: flex;
	align-items: flex-start;
	flex-wrap: wrap;
	height: 100%;
}

.box {
	padding: 0.5em;
	width: 100%;
	margin:0.5em;
}

.box-2 {
	padding: 0.5em;
	width: calc(100%/2 - 1em);
}

.options label,
.options input{
	width:4em;
	padding:0.5em 1em;
}
.btn-cropped{
	background:white;
	color:black;
	border:1px solid black;
	padding: 0.5em 1em;
	text-decoration:none;
	margin:0.8em 0.3em;
	display:inline-block;
	cursor:pointer;
}

.hide {
	display: none;
}

img {
	max-width: 100%;
}


</style>
	<main class="page">
	<h2>Upload ,Crop and save.</h2>
	<!-- input file -->
	<div class="box">
		<input type="file" id="file-input">
	</div>
	<!-- leftbox -->
	<div class="box-2">
		<div class="result"></div>
	</div>
	<!--rightbox-->
	<div class="box-2 img-result">
		<!-- result of crop -->
		<img class="cropped hide" src="" alt="">

		<div class="information">
			<div class="form-group">
				<label>Title</label>
				<input type="text" name="img_title" class="form-control input-sm">
			</div>
			<div class="form-group">
				<label>Description</label>
				<textarea class="form-control input-sm" name="img_description" rows="5"></textarea>
			</div>
			<div class="form-group">
				
					<!-- save btn -->
					<button class="btn btn-primary save hide">Upload</button>

			</div>		
		</div>
	</div>
	<!-- input file -->
	<div class="box">
		<div class="options hide">
			<label> Width</label>
			<input type="number" class="img-w" value="300" min="100" max="1200" />
		</div>
		<!-- download btn -->
		<a href="" class="btn download hide">Download</a>
	</div>
</main>

<script type="text/javascript">
	let result = document.querySelector('.result'),
img_result = document.querySelector('.img-result'),
img_w = document.querySelector('.img-w'),
img_h = document.querySelector('.img-h'),
options = document.querySelector('.options'),
save = document.querySelector('.save'),
cropped = document.querySelector('.cropped'),
dwn = document.querySelector('.download'),
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

            var formData = new FormData();
            formData.append('croppedImage', blob);
            formData.append('img_title',$('input[name="img_title"]').val());
            formData.append('img_description',$('textarea[name="img_description"]').val());
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


  // get result to data uri
  /*let imgSrc = cropper.getCroppedCanvas({
		width: img_w.value // input value
	}).toDataURL();
  // remove hide class of img
  cropped.classList.remove('hide');
	img_result.classList.remove('hide');
	// show image cropped
  cropped.src = imgSrc;
  dwn.classList.remove('hide');
  dwn.download = 'imagename.png';
  dwn.setAttribute('href',imgSrc);
  */
});



</script>