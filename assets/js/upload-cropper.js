
  var cover = default_img,
      gallery_id = 0,
      rdupload = 1,
      data = [];
        data.title = 'No image title';
        data.description = 'No image description';
        data.url = default_img;
        data.image_id = 0;

    let result = document.querySelector('.result'),
    save = document.querySelector('.save'),
    upload = document.querySelector('#file-input'),
    cropper = '';              


$(function() {
var modal= '<div id="modalUpload" class="modal fade" role="dialog"><div class="modal-dialog modal-lg"><div class="modal-content"><div class="modal-header"><button type="button" class="close" data-dismiss="modal">&times;</button><h4 class="modal-title">Upload image</h4></div><div class="modal-body"><p><div class="row"><div class="col-md-7"><div class="img-preview"><div class="result"></div></div></div><div class="col-md-5"><div class="information"><div class="form-group"> <div class="radio"><label for="isupload" class="btn"><input value="1" name="rdupload" class="radio" type="radio" id="isupload" checked=""> Upload photo</label>&nbsp;<label for="isdefault" class="btn"><input value="2" name="rdupload" class="radio" type="radio" id="isdefault"> Use default</label></div><input type="file" id="file-input"  accept="image/*" class=""></div><div class="form-group"><label>Title <small class="required">(This field is required)</small></label><input type="text" name="img_title" class="form-control input-sm"></div><div class="form-group"><label>Description <small class="required">(This field is required)</small></label><textarea class="form-control input-sm" name="img_description" rows="5"></textarea></div><div class="form-group"><button class="btn btn-primary save hide">Upload</button></div></div></div></div></p></div><div class="modal-footer"><div class="pull-right loading hidden" style="height: 50px;width: 50px;"><img src="public/images/loading.gif" style="width:100%;"></div></div></div></div></div>';
  $('body').append(modal);
});

$(document).on('change','input:radio[name="rdupload"]',function(){
  if($(this).val() == 1){
    $('#file-input').removeClass('hidden').val(null);
    rdupload = 1;
    $('.result').html('');
    $('.save').addClass('hide');
    return false;
  }

    let img = document.createElement('img');
    img.id = 'image';
    img.src = cover;

    $('.result').html(img);
    $('.save').removeClass('hide');
    $('#file-input').addClass('hidden').val(null);
    rdupload = 2;
})


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
            aspectRatio :599/343
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

            data = [];
              data.title = img_title;
              data.description = img_description;
              data.url = default_img;

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
              data = [];
              data.title = img_title;
              data.description = img_description;

            var formData = new FormData();

            formData.append('croppedImage', blob);

            $.ajax({
              url: upload_url,
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
                console.log(data);
                return false;

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
              url: saveurl,
              type: "POST",
              data: 'title='+data.title+'&description='+data.description+'&link='+data.url,
              dataType: 'json',
              success: function (response) {
                console.log(response);
                if(response.status == true){  
                  data.gallery_id = response.image_id;
                  setPreview();
                  console.log(data);

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

var setPreview = function(){
  preview_el.html('');
  preview_el.append($('<img />').attr('src',data.url).attr('style','width:100%;'));
}
