<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

class Pest_model extends CI_Model
{

	public function save($data='')
	{
		# code...
		$this->db->insert('pestdisease',$data);
		return $this->db->insert_id();
	}
}