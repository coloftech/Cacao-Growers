    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Mailbox
        <small>13 new messages</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Mailbox</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-md-3">
          <a href="<?=site_url('mail')?>" class="btn btn-primary btn-block margin-bottom">Back to Inbox</a>

          <div class="box box-solid">
            <div class="box-header with-border">
              <h3 class="box-title">Folders</h3>

              <div class="box-tools">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
              </div>
            </div>
            <div class="box-body no-padding">
              <ul class="nav nav-pills nav-stacked">
                <li><a href="mailbox.html"><i class="fa fa-inbox"></i> Inbox
                  <span class="label label-primary pull-right">12</span></a></li>
                <li><a href="#"><i class="fa fa-envelope-o"></i> Sent</a></li>
                <li><a href="#"><i class="fa fa-file-text-o"></i> Drafts</a></li>
                <li><a href="#"><i class="fa fa-filter"></i> Junk <span class="label label-warning pull-right">65</span></a>
                </li>
                <li><a href="#"><i class="fa fa-trash-o"></i> Trash</a></li>
              </ul>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /. box -->
          <div class="box box-solid">
            <div class="box-header with-border">
              <h3 class="box-title">Labels</h3>

              <div class="box-tools">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body no-padding">
              <ul class="nav nav-pills nav-stacked">
                <li><a href="#"><i class="fa fa-circle-o text-red"></i> Important</a></li>
                <li><a href="#"><i class="fa fa-circle-o text-yellow"></i> Promotions</a></li>
                <li><a href="#"><i class="fa fa-circle-o text-light-blue"></i> Social</a></li>
              </ul>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
        <div class="col-md-9">
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Compose New Message</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <form class="form" id="frmcompose">
              <div class="form-group">
                <input class="form-control" placeholder="To:" name="msg_to" id ="msg_to">
              </div>
              <div class="form-group">
                <input class="form-control" placeholder="Subject:" name="msg_subject" id="msg_subject">
              </div>
              <div class="form-group">
                    <textarea id="compose-textarea" class="form-control" name="msg_content" style="height: 300px">
                      
                    </textarea>
              </div>
              <div class="form-group">
                <div class="btn btn-default btn-file disabled">
                  <i class="fa fa-paperclip"></i> Attachment
                  <input type="file" name="attachment" id="input_file" accept=".doc,.docx,application/msword,application/vnd.openxmlformats-officedocument.wordprocessingml.document,image/*,application/zip,.rar,.gzip" disabled>
                </div>
                <p class="attached-title">No attachement</p>
                <p class="help-block">Max. 32MB</p>
              </div>
              </form>
            </div>
            <!-- /.box-body -->
            <div class="box-footer">
              <div class="pull-right">
                <button type="button" class="btn btn-default btn-draft" disabled><i class="fa fa-pencil"></i> Draft</button>
                <button type="submit" class="btn btn-primary btn-send" disabled><i class="fa fa-envelope-o"></i> Send</button>
              </div>
              <button type="reset" class="btn btn-default"><i class="fa fa-times"></i> Discard</button>
            </div>
            <!-- /.box-footer -->
          </div>
          <!-- /. box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->

    <script>
  $(function () {
    //Add text editor
   /* $("#compose-textarea").wysihtml5({
      toolbar:{    
    "font-styles": true, //Font styling, e.g. h1, h2, etc. Default true
    "emphasis": true, //Italics, bold, etc. Default true
    "lists": true, //(Un)ordered lists, e.g. Bullets, Numbers. Default true
    "link": true, //Button to insert a link. Default true
    "html": true, //Button which allows you to edit the generated HTML. Default false
    "image": false, //Button to insert an image. Default true,
    "color": false, //Button to change color of font  
    "blockquote": true, //Blockquote  
    "size": 'sm', //default: none, other options are xs, sm, lg
    "fa": true
      }
    });

    */

 $("#compose-textarea").wysihtml5({
      toolbar:{  
        "html": true,
        "image": false,
        "size": 'sm',
        "fa": true
      }
    });

 $('.btn-file').removeClass('disabled');
 $('#input_file').removeAttr('disabled');

  });
  var attachment = [];
  var f_id=0;

$('form#frmcompose input').on('change',function(){

  if($(this).val().length > 0){
    $('.btn-draft').removeAttr('disabled');
  }else{

    $('.btn-draft').attr('disabled',true);
  }

})
$('#input_file').on('change',function(){

    var inputfile = document.getElementById('input_file');
    if(inputfile.files && inputfile.files.length == 1){
     var file = inputfile.files[0]
     $('.attached-title').html($('<a/>').text(file.name).addClass('btn btn-default btn-xs btn-attached').attr('title','Click to remove').data('fileid',f_id));
     attachment.push(file);
     f_id++;
    }else{
      $(this).val('');
     $('.attached-title').html('');
    }
})
$(document).on('click','.btn-attached',function(){
      console.log($(this).data('fileid'));
     $('.attached-title').html('');
})

  $('.btn-send').on('click',function(){
    var formdata = new FormData();
    var inputfile = document.getElementById('input_file');
    var file = [];//inputfile.files[0];
    if(inputfile.files && inputfile.files.length == 1){
     file = inputfile.files[0]
     $('')
    }


    console.log(file.length);
    var content =  $('iframe.wysihtml5-sandbox').contents().find('.wysihtml5-editor').html();
    formdata.append('attachment',file);
    formdata.append('msg_content',content);
    formdata.append('msg_title',$('#msg_title').val());
    formdata.append('msg_subject',$('#msg_subject').val());


  })
</script>