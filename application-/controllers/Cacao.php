<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';

/**
 * Class : User (UserController)
 * User Class to control all user related operations.
 * @author : Kishor Mali
 * @version : 1.1
 * @since : 15 November 2016
 */
class Cacao extends BaseController
{
    /**
     * This is default constructor of the class
     */
    public function __construct()
    {
        parent::__construct();
        $this->load->model('user_model');
        $this->isLoggedIn();   
    }
    
    /**
     * This function used to load the first screen of the user
     */
    public function index()
    {
        $this->load->model('respondent_model','survey');
        $this->load->model('gallery_model','gallery');
        $this->global['total_survey'] = count($this->survey->getAll());
        $this->global['new_added_survey'] = count($this->survey->getbyyear(date('Y')));

        $this->global['pageTitle'] = 'Bohol Cacao Farms : Dashboard';
        $this->global['images'] = $this->gallery->getimages('pest');
        $this->loadViews("pest/list", $this->global, NULL , NULL);
    }
    public function variety($value='')
    {
    	# code...
        if ($this->input->post()) {
            # code...
            $varieties = $this->input->post('variety');
            exit();
        }
        $this->global['pageTitle'] = 'Bohol Cacao Farms : ';
        $this->loadViews("cacao/variety", $this->global, NULL , NULL);
    }
    public function clone($value='')
    {
    	# code...
        $this->global['pageTitle'] = 'Bohol Cacao Farms : ';
        $this->loadViews("cacao/clone", $this->global, NULL , NULL);
    }
    public function getimages()
    {
        # code...
        $this->load->model('gallery_model','gallery');
        echo json_encode($this->gallery->getimages('pest'));

    }

    public function saveimage()
    {
        # code...
        $this->load->model('gallery_model','gallery');
        $this->load->model('pest_model','pest');

        if($gallery_id = $this->gallery->save(array('title'=>$this->input->post('title'),'description'=>$this->input->post('description'),'type'=>'pest','link'=>$this->input->post('link'),'is_public'=>1,'unik_id'=>uniqid()))){

            if($pest = $this->pest->save(array('image_id'=>$gallery_id,'type'=>1))){
                //do nothing

                echo  json_encode(array('status'=> true,'msg'=> 'Image successfully uploaded.'));

            }else{

                echo  json_encode(array('status'=> false,'msg'=> 'Database insert error. Table pests'));
            }
        }else{
                echo  json_encode(array('status'=> false,'msg'=> 'Database insert error. Ttable gallery'));
        }

    }


        public function test($value='')
        {
            if($data = $this->webvisitors->read('2019-03-02',2018,2)){

                foreach ($data as $key) {
                    # code...
                    echo "$key <br/>";
                }
            }else{
                echo "No data to display";
            }
        }


















    ///
}