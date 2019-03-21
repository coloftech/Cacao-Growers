<form id="frmproduction" class="form">

<div class="form-group">
                              <label>Climatic Factor</label>
                                <br/>
                                &nbsp;<span>Rainfall</span><input type="text" class="form-control" name="rainfall">
                                &nbsp;<span>Temperature</span><input type="text" class="form-control" name="temperature">
                                &nbsp;<span>Elevation</span><input type="text" class="form-control" name="elevation">
                                &nbsp;<span>Slope</span><input type="text" class="form-control" name="slope">
                            </div>

                            <div class="form-group">
                              <label>Edaphic factors</label>
                             <br/>
                                &nbsp;<span>Soil type </span><input type="text" class="form-control" name="soil_type">
                                &nbsp;<span>Soil depth </span><input type="text" class="form-control" name="soil_depth">
                                &nbsp;<span>Soil texture </span><input type="text" class="form-control" name="soil_texture">
                                &nbsp;<span>Soil structure </span><input type="text" class="form-control" name="soil_structure">
                            
                            </div>

                            <div class="form-group">
                              <label>Cropping System:</label>
                               <div class="radio">
                              <label for="cropingsystem_1" class="btn btn-sm"><input type="checkbox" name="cropingsystem[]" id="cropingsystem_1" >Monocropping</label>
                              <label for="cropingsystem_2" class="btn btn-sm"><input type="checkbox"  name="cropingsystem[]"id="cropingsystem_2">Inter-cropping</label>
                              <br/><label for="cropingsystem_3" class="btn btn-sm"><input type="checkbox"  name="cropingsystem[]"id="cropingsystem_3" class="others">Others, specify <input type="text" name="croping_others" class="form-control" readonly="true"> </label>
                              
                              </div>
                            </div>

                            <div class="form-group">
                              <label>Associated Crops:</label>
                              <div class="radio">
                              <label for="AssociatedCrops_1" class="btn btn-sm"><input type="checkbox" name="AssociatedCrops[]" id="AssociatedCrops_1" value="1">Banana</label>
                              <label for="AssociatedCrops_2" class="btn btn-sm"><input type="checkbox"  name="AssociatedCrops[]"id="AssociatedCrops_2" value="2">Coffee</label>
                              <label for="AssociatedCrops_3" class="btn btn-sm"><input type="checkbox"  name="AssociatedCrops[]"id="AssociatedCrops_3" value="3">Peanut</label>
                              <label for="AssociatedCrops_4" class="btn btn-sm"><input type="checkbox"  name="AssociatedCrops[]"id="AssociatedCrops_4" value="4">Corn</label>
                              
                              </div>


                              <div class="radio">
                                
                              <label for="AssociatedCrops_5" class="btn btn-sm"><input type="checkbox"  name="AssociatedCrops[]"id="AssociatedCrops_5" value="5" class="others">Peanut
                              <input type="text" class="form-control" name="peanuts" readonly="true"></label>
                              </div>

                              <div class="radio">
                                
                              <label for="AssociatedCrops_6" class="btn btn-sm"><input type="checkbox"  name="AssociatedCrops[]"id="AssociatedCrops_6" value="6" class="others">Vegestable, specify
                              <input type="text" class="form-control" name="vegetables" readonly="true"></label>
                              </div>

                              <div class="radio">
                                
                              <label for="AssociatedCrops_7" class="btn btn-sm"><input type="checkbox"  name="AssociatedCrops[]"id="AssociatedCrops_7" value="7" class="others">Root crops, specify 
                              <input type="text" class="form-control" name="root_crops" readonly="true"></label>
                              </div>
                              <div class="radio">
                                
                              <label for="AssociatedCrops_8" class="btn btn-sm"><input type="checkbox"  name="AssociatedCrops[]"id="AssociatedCrops_8" value="8" class="others">Trees, specify 
                              <input type="text" class="form-control" name="trees" readonly="true"></label>
                              </div>
                              <div class="radio">
                                
                              <label for="AssociatedCrops_9" class="btn btn-sm"><input type="checkbox"  name="AssociatedCrops[]"id="AssociatedCrops_9" value="9" class="others">Fruit crops, specify 
                              <input type="text" class="form-control" name="fruit" readonly="true"></label>
                              </div>
                              <div class="radio">
                                
                              <label for="AssociatedCrops_10" class="btn btn-sm"><input type="checkbox"  name="AssociatedCrops[]"id="AssociatedCrops_10" value="10" class="others">Others, specify 
                              <input type="text" class="form-control" name="othercrops" readonly="true"></label>
                              </div>

                            </div>

                            <div class="form-group">
                              <label>Fertilizer applied</label>
                              <div class="radio">
                              <label for="Fertilizer_1" class="btn btn-sm"><input type="checkbox" name="Fertilizer[]" id="Fertilizer_1" value="1" checked>Organic fertilizer</label>
                              <label for="Fertilizer_2" class="btn btn-sm"><input type="checkbox"  name="Fertilizer[]"id="Fertilizer_2" value="2">Inorganic fertilizer</label>
                             
                              </div>
                            </div>

                            <div class="form-group">
                              <label>Frequency of fertilizer application</label>
                              <div class="radio">
                              <label for="appFrequency_1" class="btn btn-sm"><input type="radio" name="appFrequency" id="appFrequency_1" value="1" checked>Monthly</label>
                              <label for="appFrequency_2" class="btn btn-sm"><input type="radio"  name="appFrequency"id="appFrequency_2" value="2">every 3 months</label>
                              <label for="appFrequency_3" class="btn btn-sm"><input type="radio"  name="appFrequency"id="appFrequency_3" value="3">every 6 months</label>
                              <label for="appFrequency_4" class="btn btn-sm"><input type="radio"  name="appFrequency"id="appFrequency_4" value="4">every 9 months</label>
                              <label for="appFrequency_5" class="btn btn-sm"><input type="radio"  name="appFrequency"id="appFrequency_5" value="5">yearly application</label>
                             
                              </div>
                            </div>

                            <div class="form-group">
                              <label> Did you practice pruning?</label>
                            
                              <div class="radio">
                              <label for="practicepruning_1" class="btn btn-sm"><input type="radio" name="practicepruning" id="practicepruning_1" value="1" checked>Yes</label>
                              <label for="practicepruning_2" class="btn btn-sm"><input type="radio"  name="practicepruning"id="practicepruning_2" value="2">No</label>
                              <br/><label>If yes, , where did you get technical assistance of pruning?</label><input type="text" class="form-control" name="practicepruning_yes">
                              </div>
                            </div>

                            <div class="form-group">
                              <label>Did the Department of Agriculture conduct training and services about cacao production and pest management?</label>
                                          
                              <div class="radio">
                              <label for="da_conducttraining_1" class="btn btn-sm"><input type="radio" name="da_conducttraining" id="da_conducttraining_1" value="1" checked>Yes</label>
                              <label for="da_conducttraining_2" class="btn btn-sm"><input type="radio"  name="da_conducttraining"id="da_conducttraining_2" value="2">No</label>
                              <br/><label>If yes, how often?</label><input type="text" class="form-control"  name="da_conducttraining_yes">
                              </div>
                            </div>

                            <div class="form-group">
                              <label>Is there any technical staff from the Department of Agriculture who shared technology for production marketing and services? </label>
                                          
                              <div class="radio">
                              <label for="sharedtechnology_1" class="btn btn-sm"><input type="radio" name="sharedtechnology" id="sharedtechnology_1" value="1" checked>Yes</label>
                              <label for="sharedtechnology_2" class="btn btn-sm"><input type="radio"  name="sharedtechnology"id="sharedtechnology_2" value="2">No</label>
                              
                              </div>
                            </div>
                            <div class="form-group">
                              <button class="btn btn-primary">Save</button>
                            </div>
                            </form>
                            <?php // $obj = $productions[0]; ?>
