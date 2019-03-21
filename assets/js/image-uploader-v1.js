$(function() {
var modal= '<div id="modalUpload" class="modal fade" role="dialog"><div class="modal-dialog modal-lg"><div class="modal-content"><div class="modal-header"><button type="button" class="close" data-dismiss="modal">&times;</button><h4 class="modal-title">Upload image</h4></div><div class="modal-body"><p><div class="row"><div class="col-md-7"><div class="img-preview"><div class="result"></div></div></div><div class="col-md-5"><div class="information"><div class="form-group"><input type="file" id="file-input"  accept="image/*" class=""></div><div class="form-group"><label>Title/Alt <small class="required">(This field is required)</small></label><input type="text" name="img_title" class="form-control input-sm"></div><div class="form-group"><button class="btn btn-primary save hide">Upload</button></div></div></div></div></p></div><div class="modal-footer"><div class="pull-right loading hidden" style="height: 50px;width: 50px;"><img src="public/images/loading.gif" style="width:100%;"></div></div></div></div></div>';
  $('body').append(modal);
});

let result = document.querySelector('.result');


$('#file-input').on('change',function(e){

	console.log(e.target.files);

  if (e.target.files.length) {
    // start file reader
    const reader = new FileReader();
    reader.onload = function(e){
      if(e.target.result){
        // create new image
        let img = document.createElement('img');
        img.id = 'image';
        img.src = e.target.result
        // clean result before
        result.html('');
        // append new image
        result.append(img);
        //options.classList.remove('hide');
        // init cropper
        cropper = new Cropper(img,{
            aspectRatio :599/343
        })




      }
    };
    reader.readAsDataURL(e.target.files[0]);
  }

});