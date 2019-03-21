            <form class="form" id="frmPersonalInfo">
                          <label>Name: <span class="required">*</span> </label><input type="text" name="fname" id="fname" class="form-control" placeholder="First name" oninput="this.value = this.value.toUpperCase()" tabindex="1" required> <input type="text" name="lname" id="lname" class="form-control" placeholder="Last name" oninput="this.value = this.value.toUpperCase()" tabindex="2" required>
                          
                          <div class="continue-action-button">
                            <div class="form-group">
                              <button class="btn btn-info" type="button" id="btn-continue" tabindex="4">Continue</button><br/><br/>
                              <div class="alert alert-danger btn-found continue-action-alert hidden">

                                <label>Respondent already exist.</label>
                                <br/>
                              </div>
                              <table class="table table-bordered btn-found" id="tblexist">
                              <thead>
                                <tr>
                                  <th>RESPONDENT ID</th>
                                  <th>DATE OF SURVEY</th>
                                  <th>DATE ADDED</th>
                                  <th>ACTION</th>
                                </tr>
                              </thead>
                              <tbody id="tblexist-tbody"></tbody>
                              </table>
                              <button class="btn btn-default btn-found-old hidden" type="button"  id="btn-edit" title="Edit respondent info" tabindex="4"><i class="fa fa-edit"></i> <span class="hidden-xs">Edit respondent info</span></button>
                              <button class="btn btn-info btn-found hidden" type="button"  id="btn-addasnew" title="Add as new survey" tabindex="5"><i class="fa fa-plus"></i> <span class="hidden-xs">Add as new survey</span></button>
                            
                            </div>
                          </div>
                          <div class="continue-action hidden">
                          <div class="form-group">
                            <label>Date of survey:</label>
                            <input type="date" class="form-control" name="date_of_survey" value="<?=date('Y-m-d')?>" max="<?=date('Y-m-d')?>">
                          </div>
                          <label>Address: <span class="required">*</span> </label><input type="text" name="address" id="address" class="form-control" placeholder="Address" tabindex="6">
                            
                          <label>Age:  </label><input oninput="this.value=this.value.slice(0,this.maxLength)" type="number" name="age" id="age" min="15" max='120' class="form-control" maxlength="3" placeholder="Age" value="15" tabindex="7" required>
                          <label>Civil status: </label>
                          <div class="radio">
                          <label for="single" class="btn btn-sm"><input type="radio" name="civilstatus" id="single" value="Single" checked="true"> Single</label>
                          <label for="married" class="btn btn-sm"><input type="radio" name="civilstatus" id="married" value="Married"> Married</label>
                          <label for="widow" class="btn btn-sm"><input type="radio"  name="civilstatus"id="widow" value="Widow/Widower"> Widow/Widower</label>
                          </div>
                          
                          <label>Educational attainment: </label> 
                          <div class="radio">
                          <label for="Educational_1" class="btn btn-sm"><input type="radio" name="education" id="Educational_1" value="Post Graduate (MS, PhD)" checked="true">Post Graduate (MS, PhD)</label>
                          <label for="Educational_2" class="btn btn-sm"><input type="radio" name="education" id="Educational_2" value="College Graduate">College Graduate</label>
                          <label for="Educational_3" class="btn btn-sm"><input type="radio"  name="education"id="Educational_3" value="College Level"> College Level</label>
                          <label for="Educational_4" class="btn btn-sm"><input type="radio" name="education" id="Educational_4" value="High School Graduate">High School Graduate</label>
                          </div>
                          <div class="radio">
                          <label for="Educational_5" class="btn btn-sm"><input type="radio" name="education" id="Educational_5" value="High School Level">High School Level</label>
                          <label for="Educational_6" class="btn btn-sm"><input type="radio"  name="education"id="Educational_6" value="Elementary Graduate">Elementary Graduate</label>
                          <label for="Educational_7" class="btn btn-sm"><input type="radio" name="education" id="Educational_7" value="Elementary Level">Elementary Level</label>
                          <label for="Educational_8" class="btn btn-sm"><input type="radio" name="education" id="Educational_8" value="8" class="others">Others, specify <input type="text" name="txtothereducation"></label>
                          
                          </div>
                          
                          <label>Family size <span class="required">*</span></label><input type="number" maxlength="2" class="form-control" id="familysize" name="familysize" value="1" required>
                          <label>Annual Income</label>

                          <div class="radio">
                          <label for="income_1" class="btn btn-sm"><input type="radio" name="annualincome" id="income_1" value="10,000 below" checked="true">10,000 below</label>
                          <label for="income_2" class="btn btn-sm"><input type="radio"  name="annualincome"id="income_2" value="10,001 to 20,000">10,001 to 20,000</label>
                          <label for="income_3" class="btn btn-sm"><input type="radio" name="annualincome" id="income_3" value="20,001 to 30,000">20,001 to 30,000</label>
                          <label for="income_4" class="btn btn-sm"><input type="radio" name="annualincome" id="income_4" value="30,001 to 40,000">30,001 to 40,000</label>
                          <label for="income_5" class="btn btn-sm"><input type="radio" name="annualincome" id="income_5" value="40,000 and above">40,000 and above</label>
                          
                          </div>
                          <div class="org">
                            
                          <label>Organizational Affiliation: </label><br/><span>What organization/association/group related to cacao farming are you affiliated with?</span>
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
                          <br/><span>What are the trainings/seminars/activities related to cacao farming that you have attended?</span>
                          <div class="training">
                            
                            <ul class="trainingQ table-bordered">
                            <li><label>Title of Training/Seminar</label> <input type="text" class="form-control" name="trainingtitle[]"></li>
                            <li><label>Date Conducted</label> <input type="date" class="form-control maxdate" value="<?=date('Y-m-d')?>" max="<?=date('Y-m-d')?>" name="trainingdated[]"></li>
                            <li><label>Venue</label> <input type="text" class="form-control" name="trainingvenue[]"></li>
                            <li><label>Sponsoring Agency</label> <input type="text" class="form-control" name="trainingsponsor[]"></li>
                            </ul>
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

              $('#btn-continue').addClass('hidden');
              if(response.status == true){
                $('.continue-action-alert').removeClass('hidden');
                $('.btn-found').removeClass('hidden');
                  if (response.respondents.length == 0) {
                    return false;
                  }else{

                  /*erespondent_id = response.respondent_id;*/
                  var respondents = response.respondents;

                    var tbody = document.getElementById('tblexist-tbody');
                    $('#tblexist-tbody').empty();
                        var i=0;
                        respondents.forEach(function(item) {
                          var row = tbody.insertRow(i);
                          var cell0 = row.insertCell(0);
                          var cell1 = row.insertCell(1);
                          var cell2 = row.insertCell(2);
                          var cell3 = row.insertCell(3);
                          
                          cell0.innerHTML = item.respondent_id;
                          cell1.innerHTML = item.date_of_survey;
                          cell2.innerHTML = item.date_added;
                          cell3.innerHTML = "<a class='btn btn-default' href='"+site_url+'/survey/edit/'+item.respondent_id+"'><i class='fa fa-edit'></i></a>";
                          i++;
                        }); 
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

    var brgy = $('#barangay option:selected').text();
    console.log(brgyArr);
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

  var respondent_id = 0;
  var erespondent_id = 0;
  var site_url = '<?=site_url()?>';
  var is_allowed = false;
  /*-----start of  respondent basic info --*/
$('#familysize').on('blur',function(){
  if ($(this).val() > 0) {
    is_allowed = true;
  }else{
    is_allowed = false;
  }
});
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

    if(fname.length > 0){
      /* action continue */
    }else{
      notify('alert','Please First name and Last name should not be empty.');
      return false;
    }
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
  $('#frmPersonalInfo').on('submit',function (e) {
    e.preventDefault();

    if ($('#familysize').val() <= 0) {
      notify(false,'Family size is required.');
      return false;
    }else{
      is_allowed = true;
    }

    if (is_allowed == false) {

      notify(false,'Please fill up required field.');
      return false;
    };


    

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
             
              if(response.status == true){
                respondent_id = response.msg;
                $('a[href="#menu1"]').click();

                notify('success','Respondent personal info successfully save.');
              }else{
                notify('warning',response.msg);


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

