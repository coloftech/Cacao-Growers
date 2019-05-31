<?php if(!defined('BASEPATH')) exit('No direct script access allowed');


/**
 * Class : User (UserController)
 * User Class to control all user related operations.
 * @author : Kishor Mali
 * @version : 1.1
 * @since : 15 November 2016
 */

class Runcronjob extends CI_Controller
{
	
	function __construct()
	{
		# code...
		parent::__construct();
	}
	public function index($value='')
	{
		# code...
		if($data = $this->webvisitors->getcurrentdata()){
              
        $this->load->model('visitors_model','visits');

              foreach ($data as $arr) {
                  # code...
                $this->visits->save($arr);
              }



       }
	}
}