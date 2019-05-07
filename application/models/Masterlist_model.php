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

		$this->db->insert($this->masterlist,$data);
		return $this->db->insert_id();

		}
		    return false;
	}
	public function listall($year=0)
	{
		# code...
		$this->db->select('masterlist_id as id, town_name,town_code,no_of_farmer,year')
				->from($this->masterlist);
		if ($year > 0) {
			# code...
			$this->db->where('year',$year);
		}
		$query = $this->db->order_by('town_name','ASC')->get();

		if($result = $query->result_array()){
			$obj = [];$i=0;
			foreach ($result as $key) {
				# code...
				$obj[$i] = $key;				
				$obj[$i]['no_of_respondent'] = $this->getTotalFarmer($key['town_code']);
				
				$i++;
			}
			return $obj;
		}
		
		return false;

	}
	
	public function getTotalFarmer($town_code=0)
	{
		# code...
		$query = $this->db->select('count(respondent_id) as no_of_respondent')
			->from($this->respondents)
			->where('city',$town_code)
			->get();
			if($result = $query->result()){
				return $result[0]->no_of_respondent;
			}
			return 0;
	}

	public function addTown($data='')
	{
		# code...
		if (is_array($data)) {
			# code...
		$this->db->insert($this->masterlist,$data);
		return $this->db->insert_id();
		}
		return false;
	}
	public function removetolist($data='')
	{
		# code...
		if (is_array($data)) {
			# code...
		return $this->db->delete($this->masterlist,$data);
		}
		return false;
	}
	



}