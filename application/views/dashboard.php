
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-tachometer" aria-hidden="true"></i> Dashboard
        <small>Control panel</small>
      </h1>
    </section>
    
    <section class="content">
        <div class="row">

          
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-aqua">
                <div class="inner">
                  <h3><?=$total_survey?></h3>
                  <p>Total Survey</p>
                </div>
                <div class="icon">
                  <i class="fa fa-male"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-green">
                <div class="inner">
                  <h3>53<sup style="font-size: 20px">%</sup></h3>
                  <p>Completed Tasks</p>
                </div>
                <div class="icon">
                  <i class="ion ion-stats-bars"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-yellow">
                <div class="inner">
                  <h3><?=$new_added_survey?></h3>
                  <p>New Added Survey</p>
                </div>
                <div class="icon">
                  <i class="ion ion-person-add"></i>
                </div>
                <a href="<?php echo base_url(); ?>userListing" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-red">
                <div class="inner">
                  <h3>65</h3>
                  <p>Reopened Issue</p>
                </div>
                <div class="icon">
                  <i class="ion ion-pie-graph"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->



            <div class="col-md-12">
          <!-- MAP & BOX PANE -->
          <div class="box box-success">
            <div class="box-header with-border">
              <h3 class="box-title">Visitors Report</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body no-padding">
              <div class="row">
                <div class="col-md-9 col-sm-8">
                  <div class="pad">
                    <!-- Map will be created here -->
                    <div id="world-map-markers" style="height: 325px;"></div>
                  </div>
                </div>
                <!-- /.col -->
                <div class="col-md-3 col-sm-4">
                  <div class="pad box-pane-right bg-green" style="min-height: 325px;margin-top:10px;margin-right:10px;">
                    <div class="description-block margin-bottom visitors-panel">
                      <h3 class="visitors-title">Current month visitors <span class="pull-right"><?=$totalvisits?></span></h3>
                      <?php if (isset($visits) && is_array($visits)): ?>
                        <?php foreach ($visits as $key): ?>
                          <div class="description-text visitors-countrycode"><?=$key->country?> <?=$key->counter?></div>
                        <?php endforeach ?>
                      <?php endif ?>
                    </div>
                  </div>
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>

          </div>
    </section>


<script type="text/javascript" src="<?=base_url('assets/js/country_coords.js')?>"></script>
<script type="text/javascript">
  var visitors = <?=json_encode($visits)?>;
  //console.log(visitors);
  //console.log(jvmCountries);

  // latLng: [15, 121], name: 'Philippines',style: {fill: 'red',stroke: 'none'} 

</script>