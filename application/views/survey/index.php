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
        <i class="fa fa-flag"></i> Survey
        <small>Survey / home</small>
      </h1>
    </section>
    
    <section class="content">

            
            <div class="col-md-12">
              <!-- general form elements -->
                
                
                
                <div class="box box-primary">
                    <div class="box-header">
                        <h3 class="box-title">Survey List</h3>
                    </div><!-- /.box-header -->
                    <!-- form start -->
                    <div class="box-body">
                      <div class="row">
                        <div class="col-md-12 print-none">
                          <form class="form-inline" action="/action_page.php">
                            <label for="citytown">Address</label>
                            <select type="text" id="citytown" name="citytown" class="form-control input-sm">
                              <option>All</option>
                              <?php foreach ($cities as $key): ?>
                                <option><?=$key?></option>
                              <?php endforeach ?>
                            </select>
                            <label for="citytown">Year of survey</label>
                            <select type="text" id="dateofsurvey" name="dateofsurvey" class="form-control input-sm">
                              <option>All</option>
                              <?php 
                              for ($i = 2018; $i <= date('Y'); $i++) {
                                    echo "<option>$i</option>";
                                }
                                 ?>
                            </select>
                            
                            <button type="submit" class="btn btn-sm"><i class="fa fa-search"></i></button>
                             <div class="pull-right">
                            <button type="button" class="btn btn-sm btn-print hidden"><i class="fa fa-print"></i></button>
                          </div>
                          </form>
                         
                        </div>
                        <br/>
                        <br/>
                      </div>
                       <div class="table-responsive print-yes">
                           <table class="table table-hover" id="tblsurvey">
                               <thead>
                               <tr>
                                   <th></th>
                                   <th>Name</th>
                                   <th>Address</th>
                                   <th>Age</th>
                                   <th>Civil status</th>
                                   <th>Family size</th>
                                   <th>Annual income</th>
                                   <th>Education</th>
                                   <th>Date of survey</th>
                               </tr></thead>
                               <tbody>
                               <?php if (is_array($list_all)): ?>
                                   <?php foreach ($list_all as $key): ?>
                                       
                                   <tr style="cursor:pointer;">
                                        <td><a href="<?=site_url('asurvey/edit/')?><?=$key->respondent_id?>" class="btn btn-default btn-xs"><i class="fa fa-edit"></i></a></td>
                                       <td><?=ucwords(strtolower($key->fname))?> <?=ucwords(strtolower($key->lname))?></td>
                                       <td><?=$key->address?></td>
                                       <td><?=$key->age?></td>
                                       <td><?=$key->civilstatus?></td>
                                       <td><?=$key->familysize?></td>
                                       <td><?=$key->annualincome?></td>
                                       <td><?=$key->education?></td>
                                       <td><?=date('Y-m-d',strtotime($key->date_of_survey))?></td>
                                   </tr>
                                   <?php endforeach ?>
                               <?php endif ?>
                               </tbody>
                           </table>
                       </div>
                    </div>
                    
                </div>
            </div>
                
        <div class="row">
            <!-- left column -->
            <div class="col-md-3 print-none hidden">

                <div class="box box-primary">
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
            </div>
        </div>    
    </section>

<script src="<?php echo base_url(); ?>assets/js/editUser.js" type="text/javascript"></script>


<script type="text/javascript">
var surveyTable; //global variable to hold reference to dataTables
var oSettings; //global variable to hold reference to dataTables setting

  $(document).ready(function() {
    surveyTable= $('#tblsurvey').DataTable( {
        "lengthMenu": [[25, 50, 100, -1], [25, 50, 100, "All"]]
        
    } );
     oSettings = surveyTable.settings(); //store its settings in oSettings

    $('.dataTables_filter').css({'text-align':'left'}).addClass('print-none');
    $('.dataTables_filter input').addClass('form-control').css({'width':'150px','display':'inline-block'});

    $('.dataTables_length').css({'text-align':'left'}).addClass('print-none');
    $('.dataTables_length select').addClass('form-control').css({'width':'75px','display':'inline-block'});

    $('.btn-print').removeClass('hidden');
} );


  $('form').on('submit',function(e){
    e.preventDefault();
    var data = $(this).serializeAssoc();
    surveyTable = $('#tblsurvey').DataTable();
    var citytown = '';
    var dateofsurvey = '';
    if( data.citytown != 'All'){
      citytown = data.citytown;
    }

    if( data.dateofsurvey != 'All'){
      dateofsurvey = data.dateofsurvey;
    }
    surveyTable.search(citytown + " " + dateofsurvey).draw();   

    return false;
  });
  
$('.btn-print').on('click',function(){

   oSettings[0]._iDisplayLength = -1;//oSettings[0].fnRecordsTotal();
   //set display length of dataTables settings to the total records available
   surveyTable.draw();  //draw the table
  window.print();

});


</script>