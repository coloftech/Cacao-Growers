<style type="text/css">
  ul,.chartlegend-h {
  list-style: none; /* Remove default bullets */
}
.chartlegend-h > li{
  width: 150px;
  float: left;
}
.chartlegend-h > li > .chartlegend-child >.chartlegend-red::before {
  content: "\f0c8";  /* Add content: \2022 is the CSS Code/unicode for a bullet */
  color: rgb(255, 99, 132,0.5); /* Change the color */
  font-weight: bold; /* If you want it to be bold */
  display: inline-block; /* Needed to add space between the bullet and the text */ 
  width: 20px; /* Also needed for space (tweak if needed) */
  margin-left: -1em; /* Also needed for space (tweak if needed) */
}

.chartlegend-h > li >  .chartlegend-child > .chartlegend-blue::before {
  content: "\f0c8";  /* Add content: \2022 is the CSS Code/unicode for a bullet */
  color: rgb(54, 162, 235,0.5); /* Change the color */
  font-weight: bold; /* If you want it to be bold */
  display: inline-block; /* Needed to add space between the bullet and the text */ 
  width: 20px; /* Also needed for space (tweak if needed) */
  margin-left: -1em; /* Also needed for space (tweak if needed) */
}
</style>
<div class="container-fluid">
  <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        ChartJS
        
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Charts</a></li>
        <li class="active">ChartJS</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-md-6">

          <!-- DONUT CHART -->
          <div class="box box-danger">
            <div class="box-header with-border">
              <h3 class="box-title">Chart for no. of trees planted by farmers (2019)</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool btn-print"><i class="fa fa-print"></i></button>
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body">
              <canvas id="pieChart" style="height:300px"></canvas>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->

          <!-- AREA CHART -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Survey Data Bar Chart</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool btn-print"><i class="fa fa-print"></i></button>
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body">

              <div class="chart">
                <canvas id="bartChart2" style="height:300px"></canvas>
              </div>
              <div class="table-responsive hidden">
                <ul class="chartlegend-h">
                  
                <?php 
                      $i=0;
                ?>
                <?php foreach ($surveyLabels as $key): ?>
                    <li><?=$key?>
                      <ul class="chartlegend-child">
                        <li class="chartlegend-red"><span class="hidden">Exp:&nbsp;</span><?=$surveyDataset1[$i]?></li>
                        <li class="chartlegend-blue"><span class="hidden">Act:&nbsp;</span><?=$surveyDataset2[$i]?></li>
                      </ul>
                    </li>
                   <?php 
                     $i++;
                   ?>
                <?php endforeach ?>

                </ul>
              </div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
          <!-- AREA CHART -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Area Chart</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool btn-print"><i class="fa fa-print"></i></button>
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body">
              <div class="chart">
                <canvas id="areaChart" style="height:300px"></canvas>
              </div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->


        </div>
        <!-- /.col (LEFT) -->
        <div class="col-md-6">

          <!-- BAR CHART -->
          <div class="box box-success">
            <div class="box-header with-border">
              <h3 class="box-title">Bar Chart</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool btn-print"><i class="fa fa-print"></i></button>
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body">
              <div class="chart">
                <canvas id="barChart" style="height:300px"></canvas>
              </div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->

          <!-- LINE CHART -->
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Line Chart</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool btn-print"><i class="fa fa-print"></i></button>
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body">
              <div class="chart">
                <canvas id="lineChart" style="height:295px"></canvas>
              </div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->

        </div>
        <!-- /.col (RIGHT) -->
      </div>
      <!-- /.row -->

    </section>
</div>
  <div class="javascript hidden">
    <div class="pielabel"><?=json_encode($pielabel)?></div>
    <div class="piedata"><?=json_encode($piedata)?></div>

    <div class="surveyLabels"><?=json_encode($surveyLabels)?></div>
    <div class="surveyDataset1"><?=json_encode($surveyDataset1)?></div>
    <div class="surveyDataset2"><?=json_encode($surveyDataset2)?></div>
  </div>
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
function PrintElem(elem)
{
    var mywindow = window.open('', 'PRINT', 'height=400,width=600');

    mywindow.document.write('<html><head><title>' + document.title  + '</title>');
    mywindow.document.write('</head><body >');
    mywindow.document.write('<h1>' + document.title  + '</h1>');
    mywindow.document.write(elem);
    mywindow.document.write('</body></html>');

    mywindow.document.close(); // necessary for IE >= 10
    mywindow.focus(); // necessary for IE >= 10*/

    mywindow.print();
    mywindow.close();
    return true;
}
</script>
    <script type="text/javascript" src="<?=base_url('assets')?>/plugins/chartjs/Chart.min.js"></script>
    <script type="text/javascript" src="<?=base_url('assets')?>/plugins/chartjs/chartjs-plugin-colorschemes.min.js"></script>
    <script type="text/javascript" src="<?=base_url('assets')?>/plugins/chartjs/chartjs-plugin-labels.js"></script>
    <script type="text/javascript" src="<?=base_url('assets')?>/plugins/chartjs/chatjs-utils.js"></script>
<script type="text/javascript">

      var pielabel = JSON.parse($('.pielabel').html());
      var piedata = JSON.parse($('.piedata').html());

      var ctx1 = document.getElementById('pieChart').getContext('2d');
      var chart1 = new Chart(ctx1, {
        type: 'doughnut',
        data: {
          labels:  pielabel,
          datasets: [{
            data: piedata,
            backgroundColor: Chart.colorschemes.brewer['Paired12']
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
            display: true
          },
          plugins:{
            labels: {
              render: 'value'
            }
          },
          tooltips: {
            enabled: true
          },
          hover: {
            mode: null
          },

          scales: {
            xAxes: [{
              display: false
            }],
            yAxes: [{
              display: false,
              ticks: {
                min: 0,
                max: 2.5
              }
            }]
          }
        }
      });
      var max = Math.max.apply(Math, piedata)
          max = Math.round(max/50)*100

      var ctx2 = document.getElementById('barChart').getContext('2d');
      var chart2 = new Chart(ctx2, {
        type: 'bar',
        data: {
          labels: pielabel,
          datasets: [{
            data: piedata,
            backgroundColor: Chart.colorschemes.office['Orbit6']
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
            display: false
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
              display: true
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

</script>

<script type="text/javascript">

        var surveyLabels = JSON.parse($('.surveyLabels').html());
        var surveyDataset1 = JSON.parse($('.surveyDataset1').html());
        var surveyDataset2 = JSON.parse($('.surveyDataset2').html());

  var color = Chart.helpers.color;
    var barChartData = {
      labels: surveyLabels,
      datasets: [{
        label: 'Expected',
        backgroundColor: color(window.chartColors.red).alpha(0.5).rgbString(),
        borderColor: window.chartColors.red,
        borderWidth: 1,
        data: surveyDataset1
      }, {
        label: 'Actual',
        backgroundColor: color(window.chartColors.blue).alpha(0.5).rgbString(),
        borderColor: window.chartColors.blue,
        borderWidth: 1,
        data: surveyDataset2
      }]

    };

    window.onload = function() {
      var ctx = document.getElementById('bartChart2').getContext('2d');
      window.myBar = new Chart(ctx, {
        type: 'bar',
        data: barChartData,
        options: {
          responsive: true,
          legend: {
            position: 'top',
          },
          plugins:{
            labels: {
              render: 'value'
            }
          },

          title: {
            display: true,
            text: 'Survey Data Bar Chart'
          }

        }
      });

    };
</script>

<script type="text/javascript">
  
</script>