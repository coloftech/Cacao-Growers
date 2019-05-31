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
                          <li><a data-toggle="tab" href="#tab1">Ownership</a></li>
                          <li><a data-toggle="tab" href="#tab2">Cacao Trees</a></li>
                          <li><a data-toggle="tab" href="#tab3">Cacao Variety</a></li>
                          <li class="active"><a data-toggle="tab" href="#tab4">Propagation</a></li>
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
                        <div class="col-md-12">
                          
                                <canvas id="chartOwnership" style="height:450px"></canvas>
                        </div>
		              			
								</div>
									            <!-- /.box-body -->
								</div>

                          </div>

                          <div id="tab2" class="tab-pane fade">
                                              <!-- DONUT CHART -->
                    <div class="box box-primary">

                      <div class="box-header with-border print-none">                       
                             <h3 class="box-title">Cacao Trees</h3>

                        <div class="box-tools pull-right">
                          <button type="button" class="btn btn-box-tool btn-print"><i class="fa fa-print"></i></button>
                          <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                          </button>
                          <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                        </div>
                      </div>
                      <div class="box-body">
                        <div class="col-md-12">
                          
                                <canvas id="chartTrees1" style="height:450px"></canvas>
                        </div>

                        <div class="col-md-12">
                          
                                <canvas id="chartTrees2" style="height:450px"></canvas>
                        </div>

                        <div class="col-md-12">
                          
                                <canvas id="chartTrees3" style="height:450px"></canvas>
                        </div>
                        
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

                             
                        <div class="col-md-12">
                          
                                <canvas id="chartsvariety1" style="height:450px"></canvas>
                        </div>

                        <div class="col-md-12">
                          
                                <canvas id="chartsvariety2" style="height:450px"></canvas>
                        </div>

                        <div class="col-md-12">
                          
                                <canvas id="chartsvariety3" style="height:450px"></canvas>
                        </div>

                      </div>
                              <!-- /.box-body -->
                </div>

                                
                          </div>
                        </div>

                          <div id="tab4" class="tab-pane fade  in active">
					                          

					          <!-- DONUT CHART -->
					          <div class="box box-danger">

					            <div class="box-header with-border print-none">
					              <h3 class="box-title">Propagation</h3>

					              <div class="box-tools pull-right">
					                <button type="button" class="btn btn-md btn-success btn-download" data-canvas="chartGrowers"><i class="fa fa-download"></i></button>
					                <button type="button" class="btn btn-md btn-default btn-print"><i class="fa fa-print"></i></button>
					                
					            </div>
					            <div class="box-body">

									           
                        <div class="col-md-12">
                          
                                <canvas id="chartPropagation" style="height:450px"></canvas>
                        </div>


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


			var farmData = result['farm'];


      toOwnership(farmData.ownership);
      toNoOfTrees(farmData.nooftrees);
      toVariety(farmData.cacaovariety);
      toPropagation(farmData.propagation);



		});

    })

	function toOwnership(fdata){
    
			var flabels = [];
			var fdatasets = [];

			var length = fdata.length
			var count = 0;

			$.each(fdata,function(i,d){

				flabels.push(d.label)
				fdatasets.push(d.total)
				
				});

			toBarChart(flabels,fdatasets,'chartOwnership','Land ownership')

	}

var toNoOfTrees = function(data){


      const groupBycity = groupBy('city');
      var groupData = groupBycity(data);


      var longest = Object.keys(groupData).length;
      
      var cities = []
      var dataset = [];
      var j = 1;
      var datasets = [];

      var a = 0 , b = [];
      var color = 12;

      $.each(groupData,function(i,d){

            if(cities.length == 0){

              a++;

              var zero = longest - a;


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
                color = 12;
                cities.push(i)
            var zero = (longest -1) - a;

            $.each(d,function(x,z){


           var newcolor = colorArray[color];
           color++;

                b = []
                for (var c = a - 1; c >= 0; c--) {
                  b.push(0)
                };
                
              if(z.label == 'None' || z.label == undefined ){
                z.total = 0;
              }
                b.push(parseInt(z.total));
                for (var sero = zero - 1; sero >= 0; sero--) {
                                b.push(0)
                              };

                datasets.push(
                  {
              label:z.label +' : '+z.total,
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

      tostackedBarNone('chartTrees1',cities,datasets,false,false);
}

var toVariety = function(data){

      const groupBycity = groupBy('city');
      var groupData = groupBycity(data);


      var longest = Object.keys(groupData).length;
      
      var cities = []
      var dataset = [];
      var j = 1;
      var datasets = [];

      var a = 0 , b = [];
      var color = 12;

      $.each(groupData,function(i,d){

            if(cities.length == 0){

              a++;

              var zero = longest - a;


            cities.push(i)
            $.each(d,function(x,z){

           var newcolor = colorArray[color];
           color++;


              if(z.label == 'None' || z.label == undefined ){
                z.total = 0;
                z.label = 'Undefined';
              }
              b.push(parseInt(z.total))

              for (var sero = zero - 1; sero >= 0; sero--) {
                b.push(0)
              };
            datasets.push({
              label:z.label,
              data:b,
              backgroundColor: newcolor,
              hoverBackgroundColor: newcolor
            })

            })

            }else{

              if (!inarray(cities,i)) {
                color = 12;
                cities.push(i)
            var zero = (longest -1) - a;

            $.each(d,function(x,z){


           var newcolor = colorArray[color];
           color++;

                b = []
                for (var c = a - 1; c >= 0; c--) {
                  b.push(0)
                };
                
              if(z.label == 'None' || z.label == undefined ){
                z.total = 0;
                z.label = 'Undefined';
              }
                b.push(parseInt(z.total));
                for (var sero = zero - 1; sero >= 0; sero--) {
                                b.push(0)
                              };

                datasets.push(
                  {
              label:z.label,
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

      tostackedBarNone('chartsvariety1',cities,datasets,false,false);
}

function toPropagation(Odata){

  var nlabels = [];
  var ndataset = [];
  var npropagationType = ['Sexual','Asexual'];
  var sexual = [];
  var asexual = [];

  $.each(Odata,function(i,d){
    nlabels.push(i);
      $.each(d, function(a,b){

          if (b.label == 'Asexual') {
            sexual.push(b.total)
          }
          if (b.label == 'Sexual') {

            asexual.push(b.total)
          }
      })
  })

      console.log(sexual);
      console.log(asexual);
      ndataset.push({label:'Asexual',data:asexual,backgroundColor:colorArray[12]})
      ndataset.push({label:'Sexual',data:sexual,backgroundColor:colorArray[13]})

     toGroupBarChart(nlabels,ndataset,'chartPropagation','Propagation');


 // console.log(Odata)
}

</script>