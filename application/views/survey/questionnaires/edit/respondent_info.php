            <form class="form" id="frmPersonalInfo">
                          <label>Name: </label><input type="text" name="fname" id="fname" class="form-control" placeholder="First name" oninput="this.value = this.value.toUpperCase()" value="<?=isset($basicinfo[0]->fname) ? $basicinfo[0]->fname: '';?>" required> <input type="text"  value="<?=isset($basicinfo[0]->lname) ? $basicinfo[0]->lname: '';?>"  name="lname" id="lname" class="form-control" placeholder="Last name" oninput="this.value = this.value.toUpperCase()" required>
                          
                          <div class="continue-action">
                          <div class="form-group">
                            <label>Date of survey:</label>
                            <input type="date" class="form-control" name="date_of_survey" value="<?=date('Y-m-d')?>" max="<?=date('Y-m-d')?>">
                          </div>
                          <label>Address: </label><input type="text" name="address" id="address" class="form-control" placeholder="Address" value="<?=isset($basicinfo[0]->address) ? $basicinfo[0]->address: '';?>">
                            
                          <label>Age: <span class="required">*</span></label><input oninput="this.value=this.value.slice(0,this.maxLength)" type="number" name="age" id="age" min="15" max='120' class="form-control" maxlength="3" placeholder="Age"  value="<?=isset($basicinfo[0]->age) ? $basicinfo[0]->age: '';?>" required>
                          <label>Civil status: </label>
                          <div class="radio">
                          
                          <label for="single" class="btn btn-sm"><input type="radio" name="civilstatus" id="single" value="Single" data-php="<?=$basicinfo[0]->civilstatus?>">Single</label>
                          <label for="married" class="btn btn-sm"><input type="radio" name="civilstatus" id="married" value="Married"   data-php="<?=$basicinfo[0]->civilstatus?>">Married</label>
                          <label for="widow" class="btn btn-sm"><input type="radio"  name="civilstatus"id="widow" value="Widow/Widower"  data-php="<?=$basicinfo[0]->civilstatus?>" >Widow/Widower</label>
                          </div>
                          

                          <label>Educational attainment: </label> 
                          <div class="radio">
                          <label for="Educational_1" class="btn btn-sm"><input type="radio" name="education" id="Educational_1" value="Post Graduate (MS, PhD)"  data-php="<?=$basicinfo[0]->education?>" >Post Graduate (MS, PhD)</label>
                          <label for="Educational_2" class="btn btn-sm"><input type="radio" name="education" id="Educational_2" value="College Graduate" data-php="<?=$basicinfo[0]->education?>" >College Graduate</label>
                          <label for="Educational_3" class="btn btn-sm"><input type="radio"  name="education"id="Educational_3" value="College Level"  data-php="<?=$basicinfo[0]->education?>">College Level</label>
                          <label for="Educational_4" class="btn btn-sm"><input type="radio" name="education" id="Educational_4" value="High School Graduate" data-php="<?=$basicinfo[0]->education?>">High School Graduate</label>
                          </div>
                          <div class="radio">
                          <label for="Educational_5" class="btn btn-sm"><input type="radio" name="education" id="Educational_5" value="High School Level" data-php="<?=$basicinfo[0]->education?>">High School Level</label>
                          <label for="Educational_6" class="btn btn-sm"><input type="radio"  name="education"id="Educational_6" value="Elementary Graduate" data-php="<?=$basicinfo[0]->education?>">Elementary Graduate</label>
                          <label for="Educational_7" class="btn btn-sm"><input type="radio" name="education" id="Educational_7" value="Elementary Level" data-php="<?=$basicinfo[0]->education?>">Elementary Level</label>
                          <label for="Educational_8" class="btn btn-sm"><input type="radio" name="education" id="Educational_8" value="8" class="others" data-php="<?=$basicinfo[0]->education?>">Others, specify <input type="text" name="txtothereducation"></label>
                          
                          </div>
                          
                          <label>Family size</label><input type="number" maxlength="2" class="form-control" id="familysize" name="familysize" value="1" required>
                          <label>Annual Income</label>

                          <div class="radio">
                          <label for="income_1" class="btn btn-sm"><input type="radio" name="annualincome" id="income_1" value="10,000 below" checked="true"  data-php="<?=$basicinfo[0]->annualincome?>">10,000 below</label>
                          <label for="income_2" class="btn btn-sm"><input type="radio"  name="annualincome"id="income_2" value="10,001 to 20,000"  data-php="<?=$basicinfo[0]->annualincome?>">10,001 to 20,000</label>
                          <label for="income_3" class="btn btn-sm"><input type="radio" name="annualincome" id="income_3" value="20,001 to 30,000"  data-php="<?=$basicinfo[0]->annualincome?>">20,001 to 30,000</label>
                          <label for="income_4" class="btn btn-sm"><input type="radio" name="annualincome" id="income_4" value="30,001 to 40,000"  data-php="<?=$basicinfo[0]->annualincome?>">30,001 to 40,000</label>
                          <label for="income_5" class="btn btn-sm"><input type="radio" name="annualincome" id="income_5" value="40,000 and above"  data-php="<?=$basicinfo[0]->annualincome?>">40,000 and above</label>
                          
                          </div>
                          <div class="org">
                            
                          <label>Organizational Affiliation: </label><br/><span>What organization/association/group related to cacao farming are you affiliated with?</span>
                            <div class="orgQ">
                            <?php if (is_array($organizations)): ?>
                              <?php foreach ($organizations as $key): ?>
                                <ul class="organizational table-bordered">
                                <li><label>Name of Organization/ Association</label> <input type="text" class="form-control" name="nameoforganization[]" value="<?=$key->name_of_organization?>"></li>
                                <li><label>Position</label> <input type="text" class="form-control" name="position[]" value="<?=$key->position?>"></li>
                                <li><label>Years in Membership</label> <input type="text" class="form-control" name="yearsmembership[]" value="<?=$key->years_in_membership?>"></li>
                                <li><label>Programs/ Projects of the Organization</label> <input type="text" class="form-control" name="programsforganization[]" value="<?=$key->projects_of_organization?>"></li>
                                
                                </ul>
                              <?php endforeach ?>
                              <?php else: ?>
                                <ul class="organizational table-bordered">
                            <li><label>Name of Organization/ Association</label> <input type="text" class="form-control" name="nameoforganization[]"></li>
                            <li><label>Position</label> <input type="text" class="form-control" name="position[]"></li>
                            <li><label>Years in Membership</label> <input type="text" class="form-control" name="yearsmembership[]"></li>
                            <li><label>Programs/ Projects of the Organization</label> <input type="text" class="form-control" name="programsforganization[]"></li>
                            
                            </ul>
                            <?php endif ?>
                            
                            </div>
                            <span style="width:20px;display:inline-block;"></span><button type="button"  class="btn btn-sm btn-org-more">Add more</button>
                            
                          </div>
                          <br/><span>What are the trainings/seminars/activities related to cacao farming that you have attended?</span>
                          <div class="training">
                            
                            <?php if (is_array($affiliations)): ?>
                              <?php foreach ($affiliations as $key): ?>
                                

                            <ul class="trainingQ table-bordered">
                            <li><label>Title of Training/Seminar</label> <input type="text" class="form-control" name="trainingtitle[]" value="<?=$key->title_of_trainig?>"></li>
                            <li><label>Date Conducted</label> <input type="date" class="form-control maxdate"  value="<?=$key->date_conducted?>" max="<?=date('Y-m-d')?>" name="trainingdated[]"></li>
                            <li><label>Venue</label> <input type="text" class="form-control" name="trainingvenue[]"  value="<?=$key->venue?>"></li>
                            <li><label>Sponsoring Agency</label> <input type="text" class="form-control" name="trainingsponsor[]"  value="<?=$key->sponsoring_agency?>"></li>
                            </ul>
                              <?php endforeach ?>
                              <?php else: ?>
                                

                            <ul class="trainingQ table-bordered">
                            <li><label>Title of Training/Seminar</label> <input type="text" class="form-control" name="trainingtitle[]"></li>
                            <li><label>Date Conducted</label> <input type="date" class="form-control maxdate" value="<?=date('Y-m-d')?>" max="<?=date('Y-m-d')?>" name="trainingdated[]"></li>
                            <li><label>Venue</label> <input type="text" class="form-control" name="trainingvenue[]"></li>
                            <li><label>Sponsoring Agency</label> <input type="text" class="form-control" name="trainingsponsor[]"></li>
                            </ul>
                            <?php endif ?>
                            
                          </div>
                            <span style="width:20px;display:inline-block;"></span><button type="button" class="btn btn-sm btn-training-more">Add more</button>

                    <div class="form-group">
                    <br/>
                        <button class="btn btn-primary" type="submit">Save</button>
                    </div>

                          </div>
                    </form>

