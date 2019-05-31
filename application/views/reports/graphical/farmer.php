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
                          <li   class="active"><a data-toggle="tab" href="#tab1">Afilliation</a></li>
                          <li><a data-toggle="tab" href="#tab2">Organization</a></li>
                          <li><a data-toggle="tab" href="#tab3">No of growers</a></li>
                        </ul>

			</div>
			<div class="panel-body">
				
                        <div class="tab-content">
                          <div id="tab1" class="tab-pane fade  in active">   
					          <!-- DONUT CHART -->
					          <div class="box box-primary">

					            <div class="box-header with-border print-none">                       
                         		 <h3 class="box-title">Farmer Affiliation</h3>

					              <div class="box-tools pull-right">
					                <button type="button" class="btn btn-box-tool btn-print"><i class="fa fa-print"></i></button>
					                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
					                </button>
					                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
					              </div>
					            </div>
					            <div class="box-body">

                                <canvas id="chartAffiliation" style="height:550px"></canvas>
		              			
								</div>
									            <!-- /.box-body -->
								</div>

                          </div>

                          <div id="tab2" class="tab-pane fade">
                   <div class="box box-success">

                      <div class="box-header with-border print-none">                       
                             <h3 class="box-title">Farmer Organization</h3>

                        <div class="box-tools pull-right">
                          <button type="button" class="btn btn-box-tool btn-print"><i class="fa fa-print"></i></button>
                          <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                          </button>
                          <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                        </div>
                      </div>
                      <div class="box-body">

                                <canvas id="chartOrganization" style="height:550px"></canvas>
                        
                </div>
                              <!-- /.box-body -->
                </div>

                          </div>
                          <div id="tab3" class="tab-pane fade">
					                          

					          <!-- DONUT CHART -->
					          <div class="box box-danger">

					            <div class="box-header with-border print-none">
					              <h3 class="box-title">No of Cacao Gowers in Bohol</h3>

					              <div class="box-tools pull-right">
					                <button type="button" class="btn btn-md btn-success btn-download" data-canvas="chartGrowers"><i class="fa fa-download"></i></button>
					                <button type="button" class="btn btn-md btn-default btn-print"><i class="fa fa-print"></i></button>
					                
					            </div>
					            <div class="box-body">
									  <canvas id="chartGrowers" style="height:250px"></canvas>
									           
								</div>
									            <!-- /.box-body -->
								</div>

                                
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
			
			var farmer = result['farmer']

      toAffiliation(farmer.affiliation);
      toOrganization(farmer.organization);


			var farm = result['farm']

			$.each(farmer,function(index,data){

				if(index == 'totalgrowers'){

					var growers_dataset = [];
					var growers_labels = [];

					$.each(data,function(i,d){
						growers_dataset.push(d.total)
						growers_labels.push(d.city)
					})
					showDoughnut(growers_labels,growers_dataset,'chartGrowers');
				}

			})

		})

})

var toAffiliation = function(ndata){

      const groupBycity = groupBy('city');
      var data = groupBycity(ndata);

      var longest = Object.keys(data).length;
      
      var cities = []
      var dataset = [];
      var j = 1;
      var datasets = [];

      var a = 0 , b = [];
      var color = 5;

      $.each(data,function(i,d){

            if(cities.length == 0){

              a++;

              var zero = longest - a;
              console.log(zero)

            cities.push(i)
            $.each(d,function(x,z){

           var newcolor = colorArray[color];
           color++;
              if(z.columnName == 'None'){
                z.total = 0;
              }
              b.push(parseInt(z.total))

              for (var sero = zero - 1; sero >= 0; sero--) {
                b.push(0)
              };
            datasets.push({
              label:z.columnName +' : '+z.total,
              data:b,
              backgroundColor: newcolor,
              hoverBackgroundColor: newcolor
            })

            })

            }else{

              if (!inarray(cities,i)) {

                cities.push(i)
            var zero = (longest -1) - a;

            $.each(d,function(x,z){


              if(z.columnName == 'None' || z.columnName == undefined ){
                z.total = 0;
              }
           var newcolor = colorArray[color];
           color++;

                b = []
                for (var c = a - 1; c >= 0; c--) {
                  b.push(0)
                };
                b.push(parseInt(z.total));
                for (var sero = zero - 1; sero >= 0; sero--) {
                                b.push(0)
                              };

                datasets.push(
                  {
              label:z.columnName +' : '+z.total,
              data:b,
              backgroundColor: newcolor,
              hoverBackgroundColor: newcolor
            });

            });

                a++;

              }else{

              }
              
            }

      })

      //console.log(datasets)

      tostackedBar('chartAffiliation',cities,datasets);
}

var toOrganization = function(ndata){

      const groupBycity = groupBy('city');
      var data = groupBycity(ndata);

      var longest = Object.keys(data).length;
      
      var cities = []
      var dataset = [];
      var j = 1;
      var datasets = [];

      var a = 0 , b = [];
      var color = 5;

      $.each(data,function(i,d){

            if(cities.length == 0){

              a++;

              var zero = longest - a;
              console.log(zero)

            cities.push(i)
            $.each(d,function(x,z){

           var newcolor = colorArray[color];
           color++;


              if(z.columnName == 'None' || z.columnName == undefined ){
                z.total = 0;
              }
              b.push(parseInt(z.total))

              for (var sero = zero - 1; sero >= 0; sero--) {
                b.push(0)
              };
            datasets.push({
              label:z.columnName +' : '+z.total,
              data:b,
              backgroundColor: newcolor,
              hoverBackgroundColor: newcolor
            })

            })

            }else{

              if (!inarray(cities,i)) {

                cities.push(i)
            var zero = (longest -1) - a;

            $.each(d,function(x,z){


           var newcolor = colorArray[color];
           color++;

                b = []
                for (var c = a - 1; c >= 0; c--) {
                  b.push(0)
                };
                
              if(z.columnName == 'None' || z.columnName == undefined ){
                z.total = 0;
              }
                b.push(parseInt(z.total));
                for (var sero = zero - 1; sero >= 0; sero--) {
                                b.push(0)
                              };

                datasets.push(
                  {
              label:z.columnName +' : '+z.total,
              data:b,
              backgroundColor: newcolor,
              hoverBackgroundColor: newcolor
            });

            });

                a++;

              }else{

              }
              
            }

      })

      //console.log(datasets)

      tostackedBar('chartOrganization',cities,datasets);
}


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

$('.btn-download').on('click',function(){
	var canvas = $(this).data('canvas');
	download(canvas)
});

  var dateFormat = function(date) {
    var d = new Date(date),
        month = '' + (d.getMonth() + 1),
        day = '' + d.getDate(),
        year = d.getFullYear();

    if (month.length < 2) month = '0' + month;
    if (day.length < 2) day = '0' + day;

    return [year, month, day].join('-');
}

	function showDoughnut(pielabel,piedata,elem,type='doughnut') {
		// body...

      var max = Math.max.apply(Math, piedata)

      	var multiplier = 100
      	if (max <= 50) {
      		multiplier = 50
      	}
          max = Math.round(max/50) * multiplier

      var ctx2 = document.getElementById(elem).getContext('2d');
      var chart2 = new Chart(ctx2, {
        type: type,
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
            position: 'right'
          },
          tooltips: {
            enabled: true
          },
          hover: {
            animationDuration: 0
          },

          plugins:{
            labels: {
              render: 'value',
              fontColor: '#fff',
            }
          },
          scales: {
            xAxes: [{
              display: false
            }],
            yAxes: [{
              display: false,
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