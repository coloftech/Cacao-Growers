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
<style type="text/css">
.radio{
  display: block;
  text-align: left;
}
.radio > label{
    min-width:150px;display: inline-block;text-align: left;
  }
  .required{
    color: red;;
  }
</style>    
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-flag"></i> Survey
        <small>Survey / Add</small>
      </h1>
    </section>
    
    <section class="content">
    
        <div class="row">

            <div class="col-md-9 " id="survey-area">
              <!-- general form elements -->
                
                <div class="box box-primary">
                    <div class="box-header">
                        <h3 class="box-title">Add Respondent</h3>
                    </div><!-- /.box-header -->
                    <!-- form start -->
                    <div class="box-body">
                      <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true"></div>
                        <ul class="nav nav-tabs" id="surveytabs">
                          <li class="active"><a data-toggle="tab" href="#home">Home</a></li>
                          <li><a data-toggle="tab" href="#menu1">Farm Profile</a></li>
                          <li><a data-toggle="tab" href="#menu2">Pest & Diseases</a></li>
                          <li><a data-toggle="tab" href="#menu3">Production Management</a></li>
                          <li><a data-toggle="tab" href="#menu4">Post Harvest</a></li>
                          <li><a data-toggle="tab" href="#menu5">Marketing</a></li>
                        </ul>

                        <div class="tab-content">
                          <div id="home" class="tab-pane fade in active">
                            <h3>PERSONAL INFORMATION</h3>
                            <input type="hidden" value="<?=$token?>" id="token" name="token">
                            <p><?php include_once 'respondent_info2.php'; ?></p>
                          </div>
                          <div id="menu1" class="tab-pane fade">
                            <h3>FARM PROFILE</h3>
                            <p><?php include_once 'respondent_farmprofile2.php'; ?></p>
                          </div>

                          <div id="menu2" class="tab-pane fade">
                            <h3>PEST &amp; DISEASES</h3>
                            <p><?php include_once 'respondent_pest2.php'; ?></p>
                          </div>
                          <div id="menu3" class="tab-pane fade">
                            <h3>PRODUCTION MANAGEMENT</h3>
                            <p><?php include_once 'respondent_production2.php'; ?></p>
                          </div>
                          <div id="menu4" class="tab-pane fade">
                            <h3>POST HARVEST</h3>
                            <p><?php include_once 'respondent_harvest2.php'; ?></p>
                          </div>
                          <div id="menu5" class="tab-pane fade">
                            <h3>MARKETING</h3>
                            <p><?php include_once 'respondent_marketing2.php'; ?></p>
                            
                          </div>
                        </div>
                    </div>
                    
                </div>
            </div>

            <!-- left column -->
            <div class="col-md-3 print-none">

                <div class="box box-primary hidden">
                    <div class="box-header">
                        <h3 class="box-title">Survey options</h3>
                    </div><!-- /.box-header -->
                    <!-- form start -->
                    <div class="box-body">
                            <div class="list-group">
                              <a href="<?=site_url('asurvey')?>" class="list-group-item list-group-item-action active">
                                List
                              </a>
                              <a href="<?=site_url('asurvey/add')?>" class="list-group-item list-group-item-action">Add</a>
                              <a href="<?=site_url('asurvey/edit')?>" class="list-group-item list-group-item-action">Edit</a>
                              
                            </div>
                    </div>
                    
                </div>

                <div class="box box-primary">
                    <div class="box-header">
                        <h4 class="box-title">Reminders</h4>
                    </div><!-- /.box-header -->
                    <!-- form start -->
                    <div class="box-body">

                   <div class="xradio col-md-12">
                    <small>You may select more item or leave unchecked</small>
                    <div class="xradio-primary">                      
                    <input type="checkbox" name="checkbox" id="checkbox" checked="" class="disabled" disabled="true">
                    <label for="checkbox" class="disabled" disabled="true">Checkbox</label>
                    </div>
                  </div> 

                   <div class="xradio col-md-12">
                    <small>You can select one item only</small>
                    <div class="xradio-success">                      
                    <input type="radio" name="radio" id="radio" checked="">
                    <label for="radio">Radio</label>
                    </div>
                  </div> 

                    </div>
                    
                </div>
            </div>
        </div>    
    </section>

