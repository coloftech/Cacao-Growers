<?php

$userId = '';
$name = '';
$email = '';
$mobile = '';
$roleId = '';

if(!empty($userInfo))
{
    foreach ($userInfo as $uf)
    {
        $userId = $uf->userId;
        $name = $uf->name;
        $email = $uf->email;
        $mobile = $uf->mobile;
        $roleId = $uf->roleId;
    }
}


?>

    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-flag"></i> Post
        <small>Post / home</small>
      </h1>
    </section>
    
    <section class="content">
    
        <div class="row">
            <!-- left column -->
            <div class="col-md-9">
              <!-- general form elements -->
                
                
                
                <div class="box box-primary">
                    <div class="box-header">
                        <h3 class="box-title">Post new update</h3>
                    </div><!-- /.box-header -->
                    <!-- form start -->
                    <div class="box-body">
                        <form class="form" action="" method="post">
                            <div class="form-group">
                                <label>Title</label>
                                <input name="title" type="text" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Message</label>
                                <textarea id="postcontent" name="content" class="form-control"></textarea>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary"  style="width:75px;" data-action='1'>SAVE</button>&nbsp;<button type="submit" class="btn btn-success" style="width:75px;" data-action='2'>PUBLISH</button>
                            </div>
                        </form>

                    </div>
                    
                </div>
            </div>
            <div class="col-md-3">

                <div class="box box-primary">
                    <div class="box-header">
                        <h3 class="box-title" style="width:100%;">COVER IMAGE <button class="btn btn-primary btn-xs  pull-right"  data-toggle="modal" data-target="#modalUpload"><i class="fa fa-image"></i> Add cover</button></h3>
                    </div><!-- /.box-header -->
                    <!-- form start -->
                    <div class="box-body">
                        <div class="cover-preview">
                            
                            <img class="img-preview" src="<?=site_url('gallery/r/default-image.jpg')?>" style="width:100%;"></img>

                        </div>
                    </div>
                    
                </div>
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

<script src="<?php echo base_url(); ?>assets/js/editUser.js" type="text/javascript"></script>
<script>
  $(function() {
    tinymce.init({
      selector: 'textarea#postcontent',  // change this value according to your HTML
      plugin: 'a_tinymce_plugin',
      a_plugin_option: true,
      a_configuration_option: 400
    });

  });
  var is_publish = false;
  $('button').on('click',function(){

    is_publish = $(this).data('action');
  });
  $('form').on('submit',function(e){
    e.preventDefault();
    var form = $(this).serialize();
        form = form + '&is_publish='+is_publish;
    $.ajax({
        data: form,
        type: 'post',
        url: "<?=site_url('post/add/')?>",
        dataType:'json',
        beforeSend: function(){
            console.log('processing');
        },
        success: function(response){
            if (response.status == true) {
                notify('success',response.msg);
            }else{

                notify('warning',response.msg);
            }
           console.log(response) ;
           return false;
        },
        error: function(request, status, error){
            console.log(request.responseText);
        },
        complete: function(){
           //console.clear();
        }
    });
  });


var saveurl = site_url+'/post/saveimage';
var upload_url = site_url+'/gallery/upload';
var default_img = site_url+'/gallery/r/default-image.jpg';
var preview_el = $('.cover-preview');



</script>

<script type="text/javascript" src="<?=base_url('assets/js/upload-cropper.js')?>"></script>