<div id="addressmodal" class="modal" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>
        <div class="form-group">
          <label>Address: </label><input type="text" readonly="true" class="form-control" name="mdaddress" id="mdaddress">
        </div>
        <div class="form-group">
          <label>Street address:</label><input type="text" name="streetaddress" id="streetaddres" class="form-control" placeholder="House no./Bldg/Sitio/Purok">
        </div>

        <div class="form-group">
          <label>Barangay:</label><select name="barangay" id="barangay" class="form-control"></select>
        </div>
        <div class="form-group">
          <label>City:</label><select name="city" id="city" class="form-control"></select>
        </div>

        <div class="form-group">
          <label>Province:</label><input type="text" name="province" id="province" value="Bohol" class="form-control">
        </div>
        </p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" id="btnuse">Use</button>
        
      </div>
    </div>
  </div>
</div>


<script type="text/javascript">

var base_url = '<?=base_url()?>';
  $('#address').on('focus',function(){
  $('#addressmodal').modal('show');

    $('#streetaddres').blur();
})
$('.btn-org-more').on('click',function(){
  var ul = '<ul class="organizational table-bordered"><li><label>Name of Organization/ Association</label> <input type="text" class="form-control" name="nameoforganization[]"></li><li><label>Position</label><input type="text" class="form-control" name="position[]"></li><li><label>Years in Membership</label> <input type="text" class="form-control"  name="yearsmembership[]"></li><li><label>Programs/ Projects of the Organization</label><input type="text" class="form-control" name="programsforganization[]"></li></ul>';

  $('.orgQ').append(ul);
});
$('.btn-training-more').on('click',function(){
  var ul ='<ul class="trainingQ table-bordered"><li><label>Title of Training/Seminar</label> <input type="text" class="form-control" name="trainingtitle[]"></li><li><label>Date Conducted</label> <input type="date" class="form-control maxdate" name="trainingdated[]"></li><li><label>Venue</label> <input type="text" class="form-control" name="trainingvenue[]"></li><li><label>Sponsoring Agency</label> <input type="text" class="form-control" name="trainingsponsor[]"></li></ul>';
  $('.training').append(ul);
});


