<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';

/**
 * Class : User (UserController)
 * User Class to control all user related operations.
 * @author : Kishor Mali
 * @version : 1.1
 * @since : 15 November 2016
 */
class Diseases extends BaseController
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
        $this->global['images'] = $this->gallery->getimages('diseases');
        $this->loadViews("diseases/list", $this->global, NULL , NULL);
    }
    public function getimages()
    {
        # code...
        $this->load->model('gallery_model','gallery');
        echo json_encode($this->gallery->getimages('diseases'));

    }

    public function saveimage()
    {
        # code...
        $this->load->model('gallery_model','gallery');
        $this->load->model('pest_model','diseases');

        if($gallery_id = $this->gallery->save(array('title'=>$this->input->post('title'),'description'=>$this->input->post('description'),'type'=>'diseases','link'=>$this->input->post('link'),'is_public'=>1,'unik_id'=>uniqid()))){

            if($diseases = $this->diseases->save(array('image_id'=>$gallery_id))){
                //do nothing

                echo  json_encode(array('status'=> true,'msg'=> 'Image successfully uploaded.'));

            }else{

                echo  json_encode(array('status'=> false,'msg'=> 'Database insert error. Table diseases'));
            }
        }else{
                echo  json_encode(array('status'=> false,'msg'=> 'Database insert error. Ttable gallery'));
        }

    }





















    ///
}