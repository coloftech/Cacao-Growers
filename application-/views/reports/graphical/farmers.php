<div class="container-fluid">
    <section class="content-header">
      <h1>Farmers graphical reports</h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Charts</a></li>
        <li class="active">ChartJS</li>
      </ol>
    </section>

	<section class="content">
		<div class="row">
			
		<div class="col-md-12">

          <!-- DONUT CHART -->
          <div class="box box-danger">

            <div class="box-header with-border print-none">
              <h3 class="box-title">Affiliation</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool btn-print"><i class="fa fa-print"></i></button>
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body">

		              <canvas id="chartAffiliation" style="height:550px"></canvas>
		              <div class="affiliation hidden"><?php echo isset($affiliation) ? json_encode($affiliation) : json_encode(array(false)); ?></div>
            </div>
            <!-- /.box-body -->
         </div>

		</div>	
		<!-- col -->

		<div class="col-md-12">


          <!-- DONUT CHART -->
          <div class="box box-danger">

            <div class="box-header with-border print-none">
              <h3 class="box-title">Organization</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool btn-print"><i class="fa fa-print"></i></button>
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body">

		              <canvas id="chartOrganization" style="height:550px"></canvas>
		              <div class="organization hidden"><?php echo isset($organization) ? json_encode($organization) : json_encode(array(false)); ?></div>
            </div>
            <!-- /.box-body -->
         </div>


		</div>	
		<!-- col -->
		</div>
		
	</section>

</div>

    <script type="text/javascript" src="<?=base_url('assets')?>/plugins/chartjs/Chart.min.js"></script>
    <script type="text/javascript" src="<?=base_url('assets')?>/plugins/chartjs/chartjs-plugin-colorschemes.min.js"></script>
    <script type="text/javascript" src="<?=base_url('assets')?>/plugins/chartjs/chartjs-plugin-labels.js"></script>
    <script type="text/javascript" src="<?=base_url('assets')?>/plugins/chartjs/chatjs-utils.js"></script>

<script type="text/javascript">

$('.btn-print').on('click',function(){
  $('.box').addClass('print-none');
    var boxtoprint = $(this).parent().parent().parent().removeClass('print-none');

    $('.chartlegend-child span').removeClass('hidden')
    $('.print').removeClass('hidden')
    window.print()
    
       setTimeout(function () { 
          $('.chartlegend-child span').addClass('hidden')
          $('.print').addClass('hidden')
         }, 100);
})

	var affiliation = JSON.parse($('.affiliation').text());
	var affiliation_dataset = [];
	var affiliation_labels = [];

	var organization = JSON.parse($('.organization').text());
	var organization_dataset = [];
	var organization_labels = [];
	
	$(function(){
		console.table(affiliation)

		affiliation_dataset = [];
		affiliation_labels = [];
		if(affiliation[0] != false){
			$.each(affiliation,function(i,d){
				if (d.agency.length == 0) {
					d.agency = 'None';
				}
				affiliation_labels.push(d.agency)
				affiliation_dataset.push(d.total)
			});
		}

		//console.table(affiliation_labels)
		//console.table(affiliation_dataset)
		showDoughnut(affiliation_labels,affiliation_dataset,'chartAffiliation')


		organization_dataset = [];
		organization_labels = [];
		if(organization[0] != false){
			$.each(organization,function(i,d){
				if (d.organization.length == 0) {
					d.organization = 'None';
				}
				organization_labels.push(d.organization)
				organization_dataset.push(d.total)
			});
		}

		//showDoughnut(organization_labels,organization_dataset,'chartOrganization')
     }); 
	function showDoughnut(pielabel,piedata,elem) {
		// body...

      var max = Math.max.apply(Math, piedata)

      	var multiplier = 100
      	if (max <= 50) {
      		multiplier = 50
      	}
          max = Math.round(max/50) * multiplier

      var ctx2 = document.getElementById(elem).getContext('2d');
      var chart2 = new Chart(ctx2, {
        type: 'doughnut',
        data: {
          labels: pielabel,
          datasets: [{
            data: piedata,
            backgroundColor: Chart.colorschemes.tableau['Classic20']
          }]
        },
        options: {
          aspectRatio: 4,
          elements: {
            rectangle: {
              borderWidth: 1
            }
          },
          legend: {
            display: true,
            position: 'bottom'
          },
          tooltips: {
            enabled: true
          },
          hover: {
            animationDuration: 0
          },

          plugins:{
            labels: {
              render: 'value'
            }
          },
          scales: {
            xAxes: [{
              display: false
            }],
            yAxes: [{
              display: true,
              ticks: {
                min: 0,
                max: max
              }
            }]
          }
        }
      });
	}
</script>