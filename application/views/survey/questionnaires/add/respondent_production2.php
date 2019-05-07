<form id="frmproduction" class="form">

              <div class="form-group width-full">
                <label class="question">Farm coordinates</label>
                <div class="choices">
                    <div class="width-full">
                        <div class="width-half">
                            <input type="text" class="form-control" name="coordinates_lat" placeholder="Lat">
                        </div>
                        <div class="width-half">
                            <input type="text" class="form-control" name="coordinates_long" placeholder="Long">
                        </div>
                
                    </div>
                </div>
              </div>
              <div class="form-group width-full" id="div_production">
                <label class="question">Climatic Factor</label>
                <div class="choices">
                    <div class="width-full">
                        <small>Rainfall</small>
                    <input type="text" class="form-control" name="rainfall" id="rainfall" placeholder="">
                    </div>
                    <div class="width-full">
                        <small>Temperature</small>
                    <input type="text" class="form-control" name="temperature" placeholder="">
                    </div>
                    <div class="width-full">
                        <small>Elevation</small>
                    <input type="text" class="form-control" name="elevation" placeholder="">
                    </div>
                    <div class="width-full">
                        <small>Slope</small>
                    <input type="text" class="form-control" name="slope" placeholder="">
                    </div>
                </div>
              </div>

              <div class="form-group width-full">
                <label class="question">Edaphic Factor</label>
                <div class="choices">
                    <div class="width-full">
                        <small>Soil type</small>
                    <input type="text" class="form-control" name="soil_type" placeholder="">
                    </div>
                    <div class="width-full">
                        <small>Soil depth</small>
                    <input type="text" class="form-control" name="soil_depth" placeholder="">
                    </div>
                    <div class="width-full">
                        <small>Soil texture</small>
                    <input type="text" class="form-control" name="soil_texture" placeholder="">
                    </div>
                    <div class="width-full">
                        <small>Soil structure</small>
                    <input type="text" class="form-control" name="soil_structure" placeholder="">
                    </div>
                </div>
              </div>


              <div class="form-group width-full">

                <label class="question">Cropping System</label>
                
                <div class="choices">
                   <div class="xradio col-md-4">
                    <div class="xradio-primary">                      
                    <input type="checkbox" name="cropingsystem[]" id="crop1" value="Monocropping" >
                    <label for="crop1">Monocropping</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-primary">                      
                    <input type="checkbox" name="cropingsystem[]" id="crop2" value="Inter-cropping">
                    <label for="crop2">Inter-cropping</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-primary">                      
                    <input type="checkbox" name="cropingsystem[]" id="crop3" value="Others"  >
                    <label for="crop3">Others</label>
                    </div>
                  </div>

                  <div class="col-md-12 others-input">
                      <small>Others, specify here</small><input type="text" class="form-control" name="croping_others">
                  </div>
                </div>

              </div>

              <div class="form-group width-full">

                <label class="question">Associated Crops</label>
                
                <div class="choices">
                   <div class="xradio col-md-4">
                    <div class="xradio-primary">                      
                    <input type="checkbox" name="AssociatedCrops[]" id="acrop1" value="Coconut" >
                    <label for="acrop1">Coconut</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-primary">                      
                    <input type="checkbox" name="AssociatedCrops[]" id="acrop2" value="Bananag">
                    <label for="acrop2">Banana</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-primary">                      
                    <input type="checkbox" name="AssociatedCrops[]" id="acrop3" value="Cofee"  >
                    <label for="acrop3">Cofee</label>
                    </div>
                  </div>
                  <div class="xradio col-md-4">
                    <div class="xradio-primary">                      
                    <input type="checkbox" name="AssociatedCrops[]" id="acrop4" value="Peanut"  >
                    <label for="acrop4">Peanut</label>
                    </div>
                  </div>
                  <div class="xradio col-md-4">
                    <div class="xradio-primary">                      
                    <input type="checkbox" name="AssociatedCrops[]" id="acrop5" value="Corn"  >
                    <label for="acrop5">Corn</label>
                    </div>
                  </div>

                  <div class="width-full" style="padding: 0;"> 

                    <div class="xradio col-md-12">
                      <small>If Peanut, specify here</small><input type="text" class="form-control" name="peanuts">
                    </div>
                  </div>
                  <div class="width-full" style="padding: 0;"> 

                    <div class="xradio col-md-12">
                      <small>If Vegestable, specify here</small><input type="text" class="form-control" name="vegetables">
                    </div>
                  </div>
                  <div class="width-full" style="padding: 0;"> 

                    <div class="xradio col-md-12">
                      <small>If Root crops, specify here</small><input type="text" class="form-control" name="root_crops">
                    </div>
                  </div>
                  <div class="width-full" style="padding: 0;"> 

                    <div class="xradio col-md-12">
                      <small>If Trees, specify here</small><input type="text" class="form-control" name="trees">
                    </div>
                  </div>
                  <div class="width-full" style="padding: 0;"> 

                    <div class="xradio col-md-12">
                      <small>If Fruit crops, specify here</small><input type="text" class="form-control" name="fruit">
                    </div>
                  </div>
                  <div class="width-full" style="padding: 0;"> 

                    <div class="xradio col-md-12">
                      <small>Others, specify here</small><input type="text" class="form-control" name="othercrops">
                    </div>
                  </div>

              </div>
            </div>

              <div class="form-group width-full">

                <label class="question">Fertilizer applied</label>
                
                <div class="choices">
                   <div class="xradio col-md-4">
                    <div class="xradio-primary">                      
                    <input type="checkbox" name="Fertilizer[]" id="fertilizer1" value="Organic" >
                    <label for="fertilizer1">Organic</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-primary">                      
                    <input type="checkbox" name="Fertilizer[]" id="fertilizer2" value="Inorganic fertilizer">
                    <label for="fertilizer2">Inorganic fertilizer</label>
                    </div>
                  </div> 

                  <div class="col-md-12 others-input">
                      <small>If Organic, specify here</small><input type="text" class="form-control" name="organic">
                  </div>
                  <div class="col-md-12 others-input">
                      <small>if Inorganic fertilizer, specify here</small><input type="text" class="form-control" name="inorganic">
                  </div>
                </div>
              </div>

              <div class="form-group width-full">

                <label class="question">Frequency of fertilizer application</label>
                
                <div class="choices">
                   <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="appFrequency" id="application1" value="Monthly" >
                    <label for="application1">Monthly</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="appFrequency" id="application2" value="every 3 months">
                    <label for="application2">every 3 months</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="appFrequency" id="application3" value="every 6 months">
                    <label for="application3">every 6 months</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="appFrequency" id="application4" value="every 9 months">
                    <label for="application4">every 9 months</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="appFrequency" id="application5" value="yearly application">
                    <label for="application5">yearly application</label>
                    </div>
                  </div> 

                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="appFrequency" id="application6" value="Others">
                    <label for="application6">Others</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="appFrequency" id="application7" value="None" checked="">
                    <label for="application7">None</label>
                    </div>
                  </div> 
                </div>

              </div>


            <div class="form-group width-full">

                <label class="question">Did you practice pruning?</label>
                
                <div class="choices">
                   <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="practicepruning" id="prun1" value="Yes" >
                    <label for="prun1">Yes</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="practicepruning" id="prun2" value="No" checked>
                    <label for="prun2">No</label>
                    </div>
                  </div> 

                  <div class="col-md-12 others-input hidden" id="pruningyes">
                     
                    <div class="xradio col-md-4">
                      <small>If yes, specify here</small>
                    <div class="xradio-info">                      
                    <input type="checkbox" name="practicepruning_yes[]" id="prunyes1" value="DA" >
                    <label for="prunyes1">DA</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <small>&nbsp;</small>
                    <div class="xradio-info">                      
                    <input type="checkbox" name="practicepruning_yes[]" id="prunyes2" value="Private">
                    <label for="prunyes2">Private</label>
                    </div>
                  </div> 
                  </div>
                </div>

              </div>

            <div class="form-group width-full">

                <label class="question">Did the Department of Agriculture conduct training and services about cacao production and pest management?</label>
                
                <div class="choices">
                   <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="da_conducttraining" id="dat1" value="Yes" >
                    <label for="dat1">Yes</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="da_conducttraining" id="dat2" value="No" checked>
                    <label for="dat2">No</label>
                    </div>
                  </div> 

                  <div class="col-md-12 others-input">
                      <small>If yes, specify here</small><input type="text" class="form-control" name="da_conducttraining_yes">
                  </div>
                </div>

              </div>

            <div class="form-group width-full">

                <label class="question">Is there any technical staff from the Department of Agriculture who shared technology for production marketing and services?</label>
                
                <div class="choices">
                   <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="sharedtechnology" id="tech1" value="Yes" >
                    <label for="tech1">Yes</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="sharedtechnology" id="tech2" value="No" checked>
                    <label for="tech2">No</label>
                    </div>
                  </div> 

                </div>

              </div>

                <div class="form-group width-full">
                    <button class="btn btn-primary">Next</button>
                </div>
                            </form>


 <script type="text/javascript">

  $('#frmproduction').on('submit',function(e){
                                 
  e.preventDefault();
    
        if ($(window).width() < screen) 
          {
            $('#4 .panel-title').find('a').click();
            return false;
          }
    $('a[href="#menu4"]').click();

   });

  $('input[name="practicepruning"]').on('change',function(){
    if ($('#prun1').is(':checked')) {
      $('#pruningyes').removeClass('hidden');
    }else{
      $('#pruningyes').addClass('hidden');
      $('#prunyes1').removeAttr('checked')
      $('#prunyes2').removeAttr('checked')
    }
  })
</script> 