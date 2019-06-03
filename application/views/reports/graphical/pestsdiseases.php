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
                          <li   class="active"><a data-toggle="tab" href="#tab1">Pest</a></li>
                          <li><a data-toggle="tab" href="#tab2">Pest Control</a></li>
                          <li><a data-toggle="tab" href="#tab3">Disease</a></li>
                          <li><a data-toggle="tab" href="#tab4">Disease Control</a></li>
                        </ul>

			</div>
			<div class="panel-body">
				
                        <div class="tab-content">
                          <div id="tab1" class="tab-pane fade  in active">   
					          <!-- DONUT CHART -->
					          <div class="box box-primary">

					            <div class="box-header with-border print-none">                       
                         		 <h3 class="box-title">Type of Cacao Pests in Bohol</h3>

					              <div class="box-tools pull-right">
					                <button type="button" class="btn btn-box-tool btn-print"><i class="fa fa-print"></i></button>
					                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
					                </button>
					                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
					              </div>
					            </div>
					            <div class="box-body">
                        <div class="col-md-12">
                          
                                <canvas id="chartOwnership" style="height:300px"></canvas>
                        </div>
		              			
								</div>
									            <!-- /.box-body -->
								</div>

                          </div>

                          <div id="tab2" class="tab-pane fade">
                                              <!-- DONUT CHART -->
                    <div class="box box-primary">

                      <div class="box-header with-border print-none">                       
                             <h3 class="box-title">Pest management</h3>

                        <div class="box-tools pull-right">
                          <button type="button" class="btn btn-box-tool btn-print"><i class="fa fa-print"></i></button>
                          <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                          </button>
                          <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                        </div>
                      </div>
                      <div class="box-body">
                        <div class="col-md-12">
                          
                                <canvas id="chartPestControl" style="height:300px"></canvas>
                        </div>

                        
                </div>
                              <!-- /.box-body -->
                </div>
                          </div>
                          <div id="tab3" class="tab-pane fade">
					                          

					          <!-- DONUT CHART -->
					          <div class="box box-danger">

					            <div class="box-header with-border print-none">
					              <h3 class="box-title">Disease</h3>

					              <div class="box-tools pull-right">
					                <button type="button" class="btn btn-md btn-success btn-download" data-canvas="chartGrowers"><i class="fa fa-download"></i></button>
					                <button type="button" class="btn btn-md btn-default btn-print"><i class="fa fa-print"></i></button>
					                
					            </div>
					            <div class="box-body">

									           
                        <div class="col-md-12">
                          
                                <canvas id="chartDisease1" style="height:300px"></canvas>
                        </div>

								      </div>
									            <!-- /.box-body -->
								</div>

                                
                          </div>
                        </div>

                          <div id="tab4" class="tab-pane fade">
                                    

                    <!-- DONUT CHART -->
                    <div class="box box-danger">

                      <div class="box-header with-border print-none">
                        <h3 class="box-title">Disease Control</h3>

                        <div class="box-tools pull-right">
                          <button type="button" class="btn btn-md btn-success btn-download" data-canvas="chartGrowers"><i class="fa fa-download"></i></button>
                          <button type="button" class="btn btn-md btn-default btn-print"><i class="fa fa-print"></i></button>
                          
                      </div>
                      <div class="box-body">

                             
                        <div class="col-md-12">
                          
                                <canvas id="chartDiseaseControl" style="height:300px"></canvas>
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

    <script type="text/javascript">


    $(function(){

		var json = site_url+'/graphical/jsonreport';

		$.getJSON(json,function(result){


			var pestdiseaseData = result['pestdisease'];


      toPests(pestdiseaseData.pests);
      toDisease(pestdiseaseData.disease);
      toPestControl(pestdiseaseData.pestControl);
      toDiseaseControl(pestdiseaseData.diseaseControl);


		});

    })

  function toPests(fdata){
    
      var flabels = [];
      var fdatasets = [];

      var length = fdata.length
      var count = 0;

      $.each(fdata,function(i,d){

        flabels.push(d.label)
        fdatasets.push(d.total)
        
        });

      toBarChart(flabels,fdatasets,'chartOwnership','Pests')

  }

	function toDisease(fdata){
    
			var flabels = [];
			var fdatasets = [];

			var length = fdata.length
			var count = 0;

			$.each(fdata,function(i,d){

				flabels.push(d.label)
				fdatasets.push(d.total)
				
				});

			toBarChart(flabels,fdatasets,'chartDisease1','Pests')

	}

  function toPestControl(fdata){
    console.log(fdata);
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
      type: 'pie',
      data: {
        datasets: [{
          data: datas,
          backgroundColor: colors,
          label: 'Pest Control'
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
    toPieChart(config,'chartPestControl')
  }
  function toDiseaseControl(fdata){
    console.log(fdata);
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
      type: 'pie',
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
    toPieChart(config,'chartDiseaseControl')
  }
 var  toPieChart = function(config,elem){

      var ctx = document.getElementById(elem).getContext('2d');
      window.myPie = new Chart(ctx, config);
    

  }
</script>