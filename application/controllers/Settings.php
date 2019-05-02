<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';

/**
 * Class : User (UserController)
 * User Class to control all user related operations.
 * @author : Kishor Mali
 * @version : 1.1
 * @since : 15 November 2016
 */
class Settings extends BaseController
{
    /**
     * This is default constructor of the class
     */
    public function __construct()
    {
        parent::__construct();
        $this->load->model('user_model');
        $this->isLoggedIn();   
    	$this->load->model('settings_model','settings');
    }
    
    /**
     * This function used to load the first screen of the user
     */
    public function index()
    {

        $this->global['pageTitle'] = 'Settings';
        $this->global['summernote'] =true;
        $this->global['siteSettings'] =true;
        $this->global['homeSettings'] = $this->settings->getbysection('home');
        $this->global['aboutSettings'] = $this->settings->getbysection('about');
        $this->global['servicesSettings'] = $this->settings->getbysection('services');
        $this->loadViews("settings/addSettings", $this->global, NULL , NULL);
    }
    public function save($type='',$parent='')
    {
    	# code...
    	$obj = (object) $this->input->post();
    	echo json_encode(array('status'=>true,'msg',$obj,$type));
    }
    public function add($value='')
    {
        # code...
        $obj = (object)$this->input->post();

        var_dump($obj);
    }





 //end
}