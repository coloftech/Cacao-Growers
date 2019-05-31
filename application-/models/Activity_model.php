<?php

/**
 * 
 */
class Activity_model extends CI_Model
{
	public function addToHistory($event='',$subject='',$publisher_id=0)
	{
		 $data = array(
                        'user_id'=>$this->session->userdata('userId'),
                        'event'=>$event,
                        'subject'=>$subject,
                        'publisher_id'=>$publisher_id,
                        'ip'=>$this->input->ip_address()
                    );

			$this->db->insert('user_activity',$data);
	}
}