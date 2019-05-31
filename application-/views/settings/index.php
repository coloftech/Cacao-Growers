<style type="text/css">
	/* The switch - the box around the swSlider */
.switch {
  position: relative;
  display: inline-block;
  width: 50px;
  height: 24px;
}

/* Hide default HTML checkbox */
.switch input {
  opacity: 0;
  width: 0;
  height: 0;
}

/* The swSlider */
.swSlider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #ccc;
  -webkit-transition: .4s;
  transition: .4s;
}

.swSlider:before {
  position: absolute;
  content: "";
  height: 16px;
  width: 22px;
  left: 4px;
  bottom: 4px;
  background-color: white;
  -webkit-transition: .4s;
  transition: .4s;
}

input:checked + .swSlider {
  background-color: #2196F3;
}

input:focus + .swSlider {
  box-shadow: 0 0 1px #2196F3;
}

input:checked + .swSlider:before {
  -webkit-transform: translateX(22px);
  -ms-transform: translateX(22px);
  transform: translateX(22px);
}

/* Rounded swSliders */
.swSlider.round {
  border-radius: 34px;
}

.swSlider.round:before {
  border-radius: 50%;
}

/* --- services --- */
.services {
	padding:50px;
}

.services h3 {
	margin-bottom:30px;
	font-weight:800;
}

.services img {
	border-radius:6px;
}

.sub-services img {
	border-radius:6px;
}

.services p {
	margin-top:30px;
	font-size:13px;
}

.sub-services {
	padding:50px;
	background:#ddd;
}

.sub-services p {
	margin-top:30px;
	font-size:13px;
}

.media-body p {
	margin-bottom:30px;
}

.media ul li {
	list-style:none;
}

.media i {
	color:#1BBD36;
	font-size:50px;
}

.media h4 {
	font-size:20px;
	font-weight:600;
	color:#1BBD36;
}
</style>
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
			<h2 class="width-full">Home <a target="_blank" class="btn btn-sm previewImg pull-right" href="<?=site_url()?>"><i class="fa fa-eye"></i> Preview</a></h2>
			<div class="row">
				<div class="col-md-12"  oncontextmenu="return false;">
					<div class="form-responsive">
							<div class="form-group">
								<label>Section 1 - Cover image</label>
					
								<input type="link" name="coverimage" id="coverimage" class="form-control" value="<?php echo $this->settings->getValue('section1','home'); ?>">
								
							</div>
							<div class="form-group">
								<label>Section 2</label>
					

								<div class="col-md-12 panel panel-info text-center editable" data-section="2" data-setting="home" id="cacaoVariety" name="cacaoVariety" ><?php echo $this->settings->getValue('section2','home'); ?></div>


									<!-- switch -->
									<div class=" pull-left">
										<button class="btn btn-default btn-xs btn-save"><i class="fa fa-save"></i></button>
										&nbsp;
										<label class="switch"><input type="checkbox" checked data-section="2" data-setting="home"><span class="swSlider"></span></label>
									</div>
								<br/>
								<br/>
								<br/>

							</div>

							<div class="form-group">
								<label>Section 3</label>

								<div id="whyCacao" name="whyCacao" class="col-md-12 panel panel-info editable" data-section="2" data-setting="home"><?php echo $this->settings->getValue('section3','home'); ?></div>

									<!-- switch -->
									<div class=" pull-left">
										<button class="btn btn-default btn-xs btn-save"><i class="fa fa-save"></i></button>
										&nbsp;
										<label class="switch"><input type="checkbox" checked data-section="3" data-setting="home"><span class="swSlider"></span></label>
									</div>
								<br/>
								<br/>
								<br/>
							</div>

							<div class="form-group">
								<label>Section 4 - Latest news</label>

								<div class="form-group">
									<!-- switch -->
									<div class=" pull-left">
										<button class="btn btn-default btn-xs btn-save disabled" disabled="true"><i class="fa fa-save"></i></button>
										&nbsp;
										<label class="switch"><input type="checkbox" checked data-section="4" data-setting="home"><span class="swSlider"></span></label>
									</div>
								<br/>
								<br/>
								<br/>
								</div>

							</div>
							<div class="form-group">
								<label>Section 5 - Our partners</label>

								<div id="whyCacao" name="whyCacao" class="col-md-12 panel panel-info editable" data-section="5" data-setting="home">
        <?php echo $this->settings->getValue('section5','home'); ?></div>

									<!-- switch -->
									<div class=" pull-left">
										<button class="btn btn-default btn-xs btn-save"><i class="fa fa-save"></i></button>
										&nbsp;
										<label class="switch"><input type="checkbox" checked data-section="5" data-setting="home"><span class="swSlider"></span></label>
									</div>
								<br/>
								<br/>
								<br/>
							</div>
							<div class="form-group">
					
								<label>Section 6 -contact info</label>

								<div id="whyCacao" name="whyCacao"  class="col-md-12 panel panel-info editable" data-section="6" data-setting="home">
        <?php echo $this->settings->getValue('section6','home'); ?></div>
							

									<div class=" pull-left">
										<button class="btn btn-default btn-xs btn-save"><i class="fa fa-save"></i></button>
										&nbsp;
										<label class="switch"  title="Show/Hide on page view"><input type="checkbox" checked data-section="6" data-setting="home"><span class="swSlider"></span></label>
									</div>
								<br/>
								<br/>
								<br/>
						</div>
					</div>
				</div>
				<div class="col-md-12">

				</div>
			</div>
		</div>
		<div id="about"  class="tab-pane fade">
			<h2>About</h2>
				<div class="form-responsive">

					<div class="form-group">
					<label>Section 1 </label>

					<div class="editable" data-section="1" data-setting="about"><?php echo $this->settings->getValue('section1','about'); ?></div>
				
									<!-- switch -->
									<div class=" pull-left">
										<button class="btn btn-default btn-xs btn-save"><i class="fa fa-save"></i></button>
										&nbsp;
										<label class="switch"><input type="checkbox" checked data-section="2" data-setting="home"><span class="swSlider"></span></label>
									</div>
								<br/>
								<br/>
								<br/>
					</div>

					<div class="form-group">
					<label>Section 2</label>
					

					<div class="editable"  data-section="1" data-setting="about"><?php echo $this->settings->getValue('section2','about'); ?></div>

									<!-- switch -->
									<div class=" pull-left">
										<button class="btn btn-default btn-xs btn-save"><i class="fa fa-save"></i></button>
										&nbsp;
										<label class="switch"><input type="checkbox" checked data-section="2" data-setting="home"><span class="swSlider"></span></label>
									</div>
								<br/>
								<br/>
								<br/>
					</div>
				</div>
		</div>

		<div id="services"  class="tab-pane fade">
			<div class="form-group">
				<div class="width-full">
					<label>Section 1</label>
					<div class="editable"  data-section="1" data-setting="services"><?php echo $this->settings->getValue('section1','services'); ?></div>
					<!-- switch -->
									<div class=" pull-left">
										<button class="btn btn-default btn-xs btn-save"><i class="fa fa-save"></i></button>
										&nbsp;
										<label class="switch"><input type="checkbox" checked data-section="2" data-setting="home"><span class="swSlider"></span></label>
									</div>
								<br/>
								<br/>
								<br/>

				</div>
			</div>

			<div class="form-group">
				<div class="width-full">
					<label>Section 2</label>
					<div class="editable"  data-section="1" data-setting="services"><?php echo $this->settings->getValue('section2','services'); ?></div>
					<!-- switch -->
									<div class=" pull-left">
										<button class="btn btn-default btn-xs btn-save"><i class="fa fa-save"></i></button>
										&nbsp;
										<label class="switch"><input type="checkbox" checked data-section="2" data-setting="home" ><span class="swSlider"></span></label>
									</div>
								<br/>
								<br/>
								<br/>
								
				</div>
			</div>
		</div>
		<div id="gallery"  class="tab-pane fade"></div>
		<div id="post"  class="tab-pane fade"></div>
		<div id="contact"  class="tab-pane fade"></div>
	</div>
		</div>
	</section>
