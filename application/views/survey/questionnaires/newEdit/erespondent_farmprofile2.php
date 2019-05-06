            
            <form id="frm_farmprofile" class="form">   

               
              <div class="form-group width-full">

                <label class="question">Land Ownership</label>
                
                <div class="choices">
                   <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="land_ownership" id="lo1" value="Owned (Bought)" checked="true">
                    <label for="lo1">Owned (Bought)</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="land_ownership" id="lo2" value="Owned (Inherited)">
                    <label for="lo2">Owned (Inherited)</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="land_ownership" id="lo3" value="Tenanted">
                    <label for="lo3">Tenanted</label>
                    </div>
                  </div>
                </div>

                <div class="choices">
                   <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="land_ownership" id="lo4" value="Rented">
                    <label for="lo4">Rented</label>
                    </div>
                  </div> <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="land_ownership" id="lo5" value="Mortgage" >
                    <label for="lo5">Mortgage</label>
                    </div>
                  </div>
                </div>
              </div>

              
              <div class="form-group width-full">

                <label class="question">Farm Size</label>
                
                <div class="choices">
                   <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="FarmSize" id="fs1" value="0.5 ha below" checked="true">
                    <label for="fs1">0.5 ha below</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="FarmSize" id="fs2" value="0.5 - 1.0 ha">
                    <label for="fs2">0.5 - 1.0 ha</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="FarmSize" id="fs3" value="1.1 - 1.5 ha" >
                    <label for="fs3">1.1 - 1.5 ha</label>
                    </div>
                  </div>
                </div>

                <div class="choices">
                   <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="FarmSize" id="fs4" value="1.6 - 2.0 ha)" >
                    <label for="fs4">1.6 - 2.0 ha</label>
                    </div>
                  </div> <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="FarmSize" id="fs5" value="2.1 ha above" >
                    <label for="fs5">2.1 ha above</label>
                    </div>
                  </div>
                </div>
              </div>

              
              <div class="form-group width-full">

                <label class="question">No. of trees</label>
                
                <div class="choices">
                   <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="Notrees" id="no1" value="10 - 20 trees" checked="true">
                    <label for="no1">10 - 20 trees</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="Notrees" id="no2" value="21 - 30 trees" >
                    <label for="no2">21 - 30 trees</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="Notrees" id="no3" value="31 - 40 tress" >
                    <label for="no3">31 - 40 tress</label>
                    </div>
                  </div>
                </div>

                <div class="choices">
                   <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="Notrees" id="no4" value="41 - 50 trees" >
                    <label for="no4">41 - 50 trees</label>
                    </div>
                  </div> <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="Notrees" id="no5" value="51 trees above" >
                    <label for="no5">51 trees above</label>
                    </div>
                  </div>
                </div>
              </div>

              
              <div class="form-group width-full">
                <label class="question">Planting distance</label>
                <div class="choices">
                    <div class="width-full">
                        
                <input type="text" class="form-control" name="planting_distance"   value="<?=isset($farmprofile[0]->planting_distance) ? $farmprofile[0]->planting_distance: '';?>" placeholder="2x2">
                    </div>
                </div>
              </div>

              <div class="form-group width-full">

                <label class="question">Farming Experience on Cacao Production</label>
                
                <div class="choices">
                   <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="FarmingExperience" id="fe1" value="10 years below" checked="true">
                    <label for="fe1">10 years below</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="FarmingExperience" id="fe2" value="11-20 years">
                    <label for="fe2">11-20 years</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="FarmingExperience" id="fe3" value="21-30 years">
                    <label for="fe3">21-30 years</label>
                    </div>
                  </div>
                </div>

                <div class="choices">
                   <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="FarmingExperience" id="fe4" value="31-40 years" >
                    <label for="fe4">31-40 years</label>
                    </div>
                  </div> <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="FarmingExperience" id="fe5" value="41 years above" >
                    <label for="fe5">41 years above</label>
                    </div>
                  </div>
                </div>
              </div>

              <div class="form-group width-full">

                <label class="question">Farming Experience as Organic Cacao Production Practitioner</label>
                
                <div class="choices">
                   <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="ExperienceOrganic" id="feorganic1" value="10 years below" checked="true">
                    <label for="feorganic1">10 years below</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="ExperienceOrganic" id="feorganic2" value="11-20 years">
                    <label for="feorganic2">11-20 years</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="ExperienceOrganic" id="feorganic3" value="21-30 years">
                    <label for="feorganic3">21-30 years</label>
                    </div>
                  </div>
                </div>

                <div class="choices">
                   <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="ExperienceOrganic" id="feorganic4" value="31-40 years" >
                    <label for="feorganic4">31-40 years</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="ExperienceOrganic" id="feorganic5" value="41 years above" >
                    <label for="feorganic5">41 years above</label>
                    </div>
                  </div>

                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="ExperienceOrganic" id="feorganic6" value="None" >
                    <label for="feorganic6">None</label>
                    </div>
                  </div>
                </div>
              </div>

              <div class="form-group width-full">

                <label class="question">Cacao varieties planted</label>
                
                <div class="choices">
                   <div class="xradio col-md-4">
                    <div class="xradio-primary">                      
                    <input type="checkbox" name="Cacaovarieties[]" id="cv1" value="Criollio" >
                    <label for="cv1">Criollio</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-primary">                      
                    <input type="checkbox" name="Cacaovarieties[]" id="cv2" value="Forastero">
                    <label for="cv2">Forastero</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-primary">                      
                    <input type="checkbox" name="Cacaovarieties[]" id="cv3" value="Trinitario">
                    <label for="cv3">Trinitario</label>
                    </div>
                  </div>
                </div>

              </div>

              <div class="form-group width-full">

                <label class="question">Cacao Clones planted</label>
                
                <div class="choices">
                   <div class="xradio col-md-4">
                    <div class="xradio-primary">                      
                    <input type="checkbox" name="CacaoClones[]" id="ccp1" value="UF-18" >
                    <label for="ccp1">UF-18</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-primary">                      
                    <input type="checkbox" name="CacaoClones[]" id="ccp2" value="BR-25">
                    <label for="ccp2">BR-25</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-primary">                      
                    <input type="checkbox" name="CacaoClones[]" id="ccp3" value="UIT-1" >
                    <label for="ccp3">UIT-1</label>
                    </div>
                  </div>
                </div>
                <div class="choices">
                   <div class="xradio col-md-4">
                    <div class="xradio-primary">                      
                    <input type="checkbox" name="CacaoClones[]" id="ccp4" value="K-1" >
                    <label for="ccp4">K-1</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-primary">                      
                    <input type="checkbox" name="CacaoClones[]" id="ccp5" value="K-2">
                    <label for="ccp5">K-2</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-primary">                      
                    <input type="checkbox" name="CacaoClones[]" id="ccp6" value="ICS-40">
                    <label for="ccp6">ICS-40</label>
                    </div>
                  </div>
                </div>
                <div class="choices">
                   <div class="xradio col-md-4">
                    <div class="xradio-primary">                      
                    <input type="checkbox" name="CacaoClones[]" id="ccp7" value="S-5" >
                    <label for="ccp7">S-5</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-primary">                      
                    <input type="checkbox" name="CacaoClones[]" id="ccp8" value="K-9">
                    <label for="ccp8">K-9</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-primary">                      
                    <input type="checkbox" name="CacaoClones[]" id="ccp9" value="Others" class="Others">
                    <label for="ccp9">Others</label>
                    
                    </div>
                  </div>

                  <div class="col-md-12 others-input">
                      <small>Others, specify here</small><input type="text" class="form-control" name="othersCacaoClones"  value="<?=isset($farmprofile[0]->cacao_clone_planted_others) ? $farmprofile[0]->cacao_clone_planted_others: '';?>" >
                  </div>
                </div>

              </div>

              <div class="form-group width-full">

                <label class="question">Farm Category</label>
                
                <div class="choices">
                   <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="cacaoCategory" id="fc1" value="Backyard (below 50 trees planted)" checked="true">
                    <label for="fc1">Backyard <small>(below 50 trees planted)</small></label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="cacaoCategory" id="fc2" value="Plantation (more than 50 trees planted)">
                    <label for="fc2">Plantation <small>(more than 50 trees planted)</small></label>
                    </div>
                  </div> 
                </div>

              </div>

              <div class="form-group width-full">

                <label class="question">Farm Status</label>
                
                <div class="choices">
                   <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="cacaoStatus" id="cfs1" value="Newly established" checked="true">
                    <label for="cfs1">Newly established</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="cacaoStatus" id="cfs2" value="Rehabilitated">
                    <label for="cfs2">Rehabilitated</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="cacaoStatus" id="cfs3" value="Inherited without rehabilitation">
                    <label for="cfs3">Inherited without rehabilitation</label>
                    </div>
                  </div> 
                </div>

              </div>

              <div class="form-group width-full">

                <label class="question">Type of propagation</label>
                
                <div class="choices">
                   <div class="xradio col-md-4">
                    <div class="xradio-primary">                      
                    <input type="checkbox" name="propagationtype[]" id="tp1" value="Sexual (e.g. seeds)" checked="">
                    <label for="tp1">Sexual (e.g. seeds)</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-primary">                      
                    <input type="checkbox" name="propagationtype[]" id="tp2" value="Asexual (e.g. grafted, budded)">
                    <label for="tp2">Asexual (e.g. grafted, budded)</label>
                    </div>
                  </div> 
                </div>

              </div>

              <div class="form-group width-full">
                <label class="question">Source of seeds</label>
                <div class="choices">
                    <div class="width-full">
                        
                <input type="text" class="form-control" name="Sourceofseeds" value="<?=isset($farmprofile[0]->source_of_seeds) ? $farmprofile[0]->source_of_seeds: '';?>"  placeholder="DA">
                    </div>
                </div>
              </div>
              <div class="form-group width-full">
                <label class="question">Source of scion</label>
                <div class="choices">
                    <div class="width-full">
                        
                <input type="text" class="form-control" name="Sourceofscions" value="<?=isset($farmprofile[0]->source_of_scions) ? $farmprofile[0]->source_of_scions: '';?>"  placeholder="DA">
                    </div>
                </div>
              </div>
              <div class="form-group width-full">
                <label class="question">Source of stock</label>
                <div class="choices">
                    <div class="width-full">
                        
                <input type="text" class="form-control" name="Sourceofstocks" value="<?=isset($farmprofile[0]->source_of_stocks) ? $farmprofile[0]->source_of_stocks: '';?>"  placeholder="DA">
                    </div>
                </div>
              </div>
              <div class="form-group width-full">
                <label class="question">Source of seedlings</label>
                <div class="choices">
                    <div class="width-full">
                        
                <input type="text" class="form-control" name="Sourceofseedlings" value="<?=isset($farmprofile[0]->source_of_seedlings) ? $farmprofile[0]->source_of_seedlings: '';?>"  placeholder="DA">
                    </div>
                </div>
              </div>

              <div class="form-group width-full">

                <label class="question">Did you stablish cacao nursery?</label>
                
                <div class="choices">
                   <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="nursery" id="nursery1" value="Yes">
                    <label for="nursery1">Yes</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="nursery" id="nursery2" value="No" checked="true">
                    <label for="nursery2">No</label>
                    </div>
                  </div> 
                  <div class="col-md-12">
                      <small>If yes, how many square meters?</small><input type="text" class="form-control" name="othersnursery" value="<?=isset($farmprofile[0]->stablish_nursery_yes) ? $farmprofile[0]->stablish_nursery_yes: '';?>" >
                  </div>
                </div>

              </div>
              <div class="form-group width-full">

                <label class="question">Did you sell cacao seedlings</label>
                
                <div class="choices">
                   <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="sellSeedlings" id="sellseed1" value="Yes" >
                    <label for="sellseed1">Yes</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="sellSeedlings" id="sellseed2" value="No" checked="true">
                    <label for="sellseed2">No</label>
                    </div>
                  </div> 

                  <div class="col-md-12">
                      <small>If yes, How much per seedling?</small><input type="text" class="form-control" name="otherssellSeedlings" value="<?=isset($farmprofile[0]->sell_seedling_yes) ? $farmprofile[0]->sell_seedling_yes: '';?>" >
                  </div>
                </div>

              </div>

                <div class="form-group width-full">
                    <button class="btn btn-primary" type="submit">Next</button>
                </div>
            </form>  

                <div class="hidden">
                  <div id="dcacao_clones"><?php echo json_encode(explode(',', isset($farmprofile[0]->cacao_clone_planted)?$farmprofile[0]->cacao_clone_planted:'')); ?></div>

                  <div id="dcacao_varieties"><?php echo json_encode(explode(',', isset($farmprofile[0]->cacao_varieties)?$farmprofile[0]->cacao_varieties:'')); ?></div>

                  <div id="dpropagationtypes"><?php echo json_encode(explode(',', isset($farmprofile[0]->type_of_propagation)?$farmprofile[0]->type_of_propagation:'')); ?></div>
                  <div id="farmall"><?php echo isset($farmprofile[0]) ? json_encode($farmprofile[0]): json_encode(array(false)); ?></div>
            </div>
              <script type="text/javascript">
               /*-- start of farm profile --*/


  $('#frm_farmprofile').on('submit',function (e) {
    e.preventDefault();
        if ($(window).width() < screen) 
          {
            $('#2 .panel-title').find('a').click();
            return false;
          }
    $('a[href="#menu2"]').click();
    return false;

  });
  /*on document load */
