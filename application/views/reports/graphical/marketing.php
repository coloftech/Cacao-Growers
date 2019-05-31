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
                          <li   class="active"><a data-toggle="tab" href="#tab1">Marketing</a></li>
                        </ul>

			</div>
			<div class="panel-body">
				
                        <div class="tab-content">
                          <div id="tab1" class="tab-pane fade  in active">   
					          <!-- DONUT CHART -->
					          <div class="box box-primary">

					            <div class="box-header with-border print-none">                       
                         		 <h3 class="box-title">Cacao Marketing Reports</h3>

					              <div class="box-tools pull-right">
					                <button type="button" class="btn btn-box-tool btn-print"><i class="fa fa-print"></i></button>
					                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
					                </button>
					                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
					              </div>
					            </div>
					            <div class="box-body">
                        <div class="col-md-12">
                          
                                <canvas id="chartOwnership" style="height:450px"></canvas>
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

			var marketingData = result['marketing'];
			console.log(marketingData.product_sold)
      toMarketingPie(marketingData.product_sold);

		});

    })

	function toMarketing(fdata){
    
			var flabels = [];
			var fdatasets = [];

			var length = fdata.length
			var count = 0;

			$.each(fdata,function(i,d){

				flabels.push(d.label)
				fdatasets.push(d.total)
				
				});

			//toBarChart(flabels,fdatasets,'chartOwnership')

	}

  function toMarketingPie(fdata){ 
    var labels = [];
    var datas = [];
    var colors = [];
    var color = 12;
    $.each(fdata,function(i,d){
      labels.push(d.label);
      datas.push(d.total);
      colors.push(colorArray[color]);
      color++;
    });
    var config = {
      type: 'doughnut',
      data: {
        datasets: [{
          data: datas,
          backgroundColor: colors,
          label: 'Disease Control'
        }],
        labels: labels
      },
      options: {
        responsive: true,
          legend: {
            position: 'right',
          },

          plugins:{
            labels: {
            fontColor: '#fff',
            }
          }
      }
    };
    toPieChart(config,'chartOwnership')
  }
 var  toPieChart = function(config,elem){

      var ctx = document.getElementById(elem).getContext('2d');
      window.myPie = new Chart(ctx, config);
    

  }
</script>