<script src="<?php echo base_url(); ?>assets/js/editUser.js" type="text/javascript"></script>
<script type="text/javascript">
  $(function(){
    $('.list-group-item').removeClass('active');
    $('.list-group-item-add').addClass('active');
    $('#home-tab').click();
    
    $('input:radio').each(function() { 
       $(this).val($(this).parent().text());
    });

  });

  $('a[href="#home"]').on('click',function(){

  });
  $('input:radio').on('change',function(){
    if($(this).is(":checked")) {
                                      
      var val = $(this).parent().text();
      $(this).val(val);
      /*console.log(val);*/
      }
      if($(this).parent().parent().find($('.others')).is(':checked')){

      }else{
        $(this).parent().parent().find($('.form-control')).val('');
      }
  });

  $('input:checkbox').on('change',function(){
    if($(this).is(":checked")) {
                                      
      var val = $(this).parent().text();
      $(this).val(val);
      /*console.log(val);*/
      }
  });
  

                                $('.others').on('change',function(){
                              if($(this).is(":checked")) {
                                      
                                    $(this).parent().find($('.form-control')).removeAttr('readonly');
                                  }else{
                                    $(this).val('');
                                    $(this).parent().find($('.form-control')).val('').prop('readonly','true');
                                  }
                              });
                              $('.form-control').on('blur',function(){
                                $(this).parent().find('.others').val($(this).val());
                                
                              });


</script>

<script type="text/javascript">
  
$(document).on('click','#btnsaveAll',function(){

 /*   if ($('#btn-continue').is(':visible')) {
          $('#btn-continue').click();
           menu_1 = false;
            return false;
        }
    if (menu_1 == false) {

      notify(false,'Please fill up personal information first.');
      $('.nav-tabs a[href="#home"]').tab('show');
      return false;
    };*/

  var personalInfo = new Array($('#frmPersonalInfo').serializeAssoc());  
  var frmaddress = new Array($('#frmaddress').serializeAssoc());
  var farm = $('#frm_farmprofile').serializeAssoc();
  var pests = $('#frmpest').serializeAssoc();
  var production = $('#frmproduction').serializeAssoc();
  var marketing = $('#frmmarketing').serializeAssoc();
  var harvest = $('#frmharvest').serializeAssoc();

var personal  = JSON.stringify(personalInfo.concat(frmaddress));
    farm = JSON.stringify(new Array(farm));
    pests = JSON.stringify(new Array(pests));
    production = JSON.stringify(new Array(production));
    harvest = JSON.stringify(new Array(harvest));
    marketing = JSON.stringify(new Array(marketing));

var token = $('#token').val();
var frmdata = 'personal='+personal+
              '&farm='+farm+
              '&pests='+pests+
              '&production='+production+
              '&harvest='+harvest+
              '&marketing='+marketing+'&token='+token;
  $.ajax({
    url: site_url+'/asurvey/save',
    type: 'post',
            dataType: 'json',
            data: frmdata, 
            beforeSend: function(){
              /*console.clear();*/
            },
            success: function(response){

              if (response.status == true) {
                notify('success',response.msg);
                $('.results').removeClass('hidden').html($('<div/>').addClass('alert alert-success').append(response.msg));
                setTimeout(function(){
                  location.reload();
                },2000)
                return false;
              }
                notify('warning',response.msg);
                $('.results').html($('<div/>').addClass('alert alert-warning').append(response.msg));

              console.log(response);
            },
              error: function (request, status, error) {
                console.log(request.responseText);
            }
  })
});

</script>


<script type="text/javascript">
  $(function(){
    /* convert tab to panel for mobile view*/
    $('#surveytabs').tabToPanel();

  })
</script>