$(function(){

    var cacao_clones = JSON.parse($('#dcacao_clones').html());
    var cacao_varieties = JSON.parse($('#dcacao_varieties').html());
    var propagationtypes = JSON.parse($('#dpropagationtypes').html());
    var farmall = JSON.parse($('#farmall').html());
    
if (farmall) {

    var farmCheckboxes = $('#frm_farmprofile input:checkbox');

  $.each(farmCheckboxes,function() {
    

      var input = $(this);
      var val = $(this).val();
        
        cacao_clones.forEach(function(item) {  

          if(val.toLowerCase() == item.toLowerCase()){
             
                input.prop('checked', true);
          }
      });

        propagationtypes.forEach(function(item) {  

          if(val.toLowerCase() == item.toLowerCase()){
             
                input.prop('checked', true);
          }
      });

        cacao_varieties.forEach(function(item) {  

          if(val.toLowerCase() == item.toLowerCase()){
             
                input.prop('checked', true);
          }
      });     

  
    });

$('#frm_farmprofile input:radio').removeAttr('checked');

var farmradio = $('#frm_farmprofile input:radio'); 

    $.each(farmradio,function() {

      var val = $(this).val();
      var parent = $(this).attr('name');

          if(farmall.land_ownership == val && parent == 'land_ownership'){
            $(this).prop('checked',true);
          }

          if($.trim(farmall.farm_size) == val && parent == 'FarmSize'){
            $(this).prop('checked',true);
          }

          if($.trim(farmall.no_of_trees) == val && parent == 'Notrees'){
            $(this).prop('checked',true);
          }
          if($.trim(farmall.farming_experience_production) == val && parent == 'FarmingExperience'){
            $(this).prop('checked',true);
          }
          if($.trim(farmall.farming_experience_production_organic) == val && parent == 'ExperienceOrganic'){
            $(this).prop('checked',true);
          }
          if($.trim(farmall.farming_category) == val && parent == 'cacaoCategory'){
            $(this).prop('checked',true);
          }

          if($.trim(farmall.farming_status) == val && parent == 'cacaoStatus'){
            $(this).prop('checked',true);
          }

          if($.trim(farmall.stablish_nursery) == val && parent == 'nursery'){
            $(this).prop('checked',true);
          }
          if($.trim(farmall.sell_seedling) == val && parent == 'sellSeedlings'){
            $(this).prop('checked',true);
          }

  }) ;


}

}) ;
/* end on document load */
 </script>