<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

class Gallery_model extends CI_Model
{

	public function save($data='')
	{
		# code...
		$this->db->insert('gallery',$data);
		return $this->db->insert_id();
	}
	public function getimages($type=false)
	{
		# code...

		if($type){

		$query =  $this->db->select('*')
				->from('gallery')
				->where('type',$type)
				->get();
				$result = $query->result();
				
				return $result;
		}

		$query =  $this->db->select('*')
				->from('gallery')
				->get();
				return $query->result();
	}

	
}