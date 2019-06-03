<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';


class Graphical extends BaseController
{
    /**
     * This is default constructor of the class
     */
    public function __construct()
    {
        parent::__construct();
        $this->load->model('user_model');
        $this->isLoggedIn();

        $this->load->model('charts_model','charts');
    }
    
    /**
     * This function used to load the first screen of the user
     */
    public function index()
    {

    }
    public function farmers($value='')
    {
        # code...

        $this->global['affiliation'] = $this->charts->affiliation();
        
        $this->global['organization'] = $this->charts->organization();
        $this->global['totalgrowers'] = $this->charts->totalgrowers();

        $this->global['pageTitle'] ='Farmers graphical reports';
        $this->loadViews("reports/graphical/farmer", $this->global, NULL , NULL);
    }
    public function farmprofile($value='')
    {
        # code...
    }
    public function pestdisease($value='')
    {
        # code...
    }
    public function production($value='')
    {
        # code...
    }
    public function postharvest($value='')
    {
        # code...
    }
    public function marketing($value='')
    {
        # code...
    }
    public function jsonreport($value='')
    {
        # code...

        $farmer['affiliation'] = $this->charts->affiliation();        
        $farmer['organization'] = $this->charts->organization();
        $farmer['totalgrowers'] = $this->charts->totalgrowers();
        $data = array();
        $data['farmer'] = $farmer;

        $farm['ownership'] = $this->charts->ownership();
        $farm['nooftress'] = $this->charts->nooftress();
        $data['farm'] = $farm;
        header("Content-type:application/json");
        echo json_encode($data);

    }



/* end */
}