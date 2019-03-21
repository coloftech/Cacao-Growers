            
            <form id="frmland_ownership" class="form">   

               <label>Farm Profile of the respondents</label><br/>

               <label>Land Ownership</label>
                <div class="radio">
                <label for="land_ownership_1" class="btn btn-sm"><input type="radio" name="land_ownership" id="land_ownership_1" value="Owned (Bought)" data-php="<?=isset($farmprofile[0]->land_ownership) ? $farmprofile[0]->land_ownership : ''?>">Owned (Bought)</label>
                <label for="land_ownership_2" class="btn btn-sm"><input type="radio"  name="land_ownership"id="land_ownership_2" value="Owned (Inherited)"  data-php="<?=isset($farmprofile[0]->land_ownership) ? $farmprofile[0]->land_ownership : ''?>">Owned (Inherited)</label>
                <label for="land_ownership_3" class="btn btn-sm"><input type="radio" name="land_ownership" id="land_ownership_3" value="Tenanted"  data-php="<?=isset($farmprofile[0]->land_ownership) ? $farmprofile[0]->land_ownership : ''?>">Tenanted</label>
                <label for="land_ownership_4" class="btn btn-sm"><input type="radio" name="land_ownership" id="land_ownership_4" value="Rented"  data-php="<?=isset($farmprofile[0]->land_ownership) ? $farmprofile[0]->land_ownership : ''?>">Rented</label>
                <label for="land_ownership_5" class="btn btn-sm"><input type="radio" name="land_ownership" id="land_ownership_5" value="Mortgage"  data-php="<?=isset($farmprofile[0]->land_ownership) ? $farmprofile[0]->land_ownership : ''?>">Mortgage </label>
                
                </div>
                

                <label>Farm Size:</label>

                <div class="radio">
                <label for="FarmSize_1" class="btn btn-sm"><input type="radio" name="FarmSize" id="FarmSize_1" value="0.5 ha below"  data-php="<?=isset($farmprofile[0]->farm_size) ? $farmprofile[0]->farm_size : ''?>">0.5 ha below</label>
                <label for="FarmSize_2" class="btn btn-sm"><input type="radio"  name="FarmSize"id="FarmSize_2" value="0.5 - 1.0 ha"   data-php="<?=isset($farmprofile[0]->farm_size) ? $farmprofile[0]->farm_size : ''?>">0.5 - 1.0 ha</label>
                <label for="FarmSize_3" class="btn btn-sm"><input type="radio" name="FarmSize" id="FarmSize_3" value="1.1 - 1.5 ha"   data-php="<?=isset($farmprofile[0]->farm_size) ? $farmprofile[0]->farm_size : ''?>">1.1 - 1.5 ha</label>
                <label for="FarmSize_4" class="btn btn-sm"><input type="radio" name="FarmSize" id="FarmSize_4" value="1.6 - 2.0 ha"   data-php="<?=isset($farmprofile[0]->farm_size) ? $farmprofile[0]->farm_size : ''?>">1.6 - 2.0 ha</label>
                <label for="FarmSize_5" class="btn btn-sm"><input type="radio" name="FarmSize" id="FarmSize_5" value="2.1 ha above"   data-php="<?=isset($farmprofile[0]->farm_size) ? $farmprofile[0]->farm_size : ''?>">2.1 ha above </label>
                
                </div>
                
                <label>No. of trees </label>

                <div class="radio">
                <label for="Notrees_1" class="btn btn-sm"><input type="radio" name="Notrees" id="Notrees_1" value="10 - 20 trees"   data-php="<?=isset($farmprofile[0]->no_of_trees) ? $farmprofile[0]->no_of_trees : ''?>">10 - 20 trees  </label>
                <label for="Notrees_2" class="btn btn-sm"><input type="radio"  name="Notrees"id="Notrees_2" value="21 - 30 trees" data-php="<?=isset($farmprofile[0]->no_of_trees) ? $farmprofile[0]->no_of_trees : ''?>">21 - 30 trees  </label>
                <label for="Notrees_3" class="btn btn-sm"><input type="radio" name="Notrees" id="Notrees_3" value="31 - 40 tress" data-php="<?=isset($farmprofile[0]->no_of_trees) ? $farmprofile[0]->no_of_trees : ''?>">31 - 40 tress</label>
                <label for="Notrees_4" class="btn btn-sm"><input type="radio" name="Notrees" id="Notrees_4" value="41 - 50 trees" data-php="<?=isset($farmprofile[0]->no_of_trees) ? $farmprofile[0]->no_of_trees : ''?>">41 - 50 trees</label>
                <label for="Notrees_5" class="btn btn-sm"><input type="radio" name="Notrees" id="Notrees_5" value="51 trees above" data-php="<?=isset($farmprofile[0]->no_of_trees) ? $farmprofile[0]->no_of_trees : ''?>">51 trees above </label>
                
                </div>

                <label>Planting distance</label>

                <input type="text" class="form-control" name="planting_distance" value="<?=isset($farmprofile[0]->planting_distance) ? $farmprofile[0]->planting_distance : ''?>">
                

                <label>Farming Experience on Cacao Production:</label>

                <div class="radio">
                <label for="FarmingExperience_1" class="btn btn-sm"><input type="radio" name="FarmingExperience" id="FarmingExperience_1" value="10 years below"  data-php="<?=isset($farmprofile[0]->farming_experience_production) ? $farmprofile[0]->farming_experience_production : ''?>">10 years below</label>
                <label for="FarmingExperience_2" class="btn btn-sm"><input type="radio"  name="FarmingExperience"id="FarmingExperience_2" value="11-20 years"  data-php="<?=isset($farmprofile[0]->farming_experience_production) ? $farmprofile[0]->farming_experience_production : ''?>">11-20 years</label>
                <label for="FarmingExperience_3" class="btn btn-sm"><input type="radio" name="FarmingExperience" id="FarmingExperience_3" value="21-30 years"  data-php="<?=isset($farmprofile[0]->farming_experience_production) ? $farmprofile[0]->farming_experience_production : ''?>">21-30 years</label>
                <label for="FarmingExperience_4" class="btn btn-sm"><input type="radio" name="FarmingExperience" id="FarmingExperience_4" value="31-40 years"  data-php="<?=isset($farmprofile[0]->farming_experience_production) ? $farmprofile[0]->farming_experience_production : ''?>">31-40 years</label>
                <label for="FarmingExperience_5" class="btn btn-sm"><input type="radio" name="FarmingExperience" id="FarmingExperience_5" value="41 years above"  data-php="<?=isset($farmprofile[0]->farming_experience_production) ? $farmprofile[0]->farming_experience_production : ''?>">41 years above </label>
                
                </div>
                

                <label>Farming Experience as Organic Cacao Production Practitioner:</label>

                
                <div class="radio">
                <label for="ExperienceOrganic_1" class="btn btn-sm"><input type="radio" name="ExperienceOrganic" id="ExperienceOrganic_1" value="1"  data-php="<?=isset($farmprofile[0]->farming_experience_production_organic) ? $farmprofile[0]->farming_experience_production_organic : ''?>">10 years below</label>
                <label for="ExperienceOrganic_2" class="btn btn-sm"><input type="radio"  name="ExperienceOrganic"id="ExperienceOrganic_2" value="2"  data-php="<?=isset($farmprofile[0]->farming_experience_production_organic) ? $farmprofile[0]->farming_experience_production_organic : ''?>">11-20 years</label>
                <label for="ExperienceOrganic_3" class="btn btn-sm"><input type="radio" name="ExperienceOrganic" id="ExperienceOrganic_3" value="3" data-php="<?=isset($farmprofile[0]->farming_experience_production_organic) ? $farmprofile[0]->farming_experience_production_organic : ''?>">21-30 years</label>
                <label for="ExperienceOrganic_4" class="btn btn-sm"><input type="radio" name="ExperienceOrganic" id="ExperienceOrganic_4" value="4" data-php="<?=isset($farmprofile[0]->farming_experience_production_organic) ? $farmprofile[0]->farming_experience_production_organic : ''?>">31-40 years</label>
                <label for="ExperienceOrganic_5" class="btn btn-sm"><input type="radio" name="ExperienceOrganic" id="ExperienceOrganic_5" value="5" data-php="<?=isset($farmprofile[0]->farming_experience_production_organic) ? $farmprofile[0]->farming_experience_production_organic : ''?>">41 years above </label>
                
                </div>
                

                <label>Cacao varieties planted</label>

                
                <div class="radio">
                <label for="Cacaovarieties_1" class="btn btn-sm"><input type="checkbox" name="Cacaovarieties[]" id="Cacaovarieties_1" value="1" >Criollio</label>
                <label for="Cacaovarieties_2" class="btn btn-sm"><input type="checkbox"  name="Cacaovarieties[]"id="Cacaovarieties_2" value="2">Forastero</label>
                <label for="Cacaovarieties_3" class="btn btn-sm"><input type="checkbox" name="Cacaovarieties[]" id="Cacaovarieties_3" value="3">Trinitario</label>
                
                </div>


                <div class="form-group">
                <label>Cacao Clones planted</label>
                <?php 
                  $other = array();
                if(isset($farmprofile[0]->cacao_clone_planted)){
                    $clones = explode(',', $farmprofile[0]->cacao_clone_planted);
                    $i=0;

                        $default_clone = array('UF-18','BR-25','UIT-1','K-1','K-2','ICS-40','S-5','K-9');

                    foreach ($clones as $clone) {
                        if (in_array($clone, $default_clone)) {
                            # code...
                            }else{                            
                                $other[] = $clone;
                            }
                            
                        }
                    } 
                    if (count($other) > 0) {
                        # code...
                        $other = implode(',', $other);

                    }else{
                        $other = '';
                    }
               
                  ?>
                <div class="radio">
                <label for="CacaoClones_1" class="btn btn-sm"><input type="checkbox" name="CacaoClones[]" id="CacaoClones_1" value="1"  >UF-18</label>
                <label for="CacaoClones_2" class="btn btn-sm"><input type="checkbox"  name="CacaoClones[]"id="CacaoClones_2" value="2" >BR-25</label>
                <label for="CacaoClones_3" class="btn btn-sm"><input type="checkbox" name="CacaoClones[]" id="CacaoClones_3" value="3" >UIT-1</label>
                <label for="CacaoClones_4" class="btn btn-sm"><input type="checkbox" name="CacaoClones[]" id="CacaoClones_4" value="4" >K-1</label>
                <label for="CacaoClones_5" class="btn btn-sm"><input type="checkbox" name="CacaoClones[]" id="CacaoClones_5" value="5" >K-2</label>
                
                </div>

                <div class="radio">
                <label for="CacaoClones_6" class="btn btn-sm"><input type="checkbox" name="CacaoClones[]" id="CacaoClones_6" value="6" >ICS-40</label>
                <label for="CacaoClones_7" class="btn btn-sm"><input type="checkbox"  name="CacaoClones[]"id="CacaoClones_7" value="7" >S-5</label>
                <label for="CacaoClones_8" class="btn btn-sm"><input type="checkbox" name="CacaoClones[]" id="CacaoClones_8" value="7" >K-9</label>
                <label for="CacaoClones_9" class="btn btn-sm"><input type="checkbox" name="CacaoClones[]" id="CacaoClones_9" value="8" class="others" >Others, specify <input type="text" name="othersCacaoClones" class="form-control" readonly="true"  value="<?=$other?>"></label>
                
                </div>
                </div>
                <label>Category</label>

                <div class="radio">
                <label for="cacaoCategory_1" class="btn btn-sm"><input type="radio" name="cacaoCategory" id="cacaoCategory_1"    value="1" data-php="<?=isset($farmprofile[0]->farming_category) ? $farmprofile[0]->farming_category : ''?>">Backyard (below 50 trees planted)</label>
                
                </div>
                <div class="radio">
                <label for="cacaoCategory_2" class="btn btn-sm"><input type="radio"  name="cacaoCategory"id="cacaoCategory_2" value="2" data-php="<?=isset($farmprofile[0]->farming_category) ? $farmprofile[0]->farming_category : ''?>">Plantation (more than 50 trees planted)</label>
                
                </div>
                <div class="form-group">
                <label>Status</label>

                <div class="radio">
                <label for="Status_1" class="btn btn-sm"><input type="radio" name="cacaoStatus" id="Status_1" value="1"  data-php="<?=isset($farmprofile[0]->farming_status) ? $farmprofile[0]->farming_status : ''?>">Newly established</label>
                <label for="Status_2" class="btn btn-sm"><input type="radio"  name="cacaoStatus"id="Status_2" value="2"  data-php="<?=isset($farmprofile[0]->farming_status) ? $farmprofile[0]->farming_status : ''?>">Rehabilitated</label>
                <label for="Status_3" class="btn btn-sm"><input type="radio" name="cacaoStatus" id="Status_3" value="3"  data-php="<?=isset($farmprofile[0]->farming_status) ? $farmprofile[0]->farming_status : ''?>">Inherited without rehabilitation </label>
                
                </div>
                </div>
                <label>Type of propagation: </label>
                <div class="form-group">
                <div class="radio">
                <label for="propagationtype_1" class="btn btn-sm"><input type="checkbox" name="propagationtype[]" id="propagationtype_1"  data-php="<?=isset($farmprofile[0]->type_of_propagation) ? $farmprofile[0]->type_of_propagation : ''?>" value="1">Sexual (e.g. seeds)</label>
                <label for="propagationtype_2" class="btn btn-sm"><input type="checkbox"  name="propagationtype[]"id="propagationtype_2"  data-php="<?=isset($farmprofile[0]->type_of_propagation) ? $farmprofile[0]->type_of_propagation : ''?>" value="2">Asexual (e.g. grafted, budded)</label>
                
                </div>

                <div class="radio">
                <label for="" class="btn btn-sm">Source of seeds: </label><input type="text" class="form-control" name="Sourceofseeds" value="<?=isset($farmprofile[0]->source_of_seeds) ? $farmprofile[0]->source_of_seeds : ''?>">
                <label for="" class="btn btn-sm">Source of scion:</label><input type="text" class="form-control" name="Sourceofscions" value="<?=isset($farmprofile[0]->source_of_seeds) ? $farmprofile[0]->source_of_seedlings : ''?>">
                <label for="" class="btn btn-sm">Source of stocks: </label><input type="text" class="form-control" name="Sourceofstocks" value="<?=isset($farmprofile[0]->source_of_seeds) ? $farmprofile[0]->source_of_scions : ''?>">
                <label for="" class="btn btn-sm">Source of seedlings:</label><input type="text" class="form-control" name="Sourceofseedlings" value="<?=isset($farmprofile[0]->source_of_seeds) ? $farmprofile[0]->source_of_stocks : ''?>">
                
                </div>
                
                </div>
                <div class="form-group">
                <label>Did you stablish cacao nursery?</label>  

                <div class="radio">

                <label for="nursery_1" class="btn btn-sm"><input type="radio" name="nursery" id="nursery_1" value="1"  data-php="<?=isset($farmprofile[0]->stablish_nursery) ? $farmprofile[0]->stablish_nursery : ''?>">Yes</label>
                <label for="nursery_2" class="btn btn-sm"><input type="radio"  name="nursery"id="nursery_2" value="2"  data-php="<?=isset($farmprofile[0]->stablish_nursery) ? $farmprofile[0]->stablish_nursery : ''?>">No</label>
                <br/><label>If yes, how many square meters?</label><input type="text" class="form-control" name="othersnursery">
                
                </div>
                </div>
                <div class="form-group">
                <label>Did you sell cacao seedlings? </label> 

                <div class="radio">
                <label for="sellSeedlings_1" class="btn btn-sm"><input type="radio" name="sellSeedlings" id="sellSeedlings_1" value="1"   data-php="<?=isset($farmprofile[0]->sell_seedling) ? $farmprofile[0]->sell_seedling : ''?>">Yes</label>
                <label for="sellSeedlings_2" class="btn btn-sm"><input type="radio"  name="sellSeedlings"id="sellSeedlings_2" value="2"  data-php="<?=isset($farmprofile[0]->sell_seedling) ? $farmprofile[0]->sell_seedling : ''?>">No</label>
                <br/><label>If yes, How much per seedling?</label><input type="text" class="form-control" name="otherssellSeedlings">
                </div>
                </div>
                <div class="form-group">
                    <button class="btn btn-primary">Save</button>
                </div>
                </form>  
              <script type="text/javascript">
               /*-- start of farm profile --*/
