<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';
/**
 * Class : Login (LoginController)
 * Login class to control to authenticate user credentials and starts user's session.
 * @author : Kishor Mali
 * @version : 1.1
 * @since : 15 November 2016
 */
class Home extends BaseController
{
    /**
     * This is default constructor of the class
     */
    public function __construct()
    {
        parent::__construct();
        $this->webvisitors->run();
    }
    public function index($value='')
    {
    	$this->global['slider'] = true;
        $this->global['pageTitle'] = 'Bohol Cacao Integrated Information System : Welcome';
        
        $this->loadHome("home/welcome_c", $this->global, NULL , NULL,true);
    }
    public function about($value='')
    {
    	# code...

        $this->global['pageTitle'] = 'Bohol Cacao Farms : Welcome';
         $this->global['breadcrumb'] = 'About';
        $this->loadHome("home/about", $this->global, NULL , NULL, false);

    }
    public function contact($value='')
    {
        # code...
        $this->global['pageTitle'] = 'Bohol Cacao Farms : Welcome';
        $this->global['breadcrumb'] = 'Contact';
        $this->loadHome("home/contact", $this->global, NULL , NULL, false);

    }

    public function post($value='')
    {
        # code...
        $this->global['pageTitle'] = 'Bohol Cacao Farms : Welcome';
        $this->global['breadcrumb'] = 'Contact';
        $this->loadHome("home/posts", $this->global, NULL , NULL, false);

    }
    public function gallery($value='')
    {
        # code...

        $this->load->model('gallery_model','gallery');
        $this->global['images'] = $this->gallery->getimages();

        $this->global['pageTitle'] = 'Bohol Cacao Farms : Welcome';
        $this->global['breadcrumb'] = 'Contact';
        $this->loadHome("home/gallery", $this->global, NULL , NULL, false);

    }

    public function portfolio($value='')
    {
    	# code...
        $this->global['pageTitle'] = 'Bohol Cacao Farms : Welcome';
         $this->global['breadcrumb'] = 'Portfolio';
        $this->loadHome("home/portfolio", $this->global, NULL , NULL, false);

    }
    public function services($value='')
    {

        $this->global['pageTitle'] = 'Bohol Cacao Farms : Welcome';
         $this->global['breadcrumb'] = 'Portfolio';
        $this->loadHome("home/services", $this->global, NULL , NULL, false);
    }
    public function updates($value='')
    {

        $this->global['pageTitle'] = 'Bohol Cacao Farms : Updates';
         $this->global['breadcrumb'] = 'Portfolio';
        $this->loadHome("home/updates", $this->global, NULL , NULL, false);
    }
    public function error404($value='')
    {
       
        $this->global['pageTitle'] = 'Error 404 page not found';
         $this->global['breadcrumb'] = 'Error 404 page not found';
        $this->loadHome("404.php", $this->global, NULL , NULL, false);
    
    }
}