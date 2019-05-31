<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';

/**
 * Class : User (UserController)
 * User Class to control all user related operations.
 * @author : Kishor Mali
 * @version : 1.1
 * @since : 15 November 2016
 */
/**
 * 
 */
class Visitors extends BaseController
{
	
	public function __construct()
    {
        parent::__construct();
        $this->load->model('user_model');
        $this->isLoggedIn();   
        $this->load->model('visitors_model','visits');
    }
    public function index($value='')
    {
    	    if($data = $this->webvisitors->read()){

                foreach ($data as $key) {
                    # code...
                    echo "$key <br/>";
                }
            }else{
                echo "No data to display";
            }
    }
    public function updatedb($value='')
    {
        // getcurrentdata($date,$y,$m)
            if($data = $this->webvisitors->getcurrentdata()){
              
              foreach ($data as $arr) {
                  # code...
                $this->visits->save($arr);
              }



            }
    }
    public function getall($value='')
    {
        # code...
        $visits = $this->visits->getgroupbycountry();

        foreach ($visits as $key) {
            # code...
            print_r($key);
            echo "<br/>";
        }
    }

}