        <form id="frmharvest">
          
							<div class="form-group  width-full">
                <label class="question">Harvesting</label>
                              
                <div class="choices">
                  <div class="width-full">
                  <small>How many pods/fruit harvested per cacao variety? </small>
                    <input  type="number" name="pod_per_variety" id="pod_per_variety" placeholder="0.00" step="0.01" class="form-control">
                  </div>

                  <div class="width-full">
                  <small>How many kilograms of bean produced per cacao variety?  </small>
                    <input  type="number" name="kg_produced_per_variety" placeholder="0.00" step="0.01" class="form-control">
                  </div>
                  <div class="width-full">
                  <small>Total bean production (kg) </small>
                   <input type="number" placeholder="0.00" name="total_bean_production" step="0.01" class="form-control">
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
 </script>