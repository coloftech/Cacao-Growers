
  <header>
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="navigation">
        <div class="container">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse.collapse">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
            <div class="navbar-brand">
              <a href="<?=site_url()?>" class="hidden"><h1>THE <span>CACAO</span> GROWERS</h1></a>
              <a href="<?=site_url()?>"><img class="logo" src="<?=base_url('public/img/logo.png')?>"></a>
            </div>
          </div>

          <div class="navbar-collapse collapse">
            <div class="menu">
              <ul class="nav nav-tabs" role="tablist">
                <li role="presentation"><a href="<?=site_url()?>" class="<?=isset($activemenu) ? $activemenu == 'home' ? 'active': '' : 'active' ?>">Home</a></li>
                <li role="presentation"><a href="<?=site_url('home/about')?>"  class="<?=isset($activemenu) ? $activemenu == 'about' ? 'active': '' : '' ?>">About Us</a></li>
                <li role="presentation"><a href="<?=site_url('home/services')?>"  class="<?=isset($activemenu) ? $activemenu == 'services' ? 'active': '' : '' ?>">Services</a></li>
                <li role="presentation"><a href="<?=site_url('home/gallery')?>"  class="<?=isset($activemenu) ? $activemenu == 'gallery' ? 'active': '' : '' ?>">Gallery</a></li>
                <li role="presentation"><a href="<?=site_url('home/blog')?>"  class="<?=isset($activemenu) ? $activemenu == 'blog' ? 'active': '' : '' ?>">Blog</a></li>
                <li role="presentation"><a href="<?=site_url('home/contact')?>"  class="<?=isset($activemenu) ? $activemenu == 'contact' ? 'active': '' : '' ?>">Contact</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </nav>
  </header>
