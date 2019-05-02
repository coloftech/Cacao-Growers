        <form id="frmharvest">
          
							<div class="form-group">
                              <label>Harvesting</label><br/>
                              &nbsp;<span>How many pods/fruit harvested per cacao variety? </span><input  type="number" name="pod_per_variety" placeholder="0.00" step="0.01" class="form-control">
                              &nbsp;<span>How many kilograms of bean produced per cacao variety?  </span><input  type="number" name="kg_produced_per_variety" placeholder="0.00" step="0.01" class="form-control">
                              &nbsp;<span>Total bean production (kg) </span><input type="number" placeholder="0.00" name="total_bean_production" step="0.01" class="form-control">
                            </div>
                            <div class="form-group">
                              <label>Cacao Pod Sorting</label>
                              <div class="radio">
                                <label for="cacaopod_1"><input type="radio" name="cacao_pod_sorting" id="cacaopod_1" value="1" checked>Manual</label>
                              
                                <label for="cacaopod_1"><input type="radio" name="cacao_pod_sorting" id="cacaopod_2" value="2">Mechanical</label>
                              </div>
                            </div>

                            <div class="form-group">
                              <label>Pod processing</label>
                              <div class="radio">
                                <label for="Podprocessing_1"><input type="radio" name="pod_processing" id="Podprocessing_1" value="1" checked>Manual</label>
                              
                                <label for="Podprocessing_2"><input type="radio" name="pod_processing" id="Podprocessing_2" value="2">Mechanical</label>
                              </div>
                            </div>
                        <button class="btn btn-primary" type="submit">Save</button>

        </form>

          <script type="text/javascript">


  $('#frmharvest').on('submit',function (e) {
    e.preventDefault();
    var frmdata = $(this).serialize();

    /*if (respondent_id == 0) {

        notify(false,'Please fill and save personal information first.');
        return false;
    };*/

        $.ajax({
            url: site_url+'/survey/save/harvest/'+respondent_id,
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
                $('a[href="#menu5"]').click();
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