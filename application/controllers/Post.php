<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';

/**
 * Class : User (UserController)
 * User Class to control all user related operations.
 * @author : Kishor Mali
 * @version : 1.1
 * @since : 15 November 2016
 */
class Post extends BaseController
{
    /**
     * This is default constructor of the class
     */
    public function __construct()
    {
        parent::__construct();
        $this->load->model('user_model');
        $this->isLoggedIn();   
    	$this->load->model('respondent_model','respondent');
            $this->load->model('post_model','posts');
    }
    
    /**
     * This function used to load the first screen of the user
     */
    public function index()
    {
        $listpost = $this->posts->getlist();  
        $this->global['listpost'] = $listpost;
        $this->global['pageTitle'] = 'Post';
        
        $this->loadViews("news/index", $this->global, NULL , NULL);
    }
    public function add($value='')
    {
        if ($this->input->post()) {
            # code...
            $obj = (object)$this->input->post();
            $updates = array('title'=>$obj->title,'content'=>$obj->content,'is_publish'=>$obj->is_publish);
            if($result = $this->posts->save($updates)){

                echo json_encode(array('status'=>true,'msg'=>'Post added successfully'));
            }else{
                echo json_encode(array('status'=>false,'msg'=>'No post added. Unknown error occured'));
            } 
            exit();
            
        }
        
        $this->global['pageTitle'] = 'Post : add';
        
        $this->loadViews("news/add", $this->global, NULL , NULL);
    }

    public function saveimage()
    {
        # code...
        $this->load->model('gallery_model','gallery');

        if($gallery_id = $this->gallery->save(array('title'=>$this->input->post('title'),'description'=>$this->input->post('description'),'type'=>'pest','link'=>$this->input->post('link'),'is_public'=>1,'unik_id'=>uniqid(),'used'=>0))){


                echo  json_encode(array('status'=> true,'msg'=> 'Image successfully uploaded.','image_id'=>$gallery_id));

           
        }else{
                echo  json_encode(array('status'=> false,'msg'=> 'Database insert error. Ttable gallery'));
        }

    }
 }