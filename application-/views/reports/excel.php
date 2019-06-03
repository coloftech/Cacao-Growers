<section class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="panel">
                <div class="panel-body">
                    <form class="form form-inline">
                         <label for="citytown">Address</label>
                            <select type="text" id="citytown" name="citytown" class="form-control input-sm">
                              <option value="0">All</option>
                              
                            </select>

                         <label for="citytown">Year of survey</label>
                            <select type="text" id="dateofsurvey" name="dateofsurvey" class="form-control input-sm">
                              <option value="0">All</option>
                              <?php 

                              for ($i = 2018 ; $i <= date('Y'); $i++) {
                                    echo "<option value='$i'>$i</option>";
                                }
                                 ?>
                            </select> 
                            <label>Type</label>
                             <select type="text" id="reporttype" name="reporttype" class="form-control input-sm">
                              <option value="excel">Excel</option>  
                              <option value="html">HTML</option>                             
                            </select> 

                            <button type="button" class="btn btn-default btn-sm generate hidden">Generate report</button>

                            <a class="download hidden btn btn-success btn-sm" target="_blank" href="">Download</a>
                    </form> 
                    <di class="pull-right loading hidden"><img src="<?=base_url('public/images/loading.gif')?>" style="width:50px;position: absolute;top: 5px;right: 15px;"></di>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <!-- start Basic information -->
        <div class="col-md-4">
        <div class="panel">
            <div class="panel-body">
                 <h4>Basic information</h4>

                <div class="xradio">
                    <div class="xradio-success">
                        <input type="checkbox" name="basicinfo[]" id="fullname" value="fullname" checked />
                        <label for="fullname">Name</label>
                    </div>
                    <div class="xradio-success">
                        <input type="checkbox" name="basicinfo[]" id="checkbox2"  value="date_of_survey" checked />
                        <label for="checkbox2">Date of survey</label>
                    </div>
                    <div class="xradio-success">
                        <input type="checkbox" name="basicinfo[]" value="address" id="checkbox3"  checked/>
                        <label for="checkbox3">Address</label>
                    </div>
                    <div class="xradio-success">
                        <input type="checkbox" name="basicinfo[]" id="checkbox4" value="age" checked />
                        <label for="checkbox4">Age</label>
                    </div>
                    <div class="xradio-success">
                        <input type="checkbox" name="basicinfo[]" id="checkbox5" value="civilstatus" checked />
                        <label for="checkbox5">Civil Status</label>
                    </div>
                    <div class="xradio-success">
                        <input type="checkbox" name="basicinfo[]" id="checkbox6" value="education" checked />
                        <label for="checkbox6">Educational Attainment</label>
                    </div>
                    <div class="xradio-success">
                        <input type="checkbox" name="basicinfo[]" id="checkbox7" value="familysize" checked />
                        <label for="checkbox7">Family size</label>
                    </div>
                    <div class="xradio-success">
                        <input type="checkbox" name="basicinfo[]" id="checkbox8" value="annualincome" checked />
                        <label for="checkbox8">Annual income</label>
                    </div>
                    <div class="xradio-success">
                        <input type="checkbox" name="basicinfo[]" value="organization" id="checkbox9" />
                        <label for="checkbox9">Organization/Affiliation</label>
                    </div>
                    <div class="xradio-success">
                        <input type="checkbox" name="basicinfo[]" value="seminar" id="checkbox10" />
                        <label for="checkbox10">Seminar/Training</label>
                    </div>
                </div>
            </div>
        </div>  
        </div>
        <!-- end -->

        <!-- start farm-profile-->
        <div class="col-md-4">
        <div class="panel">
            <div class="panel-body">
                 <h4>Farm profile</h4>

                <div class="xradio">
                    <div class="xradio-success">
                        <input type="checkbox" name="farmprofile[]" value="land_ownership" id="fcheckbox1" />
                        <label for="fcheckbox1">Land Ownership</label>
                    </div>
                    <div class="xradio-success">
                        <input type="checkbox" name="farmprofile[]" value="farm_size" id="fcheckbox2" />
                        <label for="fcheckbox2">Farm Size</label>
                    </div>
                    <div class="xradio-success">
                        <input type="checkbox" name="farmprofile[]" id="fcheckbox3" value="no_of_trees" />
                        <label for="fcheckbox3">No. of trees</label>
                    </div>
                    <div class="xradio-success">
                        <input type="checkbox" name="farmprofile[]" id="fcheckbox4" value="planting_distance" />
                        <label for="fcheckbox4">Planting distance</label>
                    </div>
                    <div class="xradio-success">
                        <input type="checkbox" name="farmprofile[]" id="fcheckbox5" value="farming_experience_production" />
                        <label for="fcheckbox5">Farming Experience on Cacao Production</label>
                    </div>
                    <div class="xradio-success">
                        <input type="checkbox" name="farmprofile[]" id="fcheckbox6" value="farming_experience_production_organic" />
                        <label for="fcheckbox6">Farming Experience as Organic Cacao Production Practitioner</label>
                    </div>
                    <div class="xradio-success">
                        <input type="checkbox" name="farmprofile[]" id="fcheckbox7" value="cacao_varieties" />
                        <label for="fcheckbox7">Cacao varieties planted</label>
                    </div>
                    <div class="xradio-success">
                        <input type="checkbox" name="farmprofile[]" id="fcheckbox8" value="cacao_clone_planted" />
                        <label for="fcheckbox8">Cacao Clones planted</label>
                    </div>
                    <div class="xradio-success">
                        <input type="checkbox" name="farmprofile[]" id="fcheckbox9" value="farming_category" />
                        <label for="fcheckbox9">Category</label>
                    </div>
                    <div class="xradio-success">
                        <input type="checkbox" name="farmprofile[]" id="fcheckbox10" value="farming_status" />
                        <label for="fcheckbox10">Status</label>
                    </div>
                </div>
            </div>
        </div>  
        </div>
        <!-- end -->

        
        <!-- start PRODUCTION MANAGEMENT-->
        <div class="col-md-4">
        <div class="panel">
            <div class="panel-body">
                 <h4>Porduction Management</h4>

                <div class="xradio">
                    <div class="xradio-success">
                        <input type="checkbox"  id="prcheckbox1" name="productionmanagement[]" value="climate_factor_rainfall" />
                        <label for="prcheckbox1">Climatic Factor </label>
                    </div>
                    <div class="xradio-success">
                        <input type="checkbox"  id="prcheckbox2" name="productionmanagement[]" value="edaphic_factors_soil_type" />
                        <label for="prcheckbox2">Edaphic factors  </label>
                    </div>
                    <div class="xradio-success">
                        <input type="checkbox"  id="prcheckbox3" name="productionmanagement[]" value="cropping_system" />
                        <label for="prcheckbox3">Cropping System: </label>
                    </div>
                    <div class="xradio-success">
                        <input type="checkbox"  id="prcheckbox4" name="productionmanagement[]" value="associated_crops" />
                        <label for="prcheckbox4">Associated Crops: </label>
                    </div>
                    <div class="xradio-success">
                        <input type="checkbox"  id="prcheckbox5" name="productionmanagement[]" value="fertilizer_applied" />
                        <label for="prcheckbox5">Fertilizer applied </label>
                    </div>
                    <div class="xradio-success">
                        <input type="checkbox"  id="prcheckbox6" name="productionmanagement[]" value="fertilizer_application_frequency" />
                        <label for="prcheckbox6">Frequency of fertilizer application </label>
                    </div>
                    <div class="xradio-success">
                        <input type="checkbox"  id="prcheckbox7" name="productionmanagement[]" value="practice_pruning" />
                        <label for="prcheckbox7">Did you practice pruning </label>
                    </div>
                    <div class="xradio-success">
                        <input type="checkbox"  id="prcheckbox8" name="productionmanagement[]"  value="da_training" />
                        <label for="prcheckbox8">Did the Department of Agriculture conduct training and services about cacao production and pest management? </label>
                    </div>
                    <div class="xradio-success">
                        <input type="checkbox"  id="prcheckbox9" name="productionmanagement[]" value="da_share_technology" />
                        <label for="prcheckbox9">Is there any technical staff from the Department of Agriculture who shared technology for production marketing and services?   </label>
                    </div>
                </div>
            </div>
        </div>  
        </div>
        <!-- end -->

    </div>
    <div class="row">
        <!-- start PEST & DISEASES-->
        <div class="col-md-4">
        <div class="panel">
            <div class="panel-body">
                 <h4>Pest & Diseases</h4>

                <div class="xradio">
                    <div class="xradio-success">
                        <input type="checkbox" id="pcheckbox1" name="pestdiseases[]" value="pest" />
                        <label for="pcheckbox1">Pest</label>
                    </div>
                    <div class="xradio-success">
                        <input type="checkbox"  id="pcheckbox2" name="pestdiseases[]" value="pest_control_management" />
                        <label for="pcheckbox2">Pest Control Management</label>
                    </div>
                    <div class="xradio-success">
                        <input type="checkbox" id="pcheckbox3" name="pestdiseases[]" value="disease" />
                        <label for="pcheckbox3">Disease</label>
                    </div>
                    <div class="xradio-success">
                        <input type="checkbox" id="pcheckbox4" name="pestdiseases[]" value="disease_control" />
                        <label for="pcheckbox4">Disease Control</label>
                    </div>
                </div>
            </div>
        </div>  
        </div>
        <!-- end -->

        <!-- start Post Harvest-->
        <div class="col-md-4">
        <div class="panel">
            <div class="panel-body">
                 <h4>Post Harvest</h4>

                <div class="xradio">
                    <div class="xradio-success">
                        <input type="checkbox" id="hcheckbox1" value="pod_per_variety" name="postharvest[]" />
                        <label for="hcheckbox1">How many pods/fruit harvested per cacao variety? </label>
                    </div>
                    <div class="xradio-success">
                        <input type="checkbox" id="hcheckbox2" value="kg_produced_per_variety" name="postharvest[]" />
                        <label for="hcheckbox2">How many kilograms of bean produced per cacao variety?  </label>
                    </div>
                    <div class="xradio-success">
                        <input type="checkbox"  id="hcheckbox3" value="total_bean_production" name="postharvest[]" />
                        <label for="hcheckbox3">Total bean production (kg) </label>
                    </div>
                    <div class="xradio-success">
                        <input type="checkbox"  id="hcheckbox4" value="cacao_pod_sorting" name="postharvest[]" />
                        <label for="hcheckbox4">Cacao Pod Sorting </label>
                    </div>
                    <div class="xradio-success">
                        <input type="checkbox"  id="hcheckbox5" value="pod_processing"  name="postharvest[]" />
                        <label for="hcheckbox5">Pod processing </label>
                    </div>
                </div>
            </div>
        </div>  
        </div>
        <!-- end -->
        <!-- start Post Harvest-->
        <div class="col-md-4">
        <div class="panel">
            <div class="panel-body">
                 <h4>Marketing</h4>

                <div class="xradio">
                    <div class="xradio-success">
                        <input type="checkbox" name="marketing[]" id="mcheckbox1" value="product_sold_type" />
                        <label for="mcheckbox1">Type of product sold </label>
                    </div>
                    <div class="xradio-success">
                        <input type="checkbox" name="marketing[]" id="mcheckbox2" value="marketing_type"/>
                        <label for="mcheckbox2">Type of marketing </label>
                    </div>
                    <div class="xradio-success">
                        <input type="checkbox" name="marketing[]" id="mcheckbox3" value="market_destination"/>
                        <label for="mcheckbox3">Market place/destination </label>
                    </div>
                </div>
            </div>
        </div>  
        </div>
        <!-- end -->

    </div>
    <div class="row">
        <div class="col-md-12">
        </div>
    </div>
