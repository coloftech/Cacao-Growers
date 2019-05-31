<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';

/**
 * Class : User (UserController)
 * User Class to control all user related operations.
 * @author : Kishor Mali
 * @version : 1.1
 * @since : 15 November 2016
 */
class Mail extends BaseController
{
    private $userId;

	public function __construct()
    {
        parent::__construct();
        $this->load->model('user_model');
        $this->isLoggedIn();   
        $this->load->model('respondent_model','respondent');
        $this->load->library('CI_messaging','message'); 
        $this->userId = $this->session->userdata('userId');
    }

	public function index()
	{
        //send_new_message($sender_id, $recipients, $subject = '', $body = '', $priority = PRIORITY_NORMAL);

        $sender_id = 2;
        $recipients = 1;
        $subject = 'Test message '.uniqid();
        $body = 'hellow world, Welcome';
        //$this->message->send_new_message($sender_id,$recipients,$subject,$body,PRIORITY_NORMAL);
        $this->global['message_threads'] = $this->message->get_all_threads($this->userId);
        $this->global['pageTitle'] = 'Mail';
        
        $this->loadViews("mailbox/inbox", $this->global, NULL , NULL);

	}
	public function compose($value='')
	{
		# code...

        $this->global['pageTitle'] = 'Mail';
        
        $this->loadViews("mailbox/compose", $this->global, NULL , NULL);
	}  
    public function send($value='')
    {
        if($this->input->post()){
            $obj = (object)$this->input->post();
            var_dump($obj);
        }
    }
}
