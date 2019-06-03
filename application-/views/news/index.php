<?php

$userId = '';
$name = '';
$email = '';
$mobile = '';
$roleId = '';

if(!empty($userInfo))
{
    foreach ($userInfo as $uf)
    {
        $userId = $uf->userId;
        $name = $uf->name;
        $email = $uf->email;
        $mobile = $uf->mobile;
        $roleId = $uf->roleId;
    }
}


?>
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-flag"></i> Post
        <small>Post / home</small>
      </h1>
    </section>
    
    <section class="content">
    
        <div class="row">
            <!-- left column -->


        <div class="col-md-3">
          <a href="<?=site_url('post/add')?>" class="btn btn-primary btn-block margin-bottom">Create new</a>

          <div class="box box-solid">
            <div class="box-header with-border">
              <h3 class="box-title">Folders</h3>

              <div class="box-tools">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
              </div>
            </div>
            <div class="box-body no-padding">
              <ul class="nav nav-pills nav-stacked">
                <li class="active"><a href="#"><i class="fa fa-inbox"></i> List post
                  </a></li>
                <li><a href="#"><i class="fa fa-file-o"></i> New post</a></li>
                <li><a href="#"><i class="fa fa-bullhorn"></i> Trending post</a></li>
                <li><a href="#"><i class="fa fa-file-text-o"></i> Comments <span class="label label-primary pull-right">12</span></a></li>
                <li><a href="#"><i class="fa fa-filter"></i> Junk <span class="label label-warning pull-right">65</span></a>
                </li>
                <li><a href="#"><i class="fa fa-trash-o"></i> Trash</a></li>
              </ul>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /. box -->
          <div class="box box-solid">
            <div class="box-header with-border">
              <h3 class="box-title">Labels</h3>

              <div class="box-tools">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
              </div>
            </div>
            <div class="box-body no-padding">
              <ul class="nav nav-pills nav-stacked">
                <li><a href="#"><i class="fa fa-circle-o text-red"></i> Important</a></li>
                <li><a href="#"><i class="fa fa-circle-o text-yellow"></i> Promotions</a></li>
                <li><a href="#"><i class="fa fa-circle-o text-light-blue"></i> Social</a></li>
              </ul>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>


            <div class="col-md-9">
              <!-- general form elements -->
                
                
                
                <div class="box box-primary">
                    <div class="box-header">
                        <h3 class="box-title">Post List</h3>
                    </div><!-- /.box-header -->
                    <!-- form start -->
                    <div class="box-body">
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>

                                        <th>Title</th>
                                        <th>Message</th>
                                        <th>Date added</th>
                                        <th>Status</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php if (isset($listpost) && is_array($listpost)): ?>
                                        <?php foreach ($listpost as $post): ?>
                                    <tr>
                                        <td><?=$post->title?></td>
                                        <td><?=$this->messages->limit($post->content,200)?></td>
                                        <td><?=$post->date_added?></td>
                                        <td><button class="btn btn-xs btn-info btn-publish" style="width:50px;"><?=$this->messages->ispublish($post->is_publish)?></button></td>
                                    </tr>

                                        <?php endforeach ?>
                                    <?php endif ?>
                                    
                                    <!--
                                    <tr>
                                        <td>Establishment of Bohol Cacao Intergrated Information System</td>
                                        <td><?date('Y-m-d')?></td>
                                        <td><button class="btn btn-xs btn-default">PRIVATE</button></td>
                                    </tr>
                                -->
                                </tbody>
                            </table>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>    
    </section>

<script src="<?php echo base_url(); ?>assets/js/editUser.js" type="text/javascript"></script>

<script type="text/javascript">
    $(function(){
        var btnpush = $('.btn-publish');
        $.each(btnpush,function(){
           if($(this).text() == 'Public'){
            $(this).removeClass('btn-default btn-info').addClass('btn-info');
           }else{

            $(this).removeClass('btn-default btn-info').addClass('btn-default');
           }
        })
    });
</script>