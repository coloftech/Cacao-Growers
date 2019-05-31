<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

class Reports_model extends CI_Model
{

	public function save($data='')
	{
		# code...

	}
	public function getbasic($columns='')
	{
		# code...
		if (is_array($columns)) {
			# code...
		$columns = implode(',', $columns);
		$query = $this->db->select("$columns")->from('respondents')->order_by('fullname')->get();
		return $query->result();

		}
		return false;
	}
	public function getdata($columns='',$city='',$year=0)
	{
		# code...
		if (is_array($columns)) {
			# code...

		$columns = implode(',', $columns);
		$query = $this->db->select("$columns")
				->from('respondents')
				->join('respondents_farm_profile','respondents_farm_profile.respondent_id = respondents.respondent_id')
				->join('respondents_production_management','respondents_production_management.respondent_id = respondents.respondent_id')
				->join('respondents_pest_disease','respondents_pest_disease.respondent_id = respondents.respondent_id')
				->join('respondents_post_harvest','respondents_post_harvest.respondent_id = respondents.respondent_id')
				->join('respondents_marketing','respondents_marketing.respondent_id = respondents.respondent_id')
				->order_by('fullname')
				->get();
		return $query->result();




		}
		return false;
	}
	public function getfilterdata($columns='',$city=0,$year=0)
	{
		# code...

		if (is_array($columns)) {
			
		$columns = implode(',', $columns);
			$this->db->select("$columns")
				->from('respondents')
				->join('respondents_farm_profile','respondents_farm_profile.respondent_id = respondents.respondent_id','LEFT')
				->join('respondents_production_management','respondents_production_management.respondent_id = respondents.respondent_id','LEFT')
				->join('respondents_pest_disease','respondents_pest_disease.respondent_id = respondents.respondent_id','LEFT')
				->join('respondents_post_harvest','respondents_post_harvest.respondent_id = respondents.respondent_id','LEFT')
				->join('respondents_marketing','respondents_marketing.respondent_id = respondents.respondent_id','LEFT');
				
				if ($year > 0) {
				# code...
					$year = (int)$year;
						$this->db->where('YEAR(respondents.date_of_survey)',$year);
					
				}

				if ($city > 0 ) {
				# code...
					$city = (int)$city;
					$this->db->where('city',$city);
					

				}
				$query = $this->db->order_by('fullname')->get();

				return $query->result();
		}
		return false;

	}

	public function graphnoTrees($value='')
	{
		# code...
		$query = $this->db->select('count(respondents.respondent_id) as total_farmers,no_of_trees')
				->from('respondents')
				->join('respondents_farm_profile','respondents_farm_profile.respondent_id = respondents.respondent_id')
				->group_by('no_of_trees')
				->where('YEAR(date_of_survey)',2019)
				->get();
				return $query->result();

	}

	public function graphSurveyData($value='')
	{
		# code...
		$query = $this->db->select('count(respondents.respondent_id) as total_farmers,no_of_trees')
				->from('respondents')
				->join('respondents_farm_profile','respondents_farm_profile.respondent_id = respondents.respondent_id')
				->group_by('no_of_trees')
				->where('YEAR(date_of_survey)',2019)
				->get();
				return $query->result();

	}
}