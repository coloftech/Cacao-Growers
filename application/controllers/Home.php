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
        $this->load->model('settings_model','settings');
        $this->load->model('post_model','posts');
    }
    public function index($value='')
    {
        $this->global['activemenu'] = 'home';
    	$this->global['slider'] = true;
        $this->global['pageTitle'] = 'Bohol Cacao Integrated Information System : Welcome';
        
        $this->global['homeSettings'] = $this->settings->getbysection('home',true);
        $this->global['listPosts'] = $this->posts->getlist();
        
        $this->loadHome("home/index", $this->global, NULL , NULL,true);
    }
    public function about($value='')
    {
    	# code...

        $this->global['homeSettings'] = $this->settings->getbysection('about',true);
        $this->global['activemenu'] = 'about';
        $this->global['pageTitle'] = 'Bohol Cacao Farms : Welcome';
         $this->global['breadcrumb'] = 'About';
        $this->loadHome("home/about", $this->global, NULL , NULL, false);

    }
    public function contact($value='')
    {
        # code...

        $this->global['activemenu'] = 'contact';
        $this->global['pageTitle'] = 'Bohol Cacao Farms : Welcome';
        $this->global['breadcrumb'] = 'Contact';
        $this->loadHome("home/contact", $this->global, NULL , NULL, false);

    }

    public function blog($value='')
    {
        # code...

        $this->global['activemenu'] = 'blog';
        $this->global['pageTitle'] = 'Bohol Cacao Farms : Welcome';
        $this->global['breadcrumb'] = 'Contact';
        $this->loadHome("home/posts", $this->global, NULL , NULL, false);

    }
    public function gallery($value='')
    {
        # code...


        $this->global['activemenu'] = 'gallery';
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

        $this->global['homeSettings'] = $this->settings->getbysection('services',true);
        $this->global['activemenu'] = 'services';

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