var searchRespondent = function (e) {
  
  var fname = $('#fname').val();
  var lname = $('#lname').val();
  var frmdata = 'lname='+lname+'&fname='+fname;
        $.ajax({
            url: site_url+'/survey/searchrespondent',
            type: 'post',
            dataType: 'json',
            data: frmdata, 
            beforeSend: function(){
              console.clear();
            },
            success: function(response){
              console.log(response);
              $('#btn-continue').addClass('hidden');
              if(response.status == true){
                $('.continue-action-alert').removeClass('hidden');
                $('.btn-found').removeClass('hidden');
                  erespondent_id = response.respondent_id;
              }else{
                $('.continue-action').removeClass('hidden');
              }

              return false;

            },
              error: function (request, status, error) {
                console.log(request.responseText);
            },
              complete: function(){

              }
            });

}


</script>

<script type="text/javascript">
var base_url = '<?=base_url()?>';
  var address = [];
    address.street = '';
    address.brgy = $('#barangay option:selected').text();
    address.city = $('#city option:selected').text();
    address.prov = 'Bohol';
    address.country = 'Philippines';
    address.city_name = '';

  var addressId = [];
    addressId.street = '';
    addressId.brgy = $('#barangay option:selected').val();
    addressId.city = $('#city option:selected').val();
    addressId.city_name = $('#city option:selected').text();
    addressId.prov = '0712';
    addressId.country = 'Philippines';


  $('#streetaddres').on('blur',function(){
    var street = $(this).val();
    address = [];
    var brgy = $('#barangay option:selected').text();    
    var citytown = $('#city option:selected').text();
    addressId.brgy = $('#barangay option:selected').val();
    addressId.city = $('#city option:selected').val();
    addressId.city_name = citytown;

    address.street = street;
    address.brgy = brgy;
    address.city = citytown;
    address.city_name = citytown;
    address.prov = 'Bohol';
    address.country = 'Philippines';
    completeAddress();


  });

  $('#barangay').on('change',function(){
    $('#streetaddres').blur();
    address.brgy = $('#barangay option:selected').text();
    addressId.brgy = $('#barangay option:selected').val();
    completeAddress();
    
  });

  $('#city').on('change',function(){
    
    $('#streetaddres').blur();
    address.city = $('#city option:selected').text();    
    addressId.city = $('#city option:selected').val();
    addressId.city_name = $('#city option:selected').text();
    completeAddress();
    
  });

  $('#btnuse').on('click',function(){
    
    completeAddress();
    $('#address').val($('#mdaddress').val());

    $('#addressmodal').modal('hide');
    //console.log(addressId);
    
  });

  var completeAddress = function(arr){

    /*var c_address = address.street+', '+address.brgy+', '+address.city+', '+address.prov+', '+address.country; */
    var c_arr = [];
    if(address.street.length != ''){

    c_arr.push(address.street);
    }

    if(address.brgy.length != ''){
      
    c_arr.push(address.brgy);
    }

    if(address.city.length != ''){
      
    c_arr.push(address.city);
    }

    c_arr.push(address.prov);
    c_arr.push(address.country);
   var add = c_arr.join(', ');
    $('#mdaddress').val(add);
  }
  var barangay = function(){

  var url = base_url+'/assets/philippines-region-province-citymun-brgy-master/json/refbrgy.json';
  var jqxhr = $.getJSON( url, function(records, i) {
      var record = records.RECORDS;
       $.each( record, function(e,i) { 
       $('#barangay').append($("<option></option>").attr("value",i.id).text(i.brgyDesc));
      });

  });
}
  var city = function(){

  var url = base_url+'/assets/philippines-region-province-citymun-brgy-master/json/refcitymun.json';
  var jqxhr = $.getJSON( url, function(records, i) {
      /*var record = records.RECORDS;*/
      var cities = records.RECORDS;
       $.each( cities, function(e,i) {
       var upper = i.citymunDesc;
       var res = upper.toLowerCase();
      var citymunDesc = res.charAt(0).toUpperCase() + res.substr(1);
       $('#city').append($("<option></option>").attr("value",i.id).text(citymunDesc));
      
      });

  });
}
$(document).ready(function() {
  barangay();
  city(); 
});




