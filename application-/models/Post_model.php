<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

class Post_model extends CI_Model
{

	public function save($data='')
	{
		# code...
		$this->db->insert('post',$data);
		return $this->db->insert_id();
	}
	public function getlist($value='')
	{
		# code...
		$query = $this->db->select('*')->from('post')->get();
		return $query->result();
	}
}