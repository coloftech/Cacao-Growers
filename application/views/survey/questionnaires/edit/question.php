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
</style>    
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-flag"></i> Survey
        <small>Survey / Edit</small>
      </h1>
    </section>
    
    <section class="content">
    
        <div class="row">
            <!-- left column -->
            <div class="col-md-9">
              <!-- general form elements -->
                
                <div class="box box-primary">
                    <div class="box-header">
                        <h3 class="box-title">Edit respondent survey</h3>
                    </div><!-- /.box-header -->
                    <!-- form start -->
                    <div class="box-body">
                        <ul class="nav nav-tabs">
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
                            <p><?php include_once 'respondent_info.php'; ?></p>
                          </div>
                          <div id="menu1" class="tab-pane fade">
                            <h3>FARM PROFILE</h3>
                            <p><?php include_once 'respondent_farmprofile.php'; ?></p>
                          </div>

                          <div id="menu2" class="tab-pane fade">
                            <h3>PEST &amp; DISEASES</h3>
                            <p><?php include_once 'respondent_pest.php'; ?></p>
                          </div>
                          <div id="menu3" class="tab-pane fade">
                            <h3>PRODUCTION MANAGEMENT</h3>
                            <p><?php include_once 'respondent_production.php'; ?></p>
                          </div>
                          <div id="menu4" class="tab-pane fade">
                            <h3>POST HARVEST</h3>
                            <p><?php include_once 'respondent_harvest.php'; ?></p>
                          </div>
                          <div id="menu5" class="tab-pane fade">
                            <h3>MARKETING</h3>
                            <p><?php include_once 'respondent_marketing.php'; ?></p>
                          </div>
                        </div>
                    </div>
                    
                </div>
            </div>
            <div class="col-md-3">

                <div class="box box-primary">
                    <div class="box-header">
                        <h3 class="box-title">Survey options</h3>
                    </div><!-- /.box-header -->
                    <!-- form start -->
                    <div class="box-body">
                            <div class="list-group">
                              <a href="<?=site_url('survey')?>" class="list-group-item list-group-item-action list-group-item-home">
                                Survey home
                              </a>
                              <a href="<?=site_url('survey/add')?>" class="list-group-item list-group-item-action list-group-item-add active">Add new respondent</a>
                              <a href="<?=site_url('survey/edit')?>" class="list-group-item list-group-item-action list-group-item-edit">Edit survey</a>
                              <a href="#" class="list-group-item list-group-item-action">List all respondents</a>
                              <a href="#" class="list-group-item list-group-item-action disabled">Vestibulum at eros</a>
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

      var str1 = $(this).val();
      var str2 = $(this).data('php');
      if (str1 == undefined || str2 == undefined) {}else{

      if( str1.toLowerCase().trim() === str2.toLowerCase().trim()) {
        $(this).prop('checked',true);

      }
      else {
        $(this).removeAttr('checked');

      }
      }

    });

    $('input:checkbox').each(function() {

       $(this).val($(this).parent().text());

      //var str2 = $(this).data('checked');
      //console.log(str2);
      /*if (str2 == undefined) {

      }else{

        if(str2 == true) {
          $(this).prop('checked',true);
        }
        else {
          /*$(this).removeAttr('checked');*-/
        }
      }*/

    });

    
  });
  $('a[href="#home"]').on('click',function(){

  });
  $('input:radio').on('change',function(){
    if($(this).is(":checked")) {
                                      
      var val = $(this).parent().text();
      $(this).val(val);
      console.log(val);
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
      console.log(val);
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
                                console.log( $(this).parent().find('.others').val());
                              });


  $('a[href="#menu1"]').on('click',function(){
    if (respondent_id == 0) {

      notify('Please fill and save personal information first.');
      $('.nav-tabs a[href="#home"]').tab('show');
      return false;
    };
  });

  $('a[href="#menu2"]').on('click',function(){
    if (respondent_id == 0) {
      
      notify(false,'Please fill and save personal information first.');
      $('.nav-tabs a[href="#home"]').tab('show');
      return false;
    };
  });
  $('a[href="#menu3"]').on('click',function(){
    if (respondent_id == 0) {
      
      notify(false,'Please fill and save personal information first.');
      $('.nav-tabs a[href="#home"]').tab('show');
      return false;
    };
  });
  $('a[href="#menu4"]').on('click',function(){
    if (respondent_id == 0) {
      
      notify(false,'Please fill and save personal information first.');
      $('.nav-tabs a[href="#home"]').tab('show');
      return false;
    };
  });
  $('a[href="#menu5"]').on('click',function(){
    if (respondent_id == 0) {
      
      notify(false,'Please fill and save personal information first.');
      $('.nav-tabs a[href="#home"]').tab('show');
      return false;
    };
  });
  
</script>