
  <div id="breadcrumb">
    <div class="container">
      <div class="breadcrumb">
        <li><a href="index.html">Home</a></li>
        <li>Portfolio</li>
      </div>
    </div>
  </div>

  <section id="portfolio">
    <div class="container">
      <div class="center">
        <p>&nbsp;</p>
      </div>

      <ul class="portfolio-filter text-center">
        <li><a class="btn btn-default active" href="#" data-filter="*">All image</a></li>
        <li><a class="btn btn-default" href="#" data-filter=".cacao">Cacao</a></li>
        <li><a class="btn btn-default" href="#" data-filter=".pest">Pest</a></li>
        <li><a class="btn btn-default" href="#" data-filter=".diseases">Diseases</a></li>
      </ul>
      <!--/#portfolio-filter-->
    </div>
    <div class="container">
      <div class="">
        <div class="portfolio-items">

            <?php if (is_array($images)): ?>
              <?php foreach ($images as $key): ?>
                

          <div class="portfolio-item <?=$key->type?> col-xs-12 col-sm-4 col-md-3">
            <div class="recent-work-wrap">
              <img class="img-responsive" src="<?=$key->link?>" alt="">
              <div class="overlay">
                <div class="recent-work-inner">
                  <h3><a href="#"><?=$key->title?></a></h3>
                  <p><?=$key->description?></p>
                  <a class="preview" href="<?=$key->link?>" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                </div>
              </div>
            </div>
          </div>


              <?php endforeach ?>

            <?php endif ?>


          <!--/.portfolio-item -/->

          <div class="portfolio-item joomla bootstrap col-xs-12 col-sm-4 col-md-3">
            <div class="recent-work-wrap">
              <img class="img-responsive" src="<?=base_url('assets/themes')?>/Company/images/portfolio/recent/item2.png" alt="">
              <div class="overlay">
                <div class="recent-work-inner">
                  <h3><a href="#">Business theme</a></h3>
                  <p>There are many variations of passages of Lorem Ipsum available, but the majority</p>
                  <a class="preview" href="<?=base_url('assets/themes')?>/Company/images/portfolio/full/item2.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                </div>
              </div>
            </div>
          </div>
          <!-/-/.portfolio-item-/->

          <div class="portfolio-item bootstrap wordpress col-xs-12 col-sm-4 col-md-3">
            <div class="recent-work-wrap">
              <img class="img-responsive" src="<?=base_url('assets/themes')?>/Company/images/portfolio/recent/item3.png" alt="">
              <div class="overlay">
                <div class="recent-work-inner">
                  <h3><a href="#">Business theme</a></h3>
                  <p>There are many variations of passages of Lorem Ipsum available, but the majority</p>
                  <a class="preview" href="<?=base_url('assets/themes')?>/Company/images/portfolio/full/item3.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                </div>
              </div>
            </div>
          </div>
          <!-/-/.portfolio-item-/->

          <div class="portfolio-item joomla wordpress apps col-xs-12 col-sm-4 col-md-3">
            <div class="recent-work-wrap">
              <img class="img-responsive" src="<?=base_url('assets/themes')?>/Company/images/portfolio/recent/item4.png" alt="">
              <div class="overlay">
                <div class="recent-work-inner">
                  <h3><a href="#">Business theme</a></h3>
                  <p>There are many variations of passages of Lorem Ipsum available, but the majority</p>
                  <a class="preview" href="<?=base_url('assets/themes')?>/Company/images/portfolio/full/item4.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                </div>
              </div>
            </div>
          </div>
          <!-/-/.portfolio-item-/->

          <div class="portfolio-item joomla html bootstrap col-xs-12 col-sm-4 col-md-3">
            <div class="recent-work-wrap">
              <img class="img-responsive" src="<?=base_url('assets/themes')?>/Company/images/portfolio/recent/item5.png" alt="">
              <div class="overlay">
                <div class="recent-work-inner">
                  <h3><a href="#">Business theme</a></h3>
                  <p>There are many variations of passages of Lorem Ipsum available, but the majority</p>
                  <a class="preview" href="<?=base_url('assets/themes')?>/Company/images/portfolio/full/item5.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                </div>
              </div>
            </div>
          </div>
          <!-/-/.portfolio-item-/->

          <div class="portfolio-item wordpress html apps col-xs-12 col-sm-4 col-md-3">
            <div class="recent-work-wrap">
              <img class="img-responsive" src="<?=base_url('assets/themes')?>/Company/images/portfolio/recent/item6.png" alt="">
              <div class="overlay">
                <div class="recent-work-inner">
                  <h3><a href="#">Business theme</a></h3>
                  <p>There are many variations of passages of Lorem Ipsum available, but the majority</p>
                  <a class="preview" href="<?=base_url('assets/themes')?>/Company/images/portfolio/full/item6.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                </div>
              </div>
            </div>
          </div>
          <!-/-/.portfolio-item-/->

          <div class="portfolio-item wordpress html col-xs-12 col-sm-4 col-md-3">
            <div class="recent-work-wrap">
              <img class="img-responsive" src="<?=base_url('assets/themes')?>/Company/images/portfolio/recent/item7.png" alt="">
              <div class="overlay">
                <div class="recent-work-inner">
                  <h3><a href="#">Business theme</a></h3>
                  <p>There are many variations of passages of Lorem Ipsum available, but the majority</p>
                  <a class="preview" href="<?=base_url('assets/themes')?>/Company/images/portfolio/full/item7.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                </div>
              </div>
            </div>
          </div>
          <!-/-/.portfolio-item-/->

          <div class="portfolio-item wordpress html bootstrap col-xs-12 col-sm-4 col-md-3">
            <div class="recent-work-wrap">
              <img class="img-responsive" src="<?=base_url('assets/themes')?>/Company/images/portfolio/recent/item8.png" alt="">
              <div class="overlay">
                <div class="recent-work-inner">
                  <h3><a href="#">Business theme</a></h3>
                  <p>There are many variations of passages of Lorem Ipsum available, but the majority</p>
                  <a class="preview" href="<?=base_url('assets/themes')?>/Company/images/portfolio/full/item8.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
                </div>
              </div>
            </div>
          </div>
          <!-/-/.portfolio-item-->
        </div>
      </div>
    </div>
  </section>
  <!--/#portfolio-item-->