$(function(){

var cacao_clones = <?php echo json_encode(explode(',', isset($farmprofile[0]->cacao_clone_planted)?$farmprofile[0]->cacao_clone_planted:'')); ?>;


var propagationtypes = <?php echo json_encode(explode(',', isset($farmprofile[0]->type_of_propagation)?$farmprofile[0]->type_of_propagation:'')); ?>;

var cacao_varieties = <?php echo json_encode(explode(',', isset($farmprofile[0]->cacao_varieties)?$farmprofile[0]->cacao_varieties:'')); ?>;


  $('#frmland_ownership input:checkbox').each(function() {
    

  var input = $(this);
      var val = $(this).parent().text();
        
        cacao_clones.forEach(function(item) {  

          if(val.toLowerCase() == item.toLowerCase()){
             
                input.prop('checked', true);
                console.log(item+' = '+val);
          }
      });

        propagationtypes.forEach(function(item) {  

          if(val.toLowerCase() == item.toLowerCase()){
             
                input.prop('checked', true);
                console.log(item+' = '+val);
          }
      });
        cacao_varieties.forEach(function(item) {  

          if(val.toLowerCase() == item.toLowerCase()){
             
                input.prop('checked', true);
                console.log(item+' = '+val);
          }
      });

     
  
    });
});
  $('#frmland_ownership').on('submit',function (e) {
    e.preventDefault();
    var frmdata = $(this).serialize();

    /*if (respondent_id == 0) {

        notify(false,'Please fill and save personal information first.');
        return false;
    };*/


        $.ajax({
            url: site_url+'/survey/save/farm/'+respondent_id,
            type: 'post',
            dataType: 'json',
            data: frmdata, 
            beforeSend: function(){

              /* $('#frmland_ownership input').prop('readonly','true');
               $('#frmland_ownership button').prop('disabled','true');*/
            },
            success: function(response){
                

              if(response.status == true){

                $('a[href="#menu2"]').click();
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

            /*-- end of farm profile --*/
            </script>