</main>
<script type="text/javascript">
	
$(document).ready(function() {
  $('.editable').summernote({
  	OnBlurCodeview : function(e){
  		console.log('Great')
  	}
  });
});

	$('.switch > input:checkbox').on('click',function(){
		if(this.checked){

			console.log($(this).data('section'));
			console.log($(this).data('setting'));
		notify('success','Show on page view');
		}else{

		notify('warning','Hide on page view');
	}
	})

$(document).on('click','.btn-save',function(e){
	var html = $(this).parent().parent().find('.editable').summernote('code');
	if (html == '<p><br></p>') {
		html = ''
	}
	console.clear()
	console.log(html)



})
</script>
<?php /*
<script type="text/javascript">
	var oldcover,
		olddata;
	$(function(){
		oldcover = $('#coverimage').val();

    tinymce.init({
      selector: 'textarea',  // change this value according to your HTML
      plugin: 'a_tinymce_plugin',
      a_plugin_option: true,
      a_configuration_option: 400,
    plugins: "code"
    });
    

	})

	var onedit = false;
$("div.editable").dblclick( function(){
    if(onedit == false){

    $(this).replaceWith(function() {
  return $("<textarea>").addClass('form-control editable').attr( 'onblur',"savedata(this,'home')").attr('id',$(this).attr('id')).attr('name',$(this).attr('name')).attr('rows',10).text(this.innerHTML);
	});
	onedit = true;
    }

});

$("div.editable").contextmenu(function(){
	
    if(onedit == false){
	$(this).attr('contentEditable',true).attr( 'onblur',"savedata(this,'home')");
	onedit = true;
	}
})
	$(document).on('blur','#coverimage',function(){
		var newcover = this.value;
		if (oldcover != newcover) {	
		oldcover = newcover;		
		console.log(newcover)
		$.ajax({
			url: site_url+'/settings/save/cover',
			dataType: 'json',
			data: 'cover='+newcover,
			type: 'post',
			beforeSend: function(){
			console.clear()	
			},
			success: function(response){
				console.log(response)
			},
              error: function (request, status, error) {
                console.log(request.responseText);
            }
		})
		}
		return false;
	})
	$(document).on('focus','input,textarea',function(){
		olddata = $(this).val();
		console.clear();
	})
	function savedata(elem,parent) {
		// body...
		$(elem).removeAttr('contentEditable')
		onedit = false;

		type = $(elem).attr('name');
		if(!elem.value){
			console.log('Not text area')

			elem.value = $(elem).html();

		}

		var data = {value:elem.value};
		if(data.value.length <= 0 || data.value == olddata) return false;

		olddata = data.value;

		$.ajax({
			url: site_url+'/settings/save/'+type+'/'+parent,
			dataType: 'json',
			data: data,
			type: 'post',
			beforeSend: function(){
			console.clear()	
			},
			success: function(response){
				console.log(response)
			},
              error: function (request, status, error) {
                console.log(request.responseText);
            }
		})

	}
</script>

*/ ?>