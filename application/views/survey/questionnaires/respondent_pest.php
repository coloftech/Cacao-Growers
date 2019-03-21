<form id="frmpest">
                      <div class="form-group">
                              <label>Pest</label>

                                <div class="radio">
                                <label for="pest_0" class="btn btn-sm"><input type="checkbox" name="pest[]" id="pest_0" value="Cacao Pod Borer">Cacao Pod Borer  </label>
                                <label for="pest_1" class="btn btn-sm"><input type="checkbox"  name="pest[]"id="pest_1" value="Leaf Miner">Leaf Miner </label>
                                <label for="pest_2" class="btn btn-sm"><input type="checkbox" name="pest[]" id="pest_2" value="Rodents">Rodents</label>
                                <label for="pest_3" class="btn btn-sm"><input type="checkbox" name="pest[]" id="pest_3" value="Mirid Bugs">Mirid Bugs</label>
                                <label for="pest_4" class="btn btn-sm"><input type="checkbox" name="pest[]" id="pest_4" value="Cutworm">Cutworm </label>
                                </div>

                                <div class="radio">
                                <label for="pest_5" class="btn btn-sm"><input type="checkbox" name="pest[]" id="pest_5" value="Thrips">Thrips</label>
                                <label for="pest_6" class="btn btn-sm"><input type="checkbox"  name="pest[]"id="pest_6" value="Stem Borer">Stem Borer </label>
                                <label for="pest_7" class="btn btn-sm"><input type="checkbox" name="pest[]" id="pest_7" value="Aphids">Aphids</label>
                                <label for="pest_8" class="btn btn-sm"><input type="checkbox" name="pest[]" id="pest_8" value="Mealy Bugs">Mealy Bugs</label>
                                <label for="pest_9" class="btn btn-sm"><input type="checkbox" name="pest[]" id="pest_9" value="Termites">Termites </label>
                                </div>
                                <div class="radio">
                                  <label for="pest_10" class="btn btn-sm"><input class="others" type="checkbox" name="pest[]" id="pest_10" value="" class="others">Others, specify <input type="text" name="otherspest" id="otherspest" class="form-control" readonly="true"> </label>
                                </div>
                              </div>


                            <div class="form-group">
                              <label>Pest Control Management</label>

                                <div class="radio">
                                <label for="PestControl_1" class="btn btn-sm"><input type="checkbox" name="PestControl[]" id="PestControl_1" value="1">Sleeving  </label>
                                <label for="PestControl_2" class="btn btn-sm"><input type="checkbox"  name="PestControl[]"id="PestControl_2" value="2">Early harvesting </label>
                                <label for="PestControl_3" class="btn btn-sm"><input type="checkbox" name="PestControl[]" id="PestControl_3" value="3">Hand Picking</label>
                                
                                </div>

                                <div class="radio">
                                  <label for="PestControl_4" class="btn btn-sm"><input type="checkbox" name="PestControl[]" id="PestControl_4" value="4" class="others">Others, specify <input type="text" name="otherspestcontrol" class="form-control" readonly="true"></label>
                                </div>
                               
                                <div class="radio">
                                  <label for="PestControl_5" class="btn btn-sm"><input type="checkbox" name="PestControl[]" id="PestControl_5" value="5" class="others">Sanitation, specify <input type="text" name="otherssanitation" class="form-control" readonly="true"> </label>
                                </div>
                               
                                <div class="radio">
                                  <label for="PestControl_6" class="btn btn-sm"><input type="checkbox" name="PestControl[]" id="PestControl_6" value="6" class="others">Chemical control, specify <input type="text" name="otherschemicalcontrol" class="form-control" readonly="true"> </label>
                                </div>
                               

                            </div> 
                            <div class="form-group">
                              <label>Disease</label>

                                <div class="radio">
                                <label for="Disease_1" class="btn btn-sm"><input type="checkbox" name="Disease[]" id="Disease_1" value="1">Dieback  </label>
                                <label for="Disease_2" class="btn btn-sm"><input type="checkbox"  name="Disease[]"id="Disease_2" value="2">Black Pod Rot </label>
                                <label for="Disease_3" class="btn btn-sm"><input type="checkbox" name="Disease[]" id="Disease_3" value="3">Vascular Streak Disease</label>
                                <label for="Disease_4" class="btn btn-sm"><input type="checkbox" name="Disease[]" id="Disease_4" value="4">Frosty Pod</label>
                                <label for="Disease_5" class="btn btn-sm"><input type="checkbox" name="Disease[]" id="Disease_5" value="5">Witches Broom </label>
                                </div>

                                <div class="radio">
                                  <label for="Disease_6" class="btn btn-sm"><input type="checkbox" name="Disease[]" id="Disease_6" value="6" class="others">Others, specify <input type="text" name="otherdisease" class="form-control" readonly="true"></label>
                                </div>
                              </div>

                            <div class="form-group">
                              <label>Disease Control</label>

                                <div class="radio">
                                  <label for="diseaseControl_1" class="btn btn-sm"><input type="checkbox" name="diseaseControl[]" id="diseaseControl_1" value="1" class="others">Chemical control, specify <input type="text" name="chemicalcontrol" class="form-control" readonly="true"> </label>
                                </div>
                                <div class="radio">
                                  <label for="diseaseControl_2" class="btn btn-sm"><input type="checkbox" name="diseaseControl[]" id="diseaseControl_2" value="2" class="others">Mechanical control, specify <input type="text" name="mechanicalcontrol" class="form-control" readonly="true"> </label>
                                </div>
                               
                                <div class="radio">
                                  <label for="diseaseControl_3" class="btn btn-sm"><input type="checkbox" name="diseaseControl[]" id="diseaseControl_3" value="3" class="others">pruning and burning of infected plants/parts<input type="text" name="pruningcontrol" class="form-control" readonly="true">  </label>
                                </div>
                               
                                <div class="radio">
                                  <label for="diseaseControl_4" class="btn btn-sm"><input type="checkbox" name="diseaseControl[]" id="diseaseControl_4" value="4" class="others">Others, specify <input type="text" name="othersdiseaseControl" class="form-control"  readonly="true"></label>
                                </div>

                              </div>
                              <div class="form-group">
                                <button class="btn btn-primary">Save</button>
                              </div>
</form>
                              <script type="text/javascript">


                              $('#frmpest').on('submit',function(e){
                                 
                                 e.preventDefault();
    var frmdata = $(this).serialize();

    /*if (respondent_id == 0) {

        notify(false,'Please fill and save personal information first.');
        return false;
    };*/

        $.ajax({
            url: site_url+'/survey/save/pest/'+respondent_id,
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
                $('a[href="#menu3"]').click();
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