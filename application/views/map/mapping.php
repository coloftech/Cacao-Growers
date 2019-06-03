<style type="text/css">

</style>
<section class="content-header">
	  <h1>
        <i class="fa fa-flag"></i> Mapping
        <small>Mapping / viewmap</small>
      </h1>
                    <span class="pull-right loading hidden"><img src="<?=base_url('public/images/loading.gif')?>" style="width:50px;position: absolute;top: 5px;right: 15px;"></span>
</section>
<section class="content">
<div class="row">

  <div class="col-md-2 hidden">
    <div class="panel">
      <div class="panel-body">
            <div class="xradio">
      
                    <div class="xradio-success">
                        <input type="radio" name="markersetting" id="listbarangay" value="1" checked />
                        <label for="listbarangay">Show list of barangay</label>
                    </div>
                    <div class="xradio-success">
                        <input type="radio" name="markersetting" id="markbarangay" value="2" />
                        <label for="markbarangay">Show marker of barangay</label>
                    </div>
    </div>

      </div>
    </div>
  </div>
  <div class="col-md-12">
		<div class="panel">
			
		<div id="map" ></div>

		</div>
	</div>	

	<div class="col-md-12">
		<div id="address" class="hidden">
			<?php echo $address; ?>
		</div>
	</div>
</div>

</section>
<!-- Modal -->
<div class="modal fade" id="modalmap" role="dialog">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Modal Header</h4>
      </div>
      <div class="modal-body">
        <p id="modalLatLng">This is a small modal.</p>
        <p id="details"></p>
        <table class="table" id="tableDetails">
        	<thead>
        		<tr>
        			<th>Name</th>
        			<th>Address</th>
        			<th>Farm Category</th>
        		</tr>
        		<tbody>
        			<tr>
        				<td>Juan dela cruz</td>
        				<td>Bilar bohol</td>
        				<td>Backyard</td>
        			</tr>
        			<tr>
        				<td>Roy dela cruz</td>
        				<td>Bilar bohol</td>
        				<td>Backyard</td>
        			</tr>
        		</tbody>
        	</thead>
        </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default hidden" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<script type="text/javascript">

</script>