    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-flag"></i> Survey
        <small>Survey / masterlist</small>
      </h1>
    </section>
	<div class="content">

		<div class="col-md-9">
			
		        <div class="box box-primary">
                    <div class="box-header">
                        <h3 class="box-title">Masterlist table</h3>
                    </div><!-- /.box-header -->
                    <!-- form start -->
                    <div class="box-body">
                    	<div class="table-responsive">
                    		<table class="table table-bordered">
                    			<thead>
                    				<tr>
                    				<th>Town/City</th>
                    				<th>Total no of cacao farmer base on master list</th>
                    				<th>Total of cacao farmer surveyed</th>
                    				<th>Percentage</th>
                    				<th>Year</th>
                    				<th></th>
                    			</tr>
                    			</thead>
                    			<tbody>
                    				<?php if (is_array($listoftown)): ?>
                    					<?php foreach ($listoftown as $key): ?>
                    					<tr>
                    				<td><?=$key['town_name']?></td>
                    				<td><?=$key['no_of_farmer']?></td>
                    				<td><?=$key['no_of_respondent']?></td>
                    				<td>0%</td>
                    				<td><?=$key['year']?></td>
                    				<td><a href="#" class="btn btn-default btn-xs"><i class="fa fa-edit"></i></a></td>
                    			</tr>
                    				<?php endforeach ?>
                    				<?php endif ?>
                    				
                    			</tbody>
                    		</table>
                    	</div>
                    </div>
                    
                </div>
		</div>

		<div class="col-md-3">
			
		        <div class="box box-primary">
                    <div class="box-header">
                        <h3 class="box-title">Masterlist option</h3>
                    </div><!-- /.box-header -->
                    <!-- form start -->
                    <div class="box-body">
                    	

                            <div class="list-group">
                              
                              <a href="#" class="list-group-item list-group-item-action" data-toggle="modal" data-target="#masterlistmodal">Add</a>
                              
                            </div>

                    </div>
                    
                </div>
		</div>
		       
	</div>

<div id="masterlistmodal" class="modal" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Add data to masterlist</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>
          <form id="frmmasterlist">

        <div class="form-group">
          <label>Town/City</label><select name="town_name" id="city" class="form-control"></select>
          <input type="hidden" name="town_code" value="0">
        </div>
        <div class="form-group">
        	<label>Year of masterlist</label>
        	<input type="number" name="year" id="year" value="<?=date('Y')?>" class="form-control">
        </div>
        <div class="form-group">
        	<label>No of farmers</label>
        	<input type="number" name="no_of_farmer" id="no_of_farmer" value="0" class="form-control">
        </div>

        </form>
        </p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" id="btn-add">Add</button>
        
      </div>
    </div>
  </div>
</div>
<div class="hidden">
	<div class="listoftown"><?=isset($listoftown) ? json_encode($listoftown) : json_encode(array(false))?></div>
</div>


<script type="text/javascript">
	var listoftown;
	var not_empty = true;
	$(function(){
		city();
		listoftown = JSON.parse($('.listoftown').html());
		not_empty = listoftown[0];

	})
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


  $('#city').on('change',function(){

    var citycode = $('#city option:selected').data('citymunCode');

    $('input[name="town_code"]').val(citycode);



  });

$('#btn-add').on('click',function(){
	var town_name = $('#city option:selected').text();
	var town_code = $('#city').val();
	var year = $('#year').val();
	var no_of_farmer = $('#no_of_farmer').val();
	var is_allowed = true;
	if (parseInt(no_of_farmer) == 0) {

			notify(false,'Please input no of farmer.','Action not allowed!')
		return false;
	}
	if (not_empty) {		
		$.each(listoftown,function(i,d){
			if (town_code == d.town_code && year == d.year) {
				is_allowed = false;
			}
		})

		if (is_allowed) {
			var data = {'town_name':town_name,'town_code':town_code,'year':year,'no_of_farmer':no_of_farmer}
			
			var newdata = {'year':parseInt(year),'town_code':parseInt(town_code),'town_name':town_name,'no_of_farmer':parseInt(no_of_farmer),'no_of_respondent':0}
			savemasterlist(data,newdata);
		
		}else{
			notify(false,'The selected town and year is already exist!','Insert error!')
		}
		
	}

})
 var savemasterlist = function(data,newdata){
 	

  $.ajax({
    url: site_url+'/asurvey/masterlist',
    type: 'post',
            dataType: 'json',
            data: data, 
            beforeSend: function(){
              console.clear();
            },
            success: function(response){              
              
             if(response.status == true){

           		listoftown.push(newdata);
				$('tbody').append('<tr>'+
				'<td>'+newdata.town_name+'</td>'+
				'<td>'+newdata.no_of_farmer+'</td>'+
				'<td></td>'+
				'<td></td>'+
				'<td>'+newdata.year+'</td>'+
				'<td><a href="#" class="btn btn-default btn-xs"><i class="fa fa-edit"></i></a></td>'+
				+'</tr>');

				notify('success','New data was successfully added.','Insert success!');
				$('#masterlistmodal').modal('hide')
             }else{

				notify('warning','No data was added.','Insert error!');
             }

            },
              error: function (request, status, error) {
                console.log(request.responseText);
            }
  })

 }
</script>