</script>


<script type="text/javascript">

  var respondent_id = <?=isset($basicinfo[0]->respondent_id) ? $basicinfo[0]->respondent_id :0 ;?>;
  console.log(respondent_id);
  var erespondent_id = <?=isset($basicinfo[0]->respondent_id) ? $basicinfo[0]->respondent_id :0 ;?>;
  var site_url = '<?=site_url()?>';
  /*-----start of  respondent basic info --*/

  $('#btn-continue').on('click',function(){
    var fname = $('#fname').val();
    var lname = $('#lname').val();
    if(lname.length > 0 && fname.length > 0){

    searchRespondent();
    }else{
      notify('alert','Please First name and Last name should not be empty.');
    }
  }); 

  $('#btn-edit').on('click',function(){
    window.location = site_url+'/survey/edit/'+erespondent_id;
  }); 
  $('#btn-addasnew').on('click',function(){
    
    $('.continue-action').removeClass('hidden');

    $('.continue-action-button').addClass('hidden');
  }); 
  $('#fname').on('change',function(){

    $('.continue-action').addClass('hidden');

    var fname = $('#fname').val();
    console.log(fname.length)
    if(fname.length > 0){
      /* action continue */
    }else{
      notify('alert','Please First name and Last name should not be empty.');
      return false;
    }
  }); 

  $('#lname').on('change blur',function(){
   

    $('.continue-action').addClass('hidden');
    var fname = $('#fname').val();
    var lname = $('#lname').val();

    if(lname.length > 0 && fname.length > 0){

      searchRespondent();

    }else{
      notify('alert','Please First name and Last name should not be empty.');
    }

  }); 
  $('#frmPersonalInfo').on('submit',function (e) {
    e.preventDefault();
    var frmdata = $(this).serialize();
    
        frmdata = frmdata+'&brgy='+addressId.brgy+'&city='+addressId.city+'&city_name='+addressId.city_name;

        $.ajax({
            url: site_url+'/survey/save/basic/'+respondent_id,
            type: 'post',
            dataType: 'json',
            data: frmdata, 
            beforeSend: function(){

               $('#frmPersonalInfo input').prop('readonly','true');
               $('#frmPersonalInfo button').prop('disabled','true');
            },
            success: function(response){
             console.log(response);
              if(response.status == true){
                respondent_id = response.msg;
                $('a[href="#menu1"]').click();
                console.log(response);
                notify('success','Respondent personal info successfully save.');
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

            /*-- end of respondent basic info --*/

           
</script>

