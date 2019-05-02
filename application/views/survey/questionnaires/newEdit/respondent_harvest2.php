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
                   <input type="text" placeholder="0.00" name="total_bean_production" class="form-control"    value="<?=isset($harvests[0]->total_bean_production) ? $harvests[0]->total_bean_production: '';?>">
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
                    <div class="xradio-success">                      
                    <input type="radio" name="pod_processing" id="pod_processing1" value="Manual" >
                    <label for="pod_processing1">Manual</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="pod_processing" id="pod_processing2" value="Mechanical">
                    <label for="pod_processing2">Mechanical</label>
                    </div>
                  </div> 

                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="pod_processing" id="pod_processing3" value="None" checked="true">
                    <label for="pod_processing3">None</label>
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
    checkedRadioHarvest(vharvests);
})

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
    })
  }
 </script>