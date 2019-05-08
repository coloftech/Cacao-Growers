  <style type="text/css">
#overlay {
  background: blue;
  width: 100%;
  height: 100%;
  position: absolute;
  top: 0;
  left: 0;
  opacity: .2;
  z-index: 9999999;
}

  </style> 
   <div id="overlay" class="hidden"></div>


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
                    				<th>Municipality</th>
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
                    					<tr data-id="<?=$key['id']?>">
                    				<td><?=$key['town_name']?></td>
                    				<td><?=$key['no_of_farmer']?></td>
                    				<td><?=$key['no_of_respondent']?></td>
                    				<td>0%</td>
                    				<td><?=$key['year']?></td>
                    				<td><a href="#" class="btn btn-default btn-xs btn-edit"><i class="fa fa-edit"></i></a> <a href="#" class="btn btn-danger btn-xs btn-remove"><i class="fa fa-remove"></i></a></td>
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
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        <h3 class="modal-title">Add/Update Municipality Masterlist</h3>
        
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
        <button type="button" class="btn btn-primary hidden" id="btn-update">Update</button>
        
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
	}else{
		is_allowed = true;
	}

		if (is_allowed) {
			var data = {'town_name':town_name,'town_code':town_code,'year':year,'no_of_farmer':no_of_farmer}
			
			var newdata = {'id':"0",'year':year,'town_code':town_code,'town_name':town_name,'no_of_farmer':no_of_farmer,'no_of_respondent':0}
			savemasterlist(data,newdata);
		
		}else{
			notify(false,'The selected town and year is already exist!','Insert error!')
		}
		
	

})
 var savemasterlist = function(data,newdata){
 	
  $.ajax({
    url: site_url+'/masterlist',
    type: 'post',
            dataType: 'json',
            data: data, 
            beforeSend: function(){
              console.clear();
            },
            success: function(response){              
              
             if(response.status == true){
             	newdata.id = response.id.toString();
             	if (!not_empty) {
             	listoftown = [];
           		listoftown.push(newdata);
           		not_empty = true;

             	}else{

           		listoftown.push(newdata);
             	}
				$('tbody').append('<tr data-id="'+newdata.id+'">'+
				'<td>'+newdata.town_name+'</td>'+
				'<td>'+parseInt(newdata.no_of_farmer)+'</td>'+
				'<td></td>'+
				'<td></td>'+
				'<td>'+newdata.year+'</td>'+
				'<td><a href="#" class="btn btn-default btn-xs btn-edit"><i class="fa fa-edit"></i></a> <a href="#" class="btn btn-danger btn-xs btn-remove"><i class="fa fa-remove"></i></a></td>'+
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

 var updatemasterlist = function(data,id){

  $.ajax({
    url: site_url+'/updateMasterlist/'+id,
    type: 'post',
            dataType: 'json',
            data: data, 
            beforeSend: function(){
              console.clear();
              $('#overlay').removeClass('hidden');
            },
            success: function(response){              
              if (response.status == true) {
                notify('success','Municipality data updated successfully!');

                setTimeout(function(){

                notify('warning','Page will reload in 1s');

                },1000)

                setTimeout(function(){

                  window.location.reload();

                },2000)
              }
             console.log(response)

            },
              error: function (request, status, error) {
                console.log(request.responseText);
            },
            complete: function(){

              $('#overlay').addClass('hidden');
              $('#masterlistmodal').modal('hide')
            }
  })

 }
 
 var masterlist_id = 0;
 $(document).on('click','.btn-edit',function(){
 	var id = $(this).parent().parent().data('id');
  var data = [];
  var found = false;
    $.each(listoftown,function(i,d) {
      if (d.id == id ) {
        data = [];
        data.push(d)
        return false;
      }
    })
  data = data[0]
  masterlist_id = id;
  $('#city').val(data.town_code);
  $('#year').val(data.year);
  $('#no_of_farmer').val(data.no_of_farmer);

  $('#masterlistmodal').modal('show')
  $('#btn-update').removeClass('hidden')
  $('#btn-add').addClass('hidden')

 })

 $(document).on('click','#btn-update',function(){

  var id =  masterlist_id
  var town_name = $('#city option:selected').text();
  var town_code = $('#city').val();
  var year = $('#year').val();
  var no_of_farmer = $('#no_of_farmer').val();

  var data = {'town_name':town_name,'town_code':town_code,'year':year,'no_of_farmer':no_of_farmer}
  
  updatemasterlist(data,id);

 })
 $(document).on('click','.btn-remove',function(){
  var id = $(this).parent().parent().data('id');
  var data = {'masterlist_id':id}
  removetolist(data,this)

 })
 function removetolist(data,elem) {
 	// body...

  $.ajax({
    url: site_url+'/removetoMasterlist',
    type: 'post',
            dataType: 'json',
            data: data, 
            beforeSend: function(){
              console.clear();
            },
            success: function(response){ 

             if(response.status == true){

				notify('success','New data was successfully deleted.','Remove success!');
				$(elem).parent().parent().remove();

				listoftown.splice(listoftown.findIndex(function(i){
			    return i.id === data.id;
				}), 1);

             }else{

				notify('warning','No data was deleted.','Delete error!');
             }

            },
              error: function (request, status, error) {
                console.log(request.responseText);
            }
  })


 }
</script>