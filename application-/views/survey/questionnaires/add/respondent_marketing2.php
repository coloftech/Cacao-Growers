<form id="frmmarketing">
            

              <div class="form-group width-full">

                <label class="question">Type of product sold</label>
                
                <div class="choices">
                   <div class="xradio col-md-4">
                    <div class="xradio-primary">                      
                    <input type="checkbox" name="typeproductsold[]" id="tps1" value="Fresh bean" >
                    <label for="tps1">Fresh bean</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-primary">                      
                    <input type="checkbox" name="typeproductsold[]" id="tps2" value="Dried bean">
                    <label for="tps2">Dried bean</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-primary">                      
                    <input type="checkbox" name="typeproductsold[]" id="tps3" value="Tablea"  >
                    <label for="tps3">Tablea</label>
                    </div>
                  </div>
                  <div class="xradio col-md-4">
                    <div class="xradio-primary">                      
                    <input type="checkbox" name="typeproductsold[]" id="tps4" value="Others"  >
                    <label for="tps4">Others</label>
                    </div>
                  </div>

                  <div class="col-md-12 others-input">
                      <small>Others, specify here</small><input type="text" class="form-control" name="typeproductsold_others">
                  </div>
                </div>

              </div>
              <div class="form-group width-full">

                <label class="question">Type of marketing</label>
                
                <div class="choices">
                   <div class="xradio col-md-4">
                    <div class="xradio-primary">                      
                    <input type="checkbox" name="marketingType[]" id="tm1" value="Retails" >
                    <label for="tm1">Retails</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-primary">                      
                    <input type="checkbox" name="marketingType[]" id="tm2" value="Whole sale">
                    <label for="tm2">Whole sale</label>
                    </div>
                  </div> 
                  <div class="xradio col-md-4">
                    <div class="xradio-primary">                      
                    <input type="checkbox" name="marketingType[]" id="tm3" value="Contract">
                    <label for="tm3">Contract</label>
                    </div>
                  </div>
                  <div class="xradio col-md-4">
                    <div class="xradio-primary">                      
                    <input type="checkbox" name="marketingType[]" id="tm5" value="Personal Consume">
                    <label for="tm5">Personal Consume</label>
                    </div>
                  </div>
                  <div class="xradio col-md-4">
                    <div class="xradio-primary">                      
                    <input type="checkbox" name="marketingType[]" id="tm4" value="Others"  >
                    <label for="tm4">Others</label>
                    </div>
                  </div>

                  
                  <div class="col-md-12 others-input">
                      <small>Others, specify here</small><input type="text" class="form-control" name="marketingType_others">
                  </div>
                </div>

              </div>
              <div class="form-group width-full">
                <label class="question">Market place/destination</label>
                <div class="choices">
                    <div class="width-full">
                        
                <input type="text" class="form-control" name="market_destination" placeholder="Store/Trucking/MarketAddress">
                    </div>
                </div>
              </div>
                <div class="form-group width-full">
                    <button class="btn btn-primary" type="button"  id="btnsaveAll">Save</button><div class="results hidden"></div>
                </div>
</form>
            <script type="text/javascript">


  $('#frmmarketing').on('submit',function (e) {
    e.preventDefault();

    });
  </script>