        <form id="frmharvest">
          
							<div class="form-group  width-full">
                <label class="question">Harvesting</label>
                              
                <div class="choices">
                  <div class="width-full">
                  <small>How many pods/fruit harvested per cacao variety? </small>
                    <input  type="textbox" name="pod_per_variety" id="pod_per_variety"  class="form-control">
                  </div>

                  <div class="width-full">
                  <small>How many kilograms of bean produced per cacao variety?  </small>
                    <input  type="textbox" name="kg_produced_per_variety"  class="form-control">
                  </div>
                  <div class="width-full">
                  <small>Total bean production (kg) </small>
                   <input type="textbox"  name="total_bean_production"  class="form-control">
                 </div>
               </div>
               </div>


              <div class="form-group width-full">

                <label class="question">Cacao Pod Sorting?</label>
                
                <div class="choices">
                   <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="cacao_pod_sorting" id="cacao_pod_sorting1" value="Manual">
                    <label for="cacao_pod_sorting1">Manual</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="cacao_pod_sorting" id="cacao_pod_sorting2" value="Mechanical">
                    <label for="cacao_pod_sorting2">Mechanical</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="cacao_pod_sorting" id="cacao_pod_sorting3" value="None" checked="true">
                    <label for="cacao_pod_sorting3">None</label>
                    </div>
                  </div> 


                </div>

              </div>
              <div class="form-group width-full">

                <label class="question">Pod processing</label>
                
                <div class="choices">

                   <div class="xradio col-md-4">
                    <div class="xradio-primary">                      
                    <input type="checkbox" name="pod_processing[]" id="pod_breaking" value="Pod Breaking" >
                    <label for="pod_breaking">Pod Breaking</label>
                    </div>
                      <div class="radio-child hidden">
                        
                             <div class="xradio col-md-12">
                              <div class="xradio-success">                      
                              <input type="radio" name="pod_breaking" id="pod_breaking_1" value="Manual" checked="true">
                              <label for="pod_breaking_1">Manual</label>
                              </div>
                            </div> 
                            <div class="xradio col-md-12">
                              <div class="xradio-success">                      
                              <input type="radio" name="pod_breaking" id="pod_breaking_2" value="Mechanical">
                              <label for="pod_breaking_2">Mechanical</label>
                              </div>
                            </div> 

                      </div>
                  </div> 


                   <div class="xradio col-md-4">
                    <div class="xradio-primary">                      
                    <input type="checkbox" name="pod_processing[]" id="bean_processing" value="Bean Processing" >
                    <label for="bean_processing">Bean Processing</label>
                    </div>
                        <div class="radio-child hidden">
                          
                             <div class="xradio col-md-12">
                              <div class="xradio-success">                      
                              <input type="radio" name="bean_processing" id="bean_processing_1" value="Fermented" checked="true">
                              <label for="bean_processing_1">Fermented</label>
                              </div>
                            </div> 
                            <div class="xradio col-md-12">
                              <div class="xradio-success">                      
                              <input type="radio" name="bean_processing" id="bean_processing_2" value="Dried">
                              <label for="bean_processing_2">Dried</label>
                              </div>

                                <div class="radio-child-child hidden">
                                  
                                     <div class="xradio col-md-12">
                                      <div class="xradio-success">                      
                                      <input type="radio" name="bean_processing_dried" id="bean_processing_2_1" value="Solar">
                                      <label for="bean_processing_2_1">Solar</label>
                                      </div>
                                    </div> 
                                    <div class="xradio col-md-12">
                                      <div class="xradio-success">                      
                                      <input type="radio" name="bean_processing_dried" id="bean_processing_2_2" value="Mechanical">
                                      <label for="bean_processing_2_2">Mechanical</label>
                                      </div>
                                    </div> 

                                </div>
                            </div> 

                        </div>
                  </div> 
                   <div class="xradio col-md-4">
                    <div class="xradio-primary">                      
                    <input type="checkbox" name="pod_processing[]" id="bean_sorting" value="Bean Sorting/Grading" >
                    <label for="bean_sorting">Bean Sorting/Grading</label>
                    </div>
                      <div class="radio-child hidden">
                        
                             <div class="xradio col-md-12">
                              <div class="xradio-success">                      
                              <input type="radio" name="bean_sorting" id="bean_sorting_1" value="Manual" checked="true">
                              <label for="bean_sorting_1">Manual</label>
                              </div>
                            </div> 
                            <div class="xradio col-md-12">
                              <div class="xradio-success">                      
                              <input type="radio" name="bean_sorting" id="bean_sorting_2" value="Mechanical">
                              <label for="bean_sorting_2">Mechanical</label>
                              </div>
                            </div> 

                      </div>
                  </div> 
                   <div class="xradio col-md-4">
                    <div class="xradio-primary">                      
                    <input type="checkbox" name="pod_processing[]" id="bean_roasting" value="Bean Roasting" >
                    <label for="bean_roasting">Bean Roasting</label>
                    </div>
                      <div class="radio-child hidden">
                        
                             <div class="xradio col-md-12">
                              <div class="xradio-success">                      
                              <input type="radio" name="bean_roasting" id="bean_roasting_1" value="Manual" checked="true">
                              <label for="bean_roasting_1">Manual</label>
                              </div>
                            </div> 
                            <div class="xradio col-md-12">
                              <div class="xradio-success">                      
                              <input type="radio" name="bean_roasting" id="bean_roastin_2" value="Mechanical">
                              <label for="bean_roastin_2">Mechanical</label>
                              </div>
                            </div> 

                      </div>
                  </div> 

                   <div class="xradio col-md-4">
                    <div class="xradio-primary">                      
                    <input type="checkbox" name="pod_processing[]" id="winnowing" value="Winnowing" >
                    <label for="winnowing">Winnowing</label>
                    </div>
                      <div class="radio-child hidden">
                        
                             <div class="xradio col-md-12">
                              <div class="xradio-success">                      
                              <input type="radio" name="winnowing" id="winnowing_1" value="Manual" checked="true">
                              <label for="winnowing_1">Manual</label>
                              </div>
                            </div> 
                            <div class="xradio col-md-12">
                              <div class="xradio-success">                      
                              <input type="radio" name="winnowing" id="winnowing_2" value="Mechanical">
                              <label for="winnowing_2">Mechanical</label>
                              </div>
                            </div> 

                      </div>
                  </div> 
                   <div class="xradio col-md-4">
                    <div class="xradio-primary">                      
                    <input type="checkbox" name="pod_processing[]" id="grinding" value="Grinding" >
                    <label for="grinding">Grinding</label>
                    </div>
                          <div class="radio-child hidden">
                            
                             <div class="xradio col-md-12">
                              <div class="xradio-success">                      
                              <input type="radio" name="grinding" id="grinding_1" value="Manual" checked="true">
                              <label for="grinding_1">Manual</label>
                              </div>
                            </div> 
                            <div class="xradio col-md-12">
                              <div class="xradio-success">                      
                              <input type="radio" name="grinding" id="grinding_2" value="Mechanical">
                              <label for="grinding_2">Mechanical</label>
                              </div>
                            </div> 

                          </div>
                  </div> 

                   <div class="xradio col-md-4">
                    <div class="xradio-primary">                      
                    <input type="checkbox" name="pod_processing[]" id="cacao_pod_processing" value="Cacao Pod Processing" >
                    <label for="cacao_pod_processing">Cacao Pod Processing</label>
                    </div>

                             <div class="radio-child hidden">
                               <div class="xradio col-md-12">
                              <div class="xradio-success">                      
                              <input type="radio" name="cacao_pod_processing" id="cacao_pod_processing_1" value="Composting" checked="true">
                              <label for="cacao_pod_processing_1">Composting</label>
                              </div>
                            </div> 
                            <div class="xradio col-md-12">
                              <div class="xradio-success">                      
                              <input type="radio" name="cacao_pod_processing" id="cacao_pod_processing_2" value="Substrate for vermicomposting">
                              <label for="cacao_pod_processing_2">Substrate for vermicomposting</label>
                              </div>
                            </div> 

                            <div class="xradio col-md-12">
                              <div class="xradio-success">                      
                              <input type="radio" name="cacao_pod_processing" id="cacao_pod_processing_3" value="Char">
                              <label for="cacao_pod_processing_3">Char</label>
                              </div>
                            </div> 
                            <div class="xradio col-md-12">
                              <div class="xradio-success">                      
                              <input type="radio" name="cacao_pod_processing" id="cacao_pod_processing_4" value="Briquette">
                              <label for="cacao_pod_processing_4">Briquette</label>
                              </div>
                            </div> 
                             </div>
                  </div> 

                </div>

              </div>
              <div class="width-full">
                        <button class="btn btn-primary" type="submit">Next</button>
                
              </div>

        </form>

          <script type="text/javascript">


  $('#frmharvest').on('submit',function (e) {
    e.preventDefault();
    

    e.preventDefault();
        if ($(window).width() < screen) 
          {
            $('#5 .panel-title').find('a').click();
            return false;
          }
    $('a[href="#menu5"]').click();

  });

  $('input[name="pod_processing[]"]').on('click',function () {
    // body...
    if($(this).is(':checked')){

    $(this).parent().parent().find('.radio-child').removeClass('hidden')
    }else{

    $(this).parent().parent().find('.radio-child').addClass('hidden')
    $(this).parent().parent().find('.radio-child').closest('input:radio').removeAttr('checked')

    }
  })

  $('input[name="bean_processing"]').on('click',function () {
      var val = $.trim(this.value);
      if(val == 'Dried'){

      $(this).parent().parent().find('.radio-child-child').removeClass('hidden')
      }else{

      $('#bean_processing_2').parent().parent().find('.radio-child-child').addClass('hidden')
      }
 
  })
 </script>