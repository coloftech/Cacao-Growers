<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

class Charts_model extends CI_Model
{

	private $respondents = 'respondents';
	private $organization = 'respondents_organizations';
	private $affiliation= 'respondents_affiliation';
	private $farm_profile = 'respondents_farm_profile';
	private $production = 'respondents_production_management';
	private $harvest = 'respondents_post_harvest';
	private $marketing = 'respondents_marketing';
	private $pestdisease = 'respondents_pest_disease';
	public function affiliation($type='bar')
	{
		# code...
		$query = $this->db->select('count('.$this->respondents.'.respondent_id) as total, title_of_trainig as training, sponsoring_agency as agency, city_name as city')
			->from($this->affiliation)
			->join($this->respondents,$this->respondents.'.respondent_id = '.$this->affiliation.'.respondent_id','LEFT')
			->group_by('agency')
			->order_by('city')
			->get();

			return $query->result();

	}
		public function organization($type='bar')
	{
		# code...
		$query = $this->db->select('count(respondent_id) as total, name_of_organization as organization, city_name as city')
			->from($this->organization)
			->join($this->respondents,$this->respondents.'.respondent_id = '.$this->organization.'.respondent_id','LEFT')
			->group_by('city')
			->order_by('city')
			->get();

			return $query->result();
			
	}
	public function totalgrowers($group_by='city_name')
	{
		# code...

		$query = $this->db->select('count(respondent_id) as total, city_name as city, province')
			->from($this->respondents)
			->group_by($group_by)
			->get();
			return $query->result();
	}

	public function ownership($group_by='city_name')
	{
		# code...

		$query = $this->db->select('count('.$this->respondents.'.respondent_id) as total, city_name as city, province')
			->from($this->respondents)
			->group_by($group_by)
			->get();
			return $query->result();
	}

	public function nooftress()
	{
		# code...
		$query = $this->db->select('count('.$this->respondents.'.respondent_id) as total, no_of_trees, city_name as city')
			->from($this->respondents)
			->join($this->farm_profile,$this->farm_profile.'.respondent_id = '.$this->respondents.'.respondent_id','LEFT')
			->group_by('no_of_trees,city')
			->order_by('city')
			->get();
			return $query->result();
			
	}

	public function pests($type='bar')
	{
		# code...
		$query = $this->db->select('count(respondent_id) as total, pest, city_name as city')
			->from($this->respondents)
			->join($this->pestdisease,$this->pestdisease.'.respondent_id = '.$this->respondents.'.respondent_id','LEFT')
			->group_by('city')
			->order_by('city')
			->get();

			return $query->result();
			
	}
	public function diseases($type='bar')
	{
		# code...
		$query = $this->db->select('count(respondent_id) as total, disease, city_name as city')
			->from($this->respondents)
			->join($this->pestdisease,$this->pestdisease.'.respondent_id = '.$this->respondents.'.respondent_id','LEFT')
			->group_by('city')
			->order_by('city')
			->get();

			return $query->result();
			
	}
}