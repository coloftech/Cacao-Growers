<?php 

/**
 * 
 */
class Masterlist_model extends CI_Model
{
	private $masterlist = 'survey_masterlist';
	private $respondents = 'respondents';
	public function add($data='')
	{
		# code...
		if (is_array($data)) {

		return $this->db->insert($this->masterlist,$data);

		}
		    return false;
	}
	public function listall($year=0)
	{
		# code...
		$this->db->select('town_name,town_code,no_of_farmer,year')
				->from($this->masterlist);
		if ($year > 0) {
			# code...
			$this->db->where('year',$year);
		}
		$query = $this->db->order_by('town_name','ASC')->get();

		return $query->result_array();


	}



}