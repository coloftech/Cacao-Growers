<style type="text/css">

</style>
<div class="container-fluid">
    <section class="content-header">
      <h1><?=isset($pageTitle) ? $pageTitle : 'Farmers graphical reports'?></h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Charts</a></li>
        <li class="active">ChartJS</li>
      </ol>
    </section>

	<section class="content">
		<div class="panel">
			<div class="panel-header print-none">
						<ul class="nav nav-tabs" id="surveytabs">
                          <li   class="active"><a data-toggle="tab" href="#tab1">Cropping system</a></li>
                          <li><a data-toggle="tab" href="#tab2">Fertilizer Applied</a></li>
                        </ul>

			</div>
			<div class="panel-body">
				
                        <div class="tab-content">
                          <div id="tab1" class="tab-pane fade  in active">   
					          <!-- DONUT CHART -->
					          <div class="box box-primary">

					            <div class="box-header with-border print-none">                       
                         		 <h3 class="box-title">Cropping system</h3>

					              <div class="box-tools pull-right">
					                <button type="button" class="btn btn-box-tool btn-print"><i class="fa fa-print"></i></button>
					                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
					                </button>
					                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
					              </div>
					            </div>
					            <div class="box-body">
                        <div class="col-md-12">
                          
                                <canvas id="chartCropping" style="height:450px"></canvas>
                        </div>
		              			
								</div>
									            <!-- /.box-body -->
								</div>

                          </div>

                          <div id="tab2" class="tab-pane fade">
                                              <!-- DONUT CHART -->
                    <div class="box box-primary">

                      <div class="box-header with-border print-none">                       
                             <h3 class="box-title">Fertilizer applied</h3>

                        <div class="box-tools pull-right">
                          <button type="button" class="btn btn-box-tool btn-print"><i class="fa fa-print"></i></button>
                          <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                          </button>
                          <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                        </div>
                      </div>
                      <div class="box-body">
                        <div class="col-md-12">
                          
                                <canvas id="chartFertilizer" style="height:450px"></canvas>
                        </div>

                        
                </div>
                              <!-- /.box-body -->
                </div>
                          </div>
                         

			</div>
		</div>
	</section>
</div>
    <?php if (isset($isCharts)): ?>

    <script type="text/javascript" src="<?=base_url('assets')?>/plugins/chartjs/2.8.0/Chart.min.js"></script>
    <script type="text/javascript" src="<?=base_url('assets')?>/plugins/chartjs/chartjs-plugin-colorschemes.min.js"></script>
    <script type="text/javascript" src="<?=base_url('assets')?>/plugins/chartjs/chartjs-plugin-labels.js"></script>
    <script type="text/javascript" src="<?=base_url('assets')?>/plugins/chartjs/2.8.0/utils.js"></script>
    <script type="text/javascript" src="<?=base_url('assets')?>/plugins/chartjs/2.8.0/random_color_array.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/js/cacao-chartjs-v1.0.js"></script>      
    <?php endif ?>
    <script type="text/javascript">


    $(function(){

		var json = site_url+'/graphical/jsonreport';

		$.getJSON(json,function(result){


			var production = result['production'];


      tocropping_system(production.cropping_system);
      tofertilizer(production.fertilizer);

		});

    })

	function tocropping_system(fdata){
    
  var nlabels = [];
  var ndataset = [];
  var npropagationType = ['Sexual','Asexual'];
  var mono = [];
  var inter = [];

  $.each(fdata,function(i,d){
    nlabels.push(i);
      $.each(d, function(a,b){

          if (b.label == 'Monocropping') {
            mono.push(b.total)
          }
          if (b.label == 'Inter-cropping') {

            inter.push(b.total)
          }
      })
  })

      ndataset.push({label:'Inter-cropping',data:inter,backgroundColor:colorArray[12]})
      ndataset.push({label:'Monocropping',data:mono,backgroundColor:colorArray[13]})

     toGroupBarChart(nlabels,ndataset,'chartCropping','Cropping system');


	}

  function tofertilizer(fdata){
    
      var flabels = [];
      var fdatasets = [];

      var length = fdata.length
      var count = 0;

      $.each(fdata,function(i,d){

        flabels.push(d.label)
        fdatasets.push(d.total)
        
        });

      toBarChart(flabels,fdatasets,'chartFertilizer')

  }

</script>