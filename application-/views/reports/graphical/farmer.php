<style type="text/css">

</style>
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
		<div class="panel">
			<div class="panel-header">
						<ul class="nav nav-tabs" id="surveytabs">
                          <li><a data-toggle="tab" href="#tab1">Afilliation</a></li>
                          <li><a data-toggle="tab" href="#tab2">Organization</a></li>
                          <li  class="active"><a data-toggle="tab" href="#tab3">No of growers</a></li>
                        </ul>

			</div>
			<div class="panel-body">
				
                        <div class="tab-content">
                          <div id="tab1" class="tab-pane fade">   
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
                          <h2>Farmer Organization</h2>
                                <canvas id="chartOrganization" style="height:550px"></canvas>
                          </div>
                          <div id="tab3" class="tab-pane fade in active">
					                          

					          <!-- DONUT CHART -->
					          <div class="box box-danger">

					            <div class="box-header with-border print-none">
					              <h3 class="box-title">No of Cacao Gowers in Bohol</h3>

					              <div class="box-tools pull-right">
					                <button type="button" class="btn btn-md btn-success btn-download" data-canvas="chartGrowers"><i class="fa fa-download"></i></button>
					                <button type="button" class="btn btn-md btn-default btn-print"><i class="fa fa-print"></i></button>
					                
					            </div>
					            <div class="box-body">
									  <canvas id="chartGrowers" style="height:450px"></canvas>
									           
								</div>
									            <!-- /.box-body -->
								</div>

                                
                          </div>
                        </div>

			</div>
		</div>
	</section>
</div>
    <script type="text/javascript" src="<?=base_url('assets')?>/plugins/chartjs/Chart.min.js"></script>
    <script type="text/javascript" src="<?=base_url('assets')?>/plugins/chartjs/chartjs-plugin-colorschemes.min.js"></script>
    <script type="text/javascript" src="<?=base_url('assets')?>/plugins/chartjs/chartjs-plugin-labels.js"></script>
    <script type="text/javascript" src="<?=base_url('assets')?>/plugins/chartjs/chatjs-utils.js"></script>

<script type="text/javascript">
$(function(){


		var json = site_url+'/graphical/jsonreport';

		$.getJSON(json,function(result){
			
			var farmer = result['farmer']
			var affiliation = farmer.affiliation;
      const groupBycity = groupBy('city');

      var groupAffiliation = groupBycity(affiliation);
      console.log(groupAffiliation)
      var longest = Object.keys(groupAffiliation).length;
      console.log(longest)
      var cities = []
      var dataset = [];
      var j = 1;
      $.each(groupAffiliation,function(i,d){

            if(cities.length == 0){

            cities.push(i)
            }else{

              if (!inarray(cities,i)) {

                cities.push(i)

              }else{

              }
              
            }

      })
      console.log(cities)
      showStacked('chartOrganization',cities);
/*
			var farm = result['farm']
			console.log(farm)
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

				if(index == 'affiliation'){


					var affiliation_dataset = [];
					var affiliation_labels = [];
          var cities = [];

           var stacked = true;

					$.each(data,function(i,d){
            if(cities.length == 0){

            cities.push(d.city)
            stacked = false;
            }else{

              if (!inarray(cities,d.city)) {
                  cities.push(d.city)
                  stacked = true;
              }else{
                  stacked =  false
              }
              
            }
						if (d.agency.length == 0) {
							d.agency = 'None';
						}
						affiliation_labels.push(d.agency)
						affiliation_dataset.push(d.total)
					});
          console.log(cities)

        showStacked('chartOrganization','',cities);
					showDoughnut(affiliation_labels,affiliation_dataset,'chartAffiliation')

				}
			})
*/
		})

})
	var inarray = function(array,index){
     var found = array.indexOf(index)
                if(found == -1){
                  return false;
                }
                  return true;
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
var download = function(canvas){
  var link = document.createElement('a');
  var date = Date.now();
  link.download = canvas+'-'+dateFormat(date)+'.png';
  link.href = document.getElementById(canvas).toDataURL()
  link.click();
}
function grouped(cars) {
  // body...
  var grouped = _.mapValues(_.groupBy(cars, 'make'),
                          clist => clist.map(car => _.omit(car, 'make')));
}
const groupBy = key => array =>
  array.reduce((objectsByKeyValue, obj) => {
    const value = obj[key];
    objectsByKeyValue[value] = (objectsByKeyValue[value] || []).concat(obj);
    return objectsByKeyValue;
  }, {});

function showStacked(element,label,data,colors) {
  // body...
  var ctx = document.getElementById(element);
var myChart = new Chart(ctx, {
  type: 'bar',
  data: {
    labels: label,

    datasets: [{
        label: '# of Votes 1',
        data: [10, 19, 0, 0],
        backgroundColor: [
          'rgba(255, 99, 132, 0.2)',
          'rgba(255, 99, 132, 0.2)',
          'rgba(255, 99, 132, 0.2)',
          'rgba(255, 99, 132, 0.2)'
        ]
      },
      {
        label: '# of Votes 2',
        data: [15, 19, 3, 5, 2, 3, 2],
        backgroundColor: [
          'rgba(255, 159, 64, 0.2)',
          'rgba(255, 159, 64, 0.2)',
          'rgba(255, 159, 64, 0.2)',
          'rgba(255, 159, 64, 0.2)',
          'rgba(255, 159, 64, 0.2)',
          'rgba(255, 159, 64, 0.2)',
          'rgba(255, 159, 64, 0.2)'
        ]
      }
    ]
  },
  options: {
    scales: {
      yAxes: [{
        stacked: true,
        ticks: {
          beginAtZero: true
        }
      }],
      xAxes: [{
        stacked: true,
        ticks: {
          beginAtZero: true
        }
      }]

    },
          plugins:{
            labels: false
          }
  }
});
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