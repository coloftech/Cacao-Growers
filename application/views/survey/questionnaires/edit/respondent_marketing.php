<?php $marketing = isset($marketing[0])?$marketing[0]:array(); ?>
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
                                <input type="text" name="typeproductsold_others" class="form-control" readonly="true"  value="<?=isset($marketing->product_sold_type_others) ? $marketing->marketing_type_others : ''?>"></label>
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
                                <input type="text" class="form-control" name="marketingType_others" readonly="true" value="<?=isset($marketing->marketing_type_others) ? $marketing->marketing_type_others : ''?>"></label>
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