<script type="text/javascript">
  $(function(){

var associated_crops = <?php echo json_encode(explode(',', isset($obj->associated_crops) ? $obj->associated_crops : '' )); ?>;
var fertilizer_applied = <?php echo json_encode(explode(',', isset($obj->fertilizer_applied) ? $obj->fertilizer_applied : '')); ?>;

var cropingsystem = <?php echo json_encode(explode(',', isset($obj->cropingsystem) ? $obj->cropingsystem : '')); ?>;

  $('#frmproduction input:checkbox').each(function() {
    

      var input = $(this);
      var val = $(this).parent().text();
        if (associated_crops.length > 0) {
          associated_crops.forEach(function(item) {  

          if(val.toLowerCase().trim() == item.toLowerCase().trim()){
             
                input.prop('checked', true);
          }else{

          }
          });
        };
        
        if (fertilizer_applied.length > 0) {
          fertilizer_applied.forEach(function(item) {  

          if(val.toLowerCase().trim() == item.toLowerCase().trim()){
             
                input.prop('checked', true);
          }else{

          }
          });
        };

        if (cropingsystem.length > 0) {
          cropingsystem.forEach(function(item) {  

          if(val.toLowerCase().trim() == item.toLowerCase().trim()){
             
                input.prop('checked', true);
          }else{

          }
          });
        };


     
  
    });
});


</script>

                              <script type="text/javascript">


                              $('#frmproduction').on('submit',function(e){
                                 
                                 e.preventDefault();
    var frmdata = $(this).serialize();

    /*if (respondent_id == 0) {

        notify(false,'Please fill and save personal information first.');
        return false;
    };*/

        $.ajax({
            url: site_url+'/survey/save/production/'+respondent_id,
            type: 'post',
            dataType: 'json',
            data: frmdata, 
            beforeSend: function(){

              /* $('#frmland_ownership input').prop('readonly','true');
               $('#frmland_ownership button').prop('disabled','true');*/
            },
            success: function(response){
                console.clear();

              if(response.status == true){
                $('a[href="#menu4"]').click();
                console.log(response);
                notify('success','Respondent farm profile successfully save.');
              }else{
                notify('warning',response.msg);

                console.log(response);
              }
              return false;

            },
              error: function (request, status, error) {
                console.log(request.responseText);
            },
              complete: function(){

              }
            });

    return false;

                              });
                              </script> 