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
                      <small>Others, specify here</small><input type="text" class="form-control" name="typeproductsold_others"   value="<?=isset($marketing[0]->product_sold_type_others) ? $marketing[0]->product_sold_type_others: '';?>">
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
                      <small>Others, specify here</small><input type="text" class="form-control" name="marketingType_others"  value="<?=isset($marketing[0]->marketing_type_others) ? $marketing[0]->marketing_type_others: '';?>">
                  </div>
                </div>

              </div>
              <div class="form-group width-full">
                <label class="question">Market place/destination</label>
                <div class="choices">
                    <div class="width-full">
                        
                <input type="text" class="form-control" name="market_destination" placeholder="Store/Trucking/MarketAddress" value="<?=isset($marketing[0]->market_destination) ? $marketing[0]->market_destination: '';?>">
                    </div>
                </div>
              </div>
                <div class="form-group width-full">
                    <button class="btn btn-primary" type="button"  id="btnsaveAll">Save</button>
                </div>
</form>


<div class="hidden">
  <div id="marketings"><?php echo json_encode(isset($marketing[0]) ? $marketing[0] : false); ?></div>
</div>
            <script type="text/javascript">


  $('#frmmarketing').on('submit',function (e) {
    e.preventDefault();

    });

    $(function(){

    var vmarketings = JSON.parse($('#marketings').html());

  if(vmarketings){

    var dbData = vmarketings.product_sold_type.split(',');
      if(dbData.length > 0){
        var input = $('#frmmarketing input:checkbox[name="typeproductsold[]"]')
        var others = []

      $.each(input,function(){
       var val = $(this).val();
           val = $.trim(val);
          if(dbData.inArray(val)){
            $(this).prop('checked',true);
          }
      })

      }
    var dbData = vmarketings.marketing_type.split(',');
      if(dbData.length > 0){
        var input = $('#frmmarketing input:checkbox[name="marketingType[]"]')
        var others = []

      $.each(input,function(){
       var val = $(this).val();
           val = $.trim(val);
          if(dbData.inArray(val)){
            $(this).prop('checked',true);
          }
      })

      }
    }
})
  </script>