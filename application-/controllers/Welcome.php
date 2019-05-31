<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		echo 'section 1 - '.htmlspecialchars('
<section id="main-slider" class="no-margin">
    <div class="carousel slide">
      <div class="carousel-inner">
        <div class="item active" style="background-image: url(
../public/images/cacao.jpg)">
          <div class="container">
            <div class="row slide-margin">
              <div class="col-sm-6">
                <div class="carousel-content">
                  <h3 class="animation animated-item-1">CACAO GROWERS DIRECTORY</h3>
                  <p class="animation animated-item-2">Bohol Cacao Industry Information System (BCIIS)</p>
                  <a class="btn-slide animation animated-item-3" href="#">Read More</a>
                </div>
              </div>

              <div class="col-sm-6 hidden-xs animation animated-item-4">
                <div class="slider-img">
                  <img src="../assets/themes/Company/images/slider/img3.png" class="img-responsive hidden">
                </div>
              </div>

            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
');

		echo "<br/><br/> &";
		//$this->load->view('welcome_message');
	}
}
