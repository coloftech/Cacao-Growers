        <form id="frmharvest">
          
							<div class="form-group  width-full">
                <label class="question">Harvesting</label>
                              
                <div class="choices">
                  <div class="width-full">
                  <small>How many pods/fruit harvested per cacao variety? </small>
                    <input  type="text" name="pod_per_variety" id="pod_per_variety" class="form-control"   value="<?=isset($harvests[0]->pod_per_variety) ? $harvests[0]->pod_per_variety: '';?>">
                  </div>

                  <div class="width-full">
                  <small>How many kilograms of bean produced per cacao variety?  </small>
                    <input  type="text" name="kg_produced_per_variety"  class="form-control"    value="<?=isset($harvests[0]->kg_produced_per_variety) ? $harvests[0]->kg_produced_per_variety: '';?>">
                  </div>
                  <div class="width-full">
                  <small>Total bean production (kg) </small>
                   <input type="text" name="total_bean_production" class="form-control"    value="<?=isset($harvests[0]->total_bean_production) ? $harvests[0]->total_bean_production: '';?>">
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
                    <input type="radio" name="cacao_pod_sorting" id="cacao_pod_sorting3" value="None" >
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
                              <input type="radio" name="pod_breaking" id="pod_breaking_1" value="Manual" >
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
                              <input type="radio" name="bean_sorting" id="bean_sorting_1" value="Manual" >
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
                              <input type="radio" name="bean_roasting" id="bean_roasting_1" value="Manual" >
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
                              <input type="radio" name="winnowing" id="winnowing_1" value="Manual" >
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
                              <input type="radio" name="grinding" id="grinding_1" value="Manual" >
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
                              <input type="radio" name="cacao_pod_processing" id="cacao_pod_processing_1" value="Composting" >
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

<div class="hidden">
  <div id="vharvests"><?php echo json_encode(isset($harvests[0]) ? $harvests[0] : false); ?></div>
</div>
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
$(function(){

    var vharvests = JSON.parse($('#vharvests').html());
    
    //console.log(vharvests)

    checkedRadioHarvest(vharvests);

    checkboxHarvest(vharvests)

})


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
  var checkboxHarvest = function (data) {

    if (data.pod_processing){

      var checkbox = $('#frmharvest input:checkbox[name="pod_processing[]"]')
       $.each(checkbox,function(){
          var val = $(this).val()

            if(data.pod_processing.split(',').inArray(val)){
              $(this).prop('checked',true);

              $(this).parent().parent().find('.radio-child').removeClass('hidden')
              pod_processing_rd(val,this,data);
            }
       });
    }

  }
  var pod_processing_rd = function(item,elem,data){

    var radioChild = $(elem).parent().parent().find('.radio-child');
    var radio = $(radioChild).find('input');
    $.each(radio,function(){
      var val = $(this).val()
      var input = $(this)
      var name = $(this).attr('name')

      if (name == 'pod_breaking') {
        if (data.pod_breaking == val) {
          input.prop('checked',true)
        }
      }

      if (name == 'bean_processing') {
        if (data.bean_processing == val) {
          input.prop('checked',true)
        }
      }

      if (name == 'bean_roasting') {
        if (data.pod_breaking == val) {
          input.prop('checked',true)
        }
      }
      if (name == 'bean_sorting') {
        if (data.bean_sorting == val) {
          input.prop('checked',true)
        }
      }
      if (name == 'cacao_pod_processing') {
        if (data.cacao_pod_processing == val) {
          input.prop('checked',true)
        }
      }
      if (name == 'grinding') {
        if (data.grinding == val) {
          input.prop('checked',true)
        }
      }
      if (name == 'winnowing') {
        if (data.winnowing == val) {
          input.prop('checked',true)
        }
      }
      
    })
  }
  
  var checkedRadioHarvest = function(data){
    
    $('#frmharvest input:radio').removeAttr('checked');
    var radio = $('#frmharvest input:radio');
    $.each(radio,function(){

      var val = $(this).val();
      var parent = $(this).attr('name');

      if(data.cacao_pod_sorting == 0){
        data.cacao_pod_sorting ='None';
      }
      if(data.cacao_pod_sorting == val &&  'cacao_pod_sorting' == parent ){
        $(this).prop('checked',true);
      }

      if(data.pod_processing == 0){
        data.pod_processing ='None';
      }
      if(data.pod_processing == val &&  'pod_processing' == parent ){
        $(this).prop('checked',true);
      }
      if(val == 'Dried' && data.bean_processing =='Dried'){

      $('#bean_processing_2').parent().parent().find('.radio-child-child').removeClass('hidden')
      }

      if(data.bean_processing_dried == val ){
        $(this).prop('checked',true);
      }
    })
  }

 </script>