            <form class="form" id="frmPersonalInfo">
                                    
              <div class="form-group width-full">
                <label class="question">
                 Name
                </label>
                <div class="choices">
                  <div class="width-full">
                    
                  <input type="text" name="fname" id="fname" class="form-control" placeholder="First name"  style="text-transform: capitalize;" tabindex="1" required> <input type="text" name="lname" id="lname" class="form-control" placeholder="Last name"  style="text-transform: capitalize;" tabindex="2" required>
                  </div>
                </div>

              </div>
              <div class="form-group width-full">
                
                          <div class="continue-action-button">
                            <div class="form-group">
                              <button class="btn btn-default" type="button" id="btn-continue" tabindex="4">Check</button><br/>
                              <div class="alert alert-danger btn-found continue-action-alert hidden">

                                <label>Respondent already exist.</label>
                                <br/>
                              </div>
                              <button class="btn btn-default btn-found-old hidden" type="button"  id="btn-edit" title="Edit respondent info" tabindex="4"><i class="fa fa-edit"></i> <span class="hidden-xs">Edit respondent info</span></button>
                              <button class="btn btn-info btn-found hidden" type="button"  id="btn-addasnew" title="Add as new survey" tabindex="5"><i class="fa fa-plus"></i> <span class="hidden-xs">Add as new survey</span></button>
                            
                            </div>
                          </div>
              </div>
               <div class="new-respondents">  
              <div class="form-group width-full">
                <label class="question">
                 Date of survey
                </label>
                <div class="choices">
                  <div class="width-full">
                    
                            <input type="date" class="form-control" name="date_of_survey" value="<?=date('Y-m-d')?>" max="<?=date('Y-m-d')?>" tabindex="6">
                  </div>
                </div>
              </div>
              <div class="form-group width-full">
                <label class="question">
                Address
                </label>
                <div class="choices">
                  <div class="width-full">
                    
                            <input type="text" name="address" id="address" class="form-control" placeholder="Address" tabindex="7" required>
                  </div>
                </div>
              </div>
              <div class="form-group width-full">
                <label class="question">
                 Age
                </label>
                <div class="choices">
                  <div class="width-full">
                    
                  <input oninput="this.value=this.value.slice(0,this.maxLength)" type="number" name="age" id="age" min="0" max='120' class="form-control" maxlength="3" placeholder="Age" value="0" tabindex="8" required>
                  </div>
                </div>
              </div>
              <div class="form-group width-full">
                <label class="question">
                  Civil Status
                </label>
                <div class="choices">
                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio"  tabindex="9" name="civilstatus" id="c1" value="Single" checked="true">
                    <label for="c1">Single</label>
                    </div>
                  </div>
                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="civilstatus" id="c2" value="Married">
                    <label for="c2">Married</label>
                    </div>
                  </div>
                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="civilstatus" id="c3" value="Widow/Widower">
                    <label for="c3">Widow/Widower</label>
                    </div>
                  </div>
                </div>
              </div>

  
              <div class="form-group width-full">
                <label class="question">
                  Educational attainment
                </label>
                <div class="choices">
                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio"  tabindex="10" name="education" id="ea1" value="Post Graduate (MS, PhD)" checked="true">
                    <label for="ea1">Post Graduate (MS, PhD)</label>
                    </div>
                  </div>
                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="education" id="ea2" value="College Graduate">
                    <label for="ea2">College Graduate</label>
                    </div>
                  </div>
                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="education" id="ea3" value="College Level">
                    <label for="ea3">College Level</label>
                    </div>
                  </div>
                </div>

                <div class="choices">
                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="education" id="ea4" value="High School Graduate"">
                    <label for="ea4">High School Graduate</label>
                    </div>
                  </div>
                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="education" id="ea5" value="High School Level">
                    <label for="ea5">High School Level</label>
                    </div>
                  </div>
                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="education" id="ea6" value="Elementary Graduate">
                    <label for="ea6">Elementary Graduate</label>
                    </div>
                  </div>
                </div>
                <div class="choices">
                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="education" id="ea7" value="Elementary Level">
                    <label for="ea7">Elementary Level</label>
                    </div>
                  </div>
                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="education" id="ea8" value="others" class="others">
                    <label for="ea8">Others<input type="text" class="form-control input-sm hidden" name="txtothereducation"></label>
                    </div>
                  </div>
                </div>
              </div>
              <div class="form-group width-full">

                <label class="question">Family size</label>
                <div class="choices">
                  <div class="width-full">
                    <input type="text" class="form-control" id="familysize" name="familysize" value="0"  tabindex="12" required>                    
                  </div>

                </div>
              </div>

              <div class="form-group width-full">

                <label class="question">Annual Income</label>
                <div class="choices">
                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="annualincome" id="ai1" value="10,000 below" checked="true"  tabindex="13">
                    <label for="ai1">10,000 below</label>
                    </div>
                  </div>
                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="annualincome" id="ai2" value="10,001 to 20,000">
                    <label for="ai2">10,001 to 20,000</label>
                    </div>
                  </div>
                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="annualincome" id="ai3" value="20,001 to 30,000">
                    <label for="ai3">20,001 to 30,000</label>
                    </div>
                  </div>
                </div>

                <div class="choices">
                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="annualincome" id="ai4" value="30,001 to 40,000" >
                    <label for="ai4">30,001 to 40,000</label>
                    </div>
                  </div>
                  <div class="xradio col-md-4">
                    <div class="xradio-success">                      
                    <input type="radio" name="annualincome" id="ai5" value="40,000 and above">
                    <label for="ai5">40,000 and above</label>
                    </div>
                  </div>
                </div>
              </div>

              <div class="form-group width-full">

                <label class="question">Organizational Affiliation<br/>
                <small>What organization/association/group related to cacao farming are you affiliated with?</small></label>

                <div class="choices">
                  <div class="width-full">
                            <div class="orgQ">
                            <ul class="organizational table-bordered">
                            <li><label>Name of Organization/ Association</label> <input type="text" class="form-control" name="nameoforganization[]"></li>
                            <li><label>Position</label> <input type="text" class="form-control" name="position[]"></li>
                            <li><label>Years in Membership</label> <input type="text" class="form-control" name="yearsmembership[]"></li>
                            <li><label>Programs/ Projects of the Organization</label> <input type="text" class="form-control" name="programsforganization[]"></li>
                            
                            </ul>
                            </div>
                            <span style="width:20px;display:inline-block;"></span><button type="button"  class="btn btn-sm btn-org-more">Add more</button>
                  </div>
                  <div class="width-full">
                
                  <label class="question"><br/>
                    <small>What are the trainings/seminars/activities related to cacao farming that you have attended?</small>
                  </label>
                      <div class="training">
                            
                            <ul class="trainingQ table-bordered">
                            <li><label>Title of Training/Seminar</label> <input type="text" class="form-control" name="trainingtitle[]"></li>
                            <li><label>Date Conducted</label> <input type="text" class="form-control" name="trainingdated[]" placeholder="Year-month-day (2019-1-31) Reminders: if year only just type the year"></li>
                            <li><label>Venue</label> <input type="text" class="form-control" name="trainingvenue[]"></li>
                            <li><label>Sponsoring Agency</label> <input type="text" class="form-control" name="trainingsponsor[]"></li>
                            </ul>
                          </div>
                            <span style="width:20px;display:inline-block;"></span><button type="button" class="btn btn-sm btn-training-more">Add more</button>

                    </div>

                </div>
              </div>
              <div class="form-group width-full">

                <button class="btn btn-primary " type="submit" id="btn-personalinfo">Next</button>
                
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
          <form id="frmaddress">
            
        <div class="form-group">
          <label>Address</label><input type="text" readonly="true" class="form-control" name="mdaddress" id="mdaddress">
        </div>
        <div class="form-group">
          <label>Town/City</label><select name="city" id="city" class="form-control"></select>
          <input type="text" name="cityname" id="cityname" value="Alburquerque" class="hidden">
        </div>

        <div class="form-group">
          <label>Street address</label><input type="text" name="streetaddress" id="streetaddres" class="form-control" placeholder="House no./Bldg/Sitio/Purok">
        </div>

        <div class="form-group">
          <label>Barangay</label><select name="barangay" id="barangay" class="form-control"></select>
        </div>
        <div class="form-group">
          <label>Province</label><input type="text" name="province" id="province" value="Bohol" class="form-control" readonly>
        </div>

        </form>
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
            url: site_url+'/asurvey/searchrespondent',
            type: 'post',
            dataType: 'json',
            data: frmdata, 
            beforeSend: function(){
              console.clear();
            },
            success: function(response){

              $('#btn-continue').addClass('hidden');
              if(response.status == true){

                notify('Warning','Respondent already exist.')
                $('.continue-action-alert').removeClass('hidden');
                $('.btn-found').removeClass('hidden');
                $('.new-respondents').addClass('hidden');
                  if (response.respondents.length == 0) {
                    return false;
                  }else{

                  }

              }else{
                notify('success','Respondent do not exist. FIll up the form to continue.')
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

  var address = [];
  var addressId = [];

$(function(){

    address.street = '';
    address.brgy = $('#barangay option:selected').text();
    address.city = $('#city option:selected').text();
    address.prov = 'Bohol';
    address.country = 'Philippines';
    address.city_name = '';

    addressId.street = '';
    addressId.brgy = $('#barangay option:selected').val();
    addressId.city = $('#city option:selected').val();
    addressId.city_name = $('#city option:selected').text();
    addressId.prov = '0712';
    addressId.country = 'Philippines';

})

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
    
     $('#cityname').val(addressId.city_name);

    completeAddress();

    var brgy = $('#barangay option:selected').text();
    var citycode = $('#city option:selected').data('citymunCode');

    $('#barangay')[0].options.length = 0;

       $.each( brgyArr[0], function(e,i) { 
        if (i.citymunCode == citycode) {

          if (brgy == i.brgyDesc) {

              $('#barangay').append($("<option></option>").attr("value",i.id).text(i.brgyDesc).attr('selected',true));

          }else{

              $('#barangay').append($("<option></option>").attr("value",i.id).text(i.brgyDesc));

          }
        }
      });

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

var brgyArr = [];

  var barangay = function(){

  var url = base_url+'/assets/philippines-region-province-citymun-brgy-master/json/refbrgy.json';
  var jqxhr = $.getJSON( url, function(records, i) {
      var record = records.RECORDS;

      record.sort(dynamicSort('brgyDesc'));

      brgyArr.push(record);

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

      cities.sort(dynamicSort('citymunDesc'));

       $.each( cities, function(e,i) {
       var upper = i.citymunDesc;
       var res = upper.toLowerCase();
      var citymunDesc = res.charAt(0).toUpperCase() + res.substr(1);
       $('#city').append($("<option></option>").attr("value",i.id).data('citymunCode',i.citymunCode).text(citymunDesc));
      
      });

  });
}
$(document).ready(function() {
  barangay();

  city(); 
});


</script>


<script type="text/javascript">
var personalInfo;
var menu_1 = false;
$('#frmPersonalInfo').on('submit',function(e){
    e.preventDefault();
    if ($('#btn-continue').is(':visible')) {
      $('#btn-continue').click();
      menu_1 = false;
      return false;
    }

    if ($('input[name="age').val() <= 15) {
      notify('warning','Please enter valid age first');
      $('input[name="age').focus();
      menu_1 = false;
      return false;
    }

    if ($('input[name="familysize').val() == 0) {
      notify('warning','Please enter valid Family size first');
      $('input[name="familysize').focus();
      menu_1 = false;
      return false;
    }

      menu_1 = true;
        if ($(window).width() < screen) 
          {
            $('#1 .panel-title').find('a').click();
            return false;
          }
      $('a[href="#menu1"]').click();

    
});

  $('#btn-continue').on('click',function(){
    var fname = $('#fname').val();
    var lname = $('#lname').val();
    if(lname.length > 0 && fname.length > 0){

    searchRespondent();
    }else{
      notify('alert','Please First name and Last name should not be empty.');
    }

      menu_1 = false;
  });

  $('#fname').on('keyup',function(){
   

    $('.btn-found').addClass('hidden');
    $('#btn-continue').removeClass('hidden');
    

  }); 
  $('#lname').on('keyup',function(){
   

    $('.btn-found').addClass('hidden');
    $('#btn-continue').removeClass('hidden');
    var fname = $('#fname').val();
    var lname = $('#lname').val();

    if(lname.length > 0 && fname.length > 0){


    }else{
      
    }

  }); 

</script>

