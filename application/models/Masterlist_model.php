<?php 

/**
 * 
 */
class Masterlist_model extends CI_Model
{
	private $table = 'survey_masterlist';
	public function add($data='')
	{
		# code...
		if (is_array($data)) {

		return $this->db->insert($this->table,$data);

		}
		    return false;
	}
	public function listall($year=0)
	{
		# code...
		$this->db->select('town_name,town_code,no_of_farmer,year')
				->from($this->table);
		if ($year > 0) {
			# code...
			$this->db->where('year',$year);
		}
		$query = $this->db->order_by('town_name','ASC')->get();

		return $query->result_array();
		

	}



}