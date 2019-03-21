
<!-- ./wrapper -->
</div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 2.4.0
    </div>
    <strong>Copyright &copy; 2014-2016 <a href="https://adminlte.io">Almsaeed Studio</a>.</strong> All rights
    reserved.
  </footer>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.7 -->
<script src="<?=base_url('assets')?>/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<?php if (isset($isdashboard)): ?>
	

<!-- Morris.js charts -->
<script src="<?=base_url('assets')?>/bower_components/raphael/raphael.min.js"></script>
<script src="<?=base_url('assets')?>/bower_components/morris.js/morris.min.js"></script>
<!-- Sparkline -->
<script src="<?=base_url('assets')?>/bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="<?=base_url('assets')?>/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="<?=base_url('assets')?>/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart -->
<script src="<?=base_url('assets')?>/bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="<?=base_url('assets')?>/bower_components/moment/min/moment.min.js"></script>
<script src="<?=base_url('assets')?>/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>

<!-- datepicker -->
<script src="<?=base_url('assets')?>/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>

<?php endif ?>

<!-- Bootstrap WYSIHTML5 -->
<script src="<?=base_url('assets')?>/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Slimscroll -->
<script src="<?=base_url('assets')?>/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="<?=base_url('assets')?>/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="<?=base_url('assets')?>/dist/js/adminlte.min.js"></script>

<!-- iCheck -->
<script src="<?=base_url('assets')?>/plugins/iCheck/icheck.min.js"></script>


<!-- AdminLTE for demo purposes -->
<script src="<?=base_url('assets')?>/dist/js/demo.js"></script>
    <script src="<?=base_url('assets')?>/js/jquery.validate.js" type="text/javascript"></script>
<script src="<?=base_url('assets')?>/js/validation.js"></script>

<!-- Page Script -->



    
    <script src="<?=base_url('assets')?>/bower_components/datatables.net/js/jquery.dataTables.js"></script>

<script src="<?=base_url('assets')?>/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>

    <script type="text/javascript" src="<?php echo base_url(); ?>assets/plugins/jquery-cropper/dist/cropper.js"></script>
    <script src="https://cloud.tinymce.com/5/tinymce.min.js?apiKey=2ib73acioj4e1ftii2coubvn3vjzj65xhml5aoxdnftbld0k"></script>
    <?php if (isset($visits)): ?>
   	<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/map-visits-v.0.2.js"></script>      
    <?php endif ?>
   	<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/cacao-v.1.js"></script>

    <?php if (isset($mapping)): ?>
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/js/cacao-mapping-v1.2.js"></script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDl1fNnC-kRcfPSi1eaw95L8Csm_0329Xs&callback=loadMap">
    </script>

    <?php endif ?>

</body>
</html>
