
<header class="content-header">
	<h1>Site Settings</h1>
	<ol class="breadcrumb"><li>Settings</li><li>Site</li></ol>
</header>

<main class="content">
	<section class="panel">
		<div class="panel-header">
			<ul class="nav nav-tabs" id="siteSettings">
				<li class="active"><a href="#home" data-toggle="tab">Home</a></li>
				<li><a href="#about" data-toggle="tab">About</a></li>
				<li><a href="#services" data-toggle="tab">Services</a></li>
				<li><a href="#gallery" data-toggle="tab">Gallery</a></li>
				<li><a href="#post" data-toggle="tab">Post</a></li>
				<li><a href="#contact" data-toggle="tab">Contact</a></li>
			</ul>
		</div>
		<div class="panel-body">

	<div class="tab-content">
		<div id="home"  class="tab-pane fade in active ">
			<div class="table-responsive">
				<table class="table table-bordered table-hover">
					<tr>
						<th>#</th>
						<th>Name</th>
						<th>Value</th>
						<th>Parent</th>
						<th>Status</th>
						<th>Position</th>
						<th width='100px'>Action</th>
					</tr>
					<?php if (is_array($homeSettings)): ?>
						<?php foreach ($homeSettings as $key): ?>
							<tr data-id='<?=$key->settings_id?>' id="<?=$key->settings_id?>">
								<td><input type="checkbox" name="homeId[]" value="<?=$key->settings_id?>"></td>
								<td class="setttings_name"><?=$key->settings_name?></td>
								<td class="setting_value"><?=$this->messages->limit($key->settings_value,70)?><div class="hidden"><?=$key->settings_value?></div></td>
								<td class="settings_parent"><?=$key->settings_parent?></td>
								<td><?=$key->is_active?></td>
								<td><?=$key->position?></td>
								<td><?php if ($key->settings_name == 'section4'): ?>
									&nbsp;&nbsp;<a href="#" class="btn btn-default btn-xs btn-edit disabled" disabled='true'><i class="fa fa-edit"></i></a>
								<?php else: ?>

									&nbsp;&nbsp;<a href="#" class="btn btn-default btn-xs btn-edit"><i class="fa fa-edit"></i></a>
								<?php endif ?>
								</td>
							</tr>
						<?php endforeach ?>
					<?php endif ?>
				</table>
			</div>
		</div>
		<div id="about"  class="tab-pane fade">
						<div class="table-responsive">
				<table class="table table-bordered table-hover">
					<tr>
						<th>#</th>
						<th>Name</th>
						<th>Value</th>
						<th>Parent</th>
						<th>Status</th>
						<th>Position</th>
						<th width='100px'>Action</th>
					</tr>
					<?php if (is_array($aboutSettings)): ?>
						<?php foreach ($aboutSettings as $key): ?>
							<tr data-id='<?=$key->settings_id?>' id="<?=$key->settings_id?>">
								<td><input type="checkbox" name="homeId[]" value="<?=$key->settings_id?>"></td>
								<td class="setttings_name"><?=$key->settings_name?></td>
								<td class="setting_value"><?=$this->messages->limit($key->settings_value,70)?><div class="hidden"><?=$key->settings_value?></div></td>
								<td class="settings_parent"><?=$key->settings_parent?></td>
								<td><?=$key->is_active?></td>
								<td><?=$key->position?></td>
								<td>&nbsp;&nbsp;<a href="#" class="btn btn-default btn-xs btn-edit"><i class="fa fa-edit"></i></a></td>
							</tr>
						<?php endforeach ?>
					<?php endif ?>
				</table>
			</div>
		</div>
		<div id="services"  class="tab-pane fade">
						<div class="table-responsive">
				<table class="table table-bordered table-hover">
					<tr>
						<th>#</th>
						<th>Name</th>
						<th>Value</th>
						<th>Parent</th>
						<th>Status</th>
						<th>Position</th>
						<th width='100px'>Action</th>
					</tr>
					<?php if (is_array($servicesSettings)): ?>
						<?php foreach ($servicesSettings as $key): ?>
							<tr data-id='<?=$key->settings_id?>' id="<?=$key->settings_id?>">
								<td><input type="checkbox" name="homeId[]" value="<?=$key->settings_id?>"></td>
								<td class="setttings_name"><?=$key->settings_name?></td>
								<td class="setting_value"><?=$this->messages->limit($key->settings_value,70)?><div class="hidden"><?=$key->settings_value?></div></td>
								<td class="settings_parent"><?=$key->settings_parent?></td>
								<td><?=$key->is_active?></td>
								<td><?=$key->position?></td>
								<td>&nbsp;&nbsp;<a href="#" class="btn btn-default btn-xs btn-edit"><i class="fa fa-edit"></i></a></td>
							</tr>
						<?php endforeach ?>
					<?php endif ?>
				</table>
			</div>
		</div>
		<div id="gallery"  class="tab-pane fade">
			
		</div>
		<div id="post"  class="tab-pane fade">
			
		</div>
		<div id="contact"  class="tab-pane fade">
			
		</div>
	</div>
	</section>
</main>


<!-- Modal -->
<div id="settingModal" class="modal fade" role="dialog">
  <div class="modal-dialog modal-lg">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Modal Header</h4>
      </div>
      <div class="modal-body">
      	<form class="form">
      		<div class="form-group">
      			<label>Setting Name</label>
      			<input type="text" name="settings_name" value="" class="form-control">
      		</div>
      		<div class="form-group">
      			<label>Setting Parent</label>
      			<select class="form-control" name="settings_parent">
      				<option value="home">Home</option>
      				<option value="about">About</option>
      				<option value="services">Services</option></select>
      		</div>
      		<div class="editable"></div>
      	</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default btn-save">Save</button>
      </div>
    </div>

  </div>
</div>


<script type="text/javascript">
	$('.btn-edit').on('click',function(){

		$('#settingModal').modal('show')

    	var row = $(this).closest("tr");

		var settings_id =row.data('id');		
		var settings_name = row.find('td:eq(1)').text();
		var settings_parent = row.find('td:eq(3)').text();

		var setting_value = row.find('td:eq(2)');
		var value = setting_value.children('div').html();

		$('input[name="settings_name"]').val(settings_name)
		$('select[name="settings_parent"]').val(settings_parent)

		$('.editable').html(value)
		$('.editable').summernote("reset")
		$('.editable').summernote()


	});

	$('form').on('submit',function(e){
		e.preventDefault();
	})
</script>