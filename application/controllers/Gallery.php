<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';

/**
 * Class : User (UserController)
 * User Class to control all user related operations.
 * @author : Kishor Mali
 * @version : 1.1
 * @since : 15 November 2016
 */
class Gallery extends BaseController
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
    }
    
    /**
     * This function used to load the first screen of the user
     */
    public function index()
    {
        $this->global['pageTitle'] = 'Gallery';
        
        $this->loadViews("gallery/upload-2", $this->global, NULL , NULL);
    }
    public function add($value='')
    {
        if ($this->input->post()) {
            # code...
            $obj = (object)$this->input->post();
            $this->load->model('post_model','posts');
            $updates = array('title'=>$obj->title,'content'=>base64_encode($obj->content),'is_publish'=>$obj->is_publish);
            $result = $this->posts->save($updates);
            var_dump($result);
            exit();
        }
        
        $this->global['pageTitle'] = 'News : add';
        
        $this->loadViews("gallery/add", $this->global, NULL , NULL);
    }
    public function upload($value='')
    {
        # code...
        //var_dump($this->input->post());
        $files = (object) $_FILES['croppedImage'];
        $newfilename = 'img-'.date('Y-m-d').'-'.uniqid().'.png';       
        if(move_uploaded_file($files->tmp_name, UPLOADPATH.'images/'.$newfilename)){

            echo json_encode(array('status'=>true,'msg'=>'File upload successfully.','url'=>site_url('gallery/r/'.$newfilename) ) );

        }else{
            echo json_encode(array('status'=>false,'msg'=>'Upload failed!'));
        }
    }
        public function r($image=false)
    {
        # code...
        if($image){
            $image = urldecode($image);
            echo $this->showimage($image);
        }else{
            echo $this->showimage('default-img.jpg');
        }
    }
    public function showimage($image='')
    {
        # code...
        //$image="path-to-your-image"; //this can also be a url
        $filepath = UPLOADPATH.'images/'.$image;
        if(!file_exists($filepath)){
            $filepath = UPLOADPATH.'uploads/'.$image;
            if(!file_exists($filepath)){
                
            $filepath = UPLOADPATH.'images/default-img.jpg';
            }
        }
        $ctype = mime_content_type($filepath);
        

        header('Content-type: ' . $ctype);
        $image = file_get_contents($filepath);
        return $image;
    }

 }