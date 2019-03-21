<?php if(!defined('BASEPATH')) exit('No direct script access allowed');
/**
* 
*/
class Respondent_model extends CI_Model
{
	private $tbl_resp = 'respondents';
	private $tbl_org = 'respondents_organizations';
	private $tbl_aff= 'respondents_affiliation';
	private $tbl_farm = 'respondents_farm_profile';
	private $tbl_production = 'respondents_production_management';
	private $tbl_harvest = 'respondents_post_harvest';
	private $tbl_marketing = 'respondents_marketing';
	private $tbl_pest = 'respondents_pest_disease';
	function __construct()
	{
		# code...
		parent::__construct();
	}
	public function getall($value='')
	{
		# code...
		$query= $this->db->select('*')
		->from($this->tbl_resp)
		->get();
		return $query->result();
	}
	public function getbydate($date='',$end_date=false)
	{
		# code...
		if ($end_date) {

			$query =  $this->db->select('*')
					->from($this->tbl_resp)
					->where('DATE(date_added) >=',$date)
					->where('DATE(date_added) <=',$end_date)
					->order_by('fname')
					->get();

		}else{
			$query =  $this->db->select('*')
					->from($this->tbl_resp)
					->where('DATE(date_added)',$date)
					->order_by('fname')
					->get();
			return $query->result();
		}
	}

	public function getbyyear($year=2019)
	{
		# code...

		$query= $this->db->select('*')
		->from($this->tbl_resp)
		->where('YEAR(date_added)',$year)
		->get();
		return $query->result();
	}
	public function searchrespondent($data='')
	{
		# code...
		if (is_array($data)) {
			# code...

		$query = $this->db->select('*')
					->from($this->tbl_resp)
					->where('fname',$data['fname'])
					->where('lname',$data['lname'])
					->get();
		return $query->result();
		}
		return false;
	}

	public function getinfo($respondent_id=0,$tbl='')
	{
		if ($respondent_id > 0) {

				$query = $this->db->select('*')
				->from($this->$tbl)
				->where('respondent_id',$respondent_id)
				->get();
				return $query->result();
		}return false;

	}
	public function savebasic($data='',$respondent_id=0)
	{
		# code...
		if ($respondent_id == 0) {
			# code...

		$this->db->insert($this->tbl_resp,$data);
		$id = $this->db->insert_id();

                    $this->load->model('activity_model','activity');                   
                    $this->activity->addToHistory('respondentsAdd','Add basic information',$id);
		return $id;
		}else{

                    $this->load->model('activity_model','activity');                   
                    $this->activity->addToHistory('respondentsEdit','Edit basic information',$id); 
			$this->db->where('respondent_id',$respondent_id);
			return $this->db->update($this->tbl_resp,$data);
		}
	}

	public function saveorganization($data='')
	{
		# code...

		$this->db->insert_batch($this->tbl_org,$data);

	}

	public function saveaffiliation($data='')
	{
		# code...
		$this->db->insert_batch($this->tbl_aff,$data);

	}

	public function savefarm($data='')
	{
		# code..
		if(!$this->is_exist($data['respondent_id'],$this->tbl_farm)){

			return $this->db->insert($this->tbl_farm,$data);
		}else{
			$this->db->where('respondent_id',$data['respondent_id']);
			return $this->db->update($this->tbl_farm,$data);
		}
	}

	public function saveproduction($data='')
	{
		# code..
		if(!$this->is_exist($data['respondent_id'],$this->tbl_production)){

			return $this->db->insert($this->tbl_production,$data);
		}else{
			$this->db->where('respondent_id',$data['respondent_id']);
			return $this->db->update($this->tbl_production,$data);
		}
	}

	public function savepest($data='')
	{
		# code..
		if(!$this->is_exist($data['respondent_id'],$this->tbl_pest)){

			return $this->db->insert($this->tbl_pest,$data);
		}else{
			$this->db->where('respondent_id',$data['respondent_id']);
			return $this->db->update($this->tbl_pest,$data);
		}
	}

	public function saveharvest($data='')
	{
		# code..
		if(!$this->is_exist($data['respondent_id'],$this->tbl_harvest)){

			return $this->db->insert($this->tbl_harvest,$data);
		}else{
			$this->db->where('respondent_id',$data['respondent_id']);
			return $this->db->update($this->tbl_harvest,$data);
		}
	}

	public function savemarketing($data='')
	{
		# code..
		if(!$this->is_exist($data['respondent_id'],$this->tbl_marketing)){

			return $this->db->insert($this->tbl_marketing,$data);
		}else{
			$this->db->where('respondent_id',$data['respondent_id']);
			return $this->db->update($this->tbl_marketing,$data);
		}
	}
	public function is_exist($respondent_id=0,$tbl='')
	{
		# code...
		$query = $this->db->select('*')
					->from($tbl)
					->where('respondent_id',$respondent_id)
					->get();
		return $query->result();
	}

}