</section>


<div id="htmlmodal" class="modal" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">HTML REPORT OUTPUT</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>
          <div class="htmloutput table-responsive">No table</div>
        </p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" id="btn-print">print</button>
        
      </div>
    </div>
  </div>
</div>


<script type="text/javascript">

    function showhtml(data) {
        // body...
        $('.htmloutput').html(data);
        $('#htmlmodal').modal('show');

    }
    $('button.generate').on('click',function(){

        if($('input#fullname').is(':checked')){
            
        }else{
            notify('warning','Name should not be unchecked.');
            return false;
        }
        $(this).addClass('hidden');

        var city = $('#citytown').val();
        var year = $('#dateofsurvey').val();

        var basic = $('input:checkbox[name="basicinfo[]"]');
        var basic_details = JSON.stringify(basic.getchecked());



        var farmprofile = $('input:checkbox[name="farmprofile[]"]');
        var farm_details = JSON.stringify(farmprofile.getchecked());

        var pm = $('input:checkbox[name="productionmanagement[]"]');
        var production_details = JSON.stringify(pm.getchecked());

        var pest = $('input:checkbox[name="pestdiseases[]"]');
        var pestdiseases_details = JSON.stringify(pest.getchecked());

        var postharvest = $('input:checkbox[name="postharvest[]"]');
        var postharvest_details = JSON.stringify(postharvest.getchecked());

        var marketing = $('input:checkbox[name="marketing[]"]');
        var marketing_details = JSON.stringify(marketing.getchecked());

        var data = 'basic='+basic_details+'&farm='+farm_details+'&production='+production_details+'&pests='+pestdiseases_details+'&postharvest='+postharvest_details+'&marketing='+marketing_details+'&city='+city+'&year='+year;
            data = data+'&reporttype='+$('#reporttype').val();
            console.log(data);

        $.ajax({
            url: site_url+'/reports/generate',
            type: 'post',
            dataType: 'json',
            data: data, 
            beforeSend: function(){
                $('.loading').removeClass('hidden');
            },
            success: function(response){

                console.log(response.table);
                if ($('#reporttype').val() == 'html') {
                    showhtml(response.table);
                }
                return false;
                if (response.status == true) {

                download =0;
                $('a.download').attr('href',base_url+'reports/download/'+response.output).removeClass('hidden');

                notify('success','Report request generated successfully, Click the button download to get the data in excel');
                }else{

                    notify('warning','No data to generate.');
                    $('button.generate').removeClass('hidden');
                }

            },
              error: function (request, status, error) {
                console.log(request.responseText);
            },
              complete: function(){
                $('.loading').addClass('hidden');
                setTimeout(function(){
                    $('button.generate').removeClass('hidden');
                    $('a.download').addClass('hidden');

                },60000);
              }
            });




    });
    $('input:checkbox').on('click',function(){
        if($('a.download').hasClass('hidden')){
            // do nothing
        }else{
            $('a.download').addClass('hidden');
        }
         if($('button.generate').hasClass('hidden')){
            // do nothing
            $('button.generate').removeClass('hidden');
        }

    });

    $('select').on('change',function(){
        if($('a.download').hasClass('hidden')){
            // do nothing
        }else{
            $('a.download').addClass('hidden');
        }
         if($('button.generate').hasClass('hidden')){
            // do nothing
            $('button.generate').removeClass('hidden');
        }

    });
    var download = 0;
    $('a.download').on('click',function(){
        if (download > 1) {
            return false;
        }
        if (download == 1) {

            $(this).addClass('hidden');
        }
        download++;
    });

  var dynamicSort = function(property) {
    var sortOrder = 1;
    if(property[0] === "-") {
        sortOrder = -1;
        property = property.substr(1);
    }
    return function (a,b) {
        var result = (a[property] < b[property]) ? -1 : (a[property] > b[property]) ? 1 : 0;
        return result * sortOrder;
    }
}

  var city = function(){

  var url = base_url+'/assets/philippines-region-province-citymun-brgy-master/json/refcitymun.json';
  var jqxhr = $.getJSON( url, function(records, i) {
      /*var record = records.RECORDS;*/
      var cities = records.RECORDS;

      cities.sort(dynamicSort('citymunDesc'));

       $.each( cities, function(e,i) {
       var upper = i.citymunDesc;
       var res = upper.toLowerCase();
      var citymunDesc = res.charAt(0).toUpperCase() + res.substr(1);
       $('#citytown').append($("<option></option>").attr("value",i.id).data('citymunCode',i.citymunCode).text(citymunDesc));
      
      });

  });
}

    $(function(){

            $('button.generate').removeClass('hidden');

            city();
    });
</script>