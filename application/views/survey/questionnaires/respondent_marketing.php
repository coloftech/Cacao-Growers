<form id="frmmarketing">
                            <div class="form-group">
                              <label>Type of product sold</label>
                              <div class="radio">
                                <label for="typeproductsold_1"><input type="checkbox" name="typeproductsold[]" id="typeproductsold_1" value="Fresh bean">Fresh bean</label>
                                <label for="typeproductsold_2"><input type="checkbox" name="typeproductsold[]" id="typeproductsold_2" value="Dried bean">Dried bean</label>
                                <label for="typeproductsold_3"><input type="checkbox" name="typeproductsold[]" id="typeproductsold_3" value="Tablea">Tablea</label>
                              </div>
                              <div class="radio">
                                <label for="typeproductsold_4"><input type="checkbox" class="others" name="typeproductsold" id="typeproductsold_4" value="4">Others, specify 
                                <input type="text" name="typeproductsold_others" class="form-control" readonly="true"></label>
                              </div>
                            </div>
                            <div class="form-group">
                              <label>Type of marketing</label>
                               <div class="radio">
                                <label for="marketingType_1"><input type="checkbox" name="marketingType[]" id="marketingType_1" value="Retails">Retails</label>
                                <label for="marketingType_2"><input type="checkbox" name="marketingType[]" id="marketingType_2" value="Whole sale">Whole sale</label>
                                <label for="marketingType_3"><input type="checkbox" name="marketingType[]" id="marketingType_3" value="Contract">Contract</label>
                              </div>
                              <div class="radio">
                                <label for="marketingType_4"><input type="checkbox" class="others" name="marketingType[]" id="marketingType_4" value="4">Others, specify 
                                <input type="text" class="form-control" name="marketingType_others" readonly="true"></label>
                              </div>
                            </div>
                            <div class="form-group">
                              <label>Market place/destination</label>
                              <input type="" class="form-control" name="market_destination">
                            </div>
                            <div class="form-group">
                              <button class="btn btn-primary" type="submit">Save</button>
                            </div>
</form>
            <script type="text/javascript">


  $('#frmmarketing').on('submit',function (e) {
    e.preventDefault();
    var frmdata = $(this).serialize();

    /*if (respondent_id == 0) {

        notify(false,'Please fill and save personal information first.');
        return false;
    };*/

        $.ajax({
            url: site_url+'/survey/save/marketing/'+respondent_id,
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