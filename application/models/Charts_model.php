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
		$query = $this->db->select('count('.$this->respondents.'.respondent_id) as total, title_of_trainig as columnName, sponsoring_agency as agency, city_name as city')
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
		$query = $this->db->select('count('.$this->respondents.'.respondent_id)  as total, name_of_organization as columnName, city_name as city')
			->from($this->organization)
			->join($this->respondents,$this->respondents.'.respondent_id = '.$this->organization.'.respondent_id','LEFT')
			->group_by('columnName')
			->order_by('city')
			->get();

			return $query->result();
			
	}
	public function totalgrowers($group_by='city_name')
	{
		# code...

		$query = $this->db->select('count(respondent_id) as total, city_name as city')
			->from($this->respondents)
			->group_by($group_by)
			->get();
			return $query->result();
	}

	public function ownership($group_by='land_ownership')
	{
		# code...

		$query = $this->db->select('count('.$this->respondents.'.respondent_id) as total, land_ownership as label')
			->from($this->respondents)
			->join($this->farm_profile,$this->farm_profile.'.respondent_id = '.$this->respondents.'.respondent_id','LEFT')
			->group_by($group_by)
			->get();
			return $query->result();
	}
	public function nooftress()
	{
		# code...
		$query = $this->db->select('count('.$this->respondents.'.respondent_id) as total, no_of_trees as label, city_name as city')
			->from($this->respondents)
			->join($this->farm_profile,$this->farm_profile.'.respondent_id = '.$this->respondents.'.respondent_id','LEFT')
			->group_by('label,city')
			->order_by('city')
			->get();
			return $query->result();
			
	}

	public function cacaovarieties()
	{
		# code...
		$query = $this->db->select('count('.$this->respondents.'.respondent_id) as total, cacao_varieties as label, city_name as city')
			->from($this->respondents)
			->join($this->farm_profile,$this->farm_profile.'.respondent_id = '.$this->respondents.'.respondent_id','LEFT')
			->group_by('label,city')
			->order_by('city')
			->get();
			return $query->result();
			
	}

	public function propagation($area='city')
	{
		# code...
		if($area == 'province'){
			return $this->propagationbyProvince();
		}
		$query = $this->db->select('count('.$this->respondents.'.respondent_id) as total, type_of_propagation as label, city_name as city')
			->from($this->respondents)
			->join($this->farm_profile ,$this->farm_profile.'.respondent_id = '.$this->respondents.'.respondent_id','LEFT')
			->group_by('label,city')
			->order_by('city')
			->get();
			return $query->result();
			
	}


	public function propagationbyProvince()
	{
		# code...

		$query = $this->db->select('count('.$this->respondents.'.respondent_id) as total, type_of_propagation as label')
			->from($this->respondents)
			->join($this->farm_profile ,$this->farm_profile.'.respondent_id = '.$this->respondents.'.respondent_id','LEFT')
			->group_by('label')
			->order_by('label')
			->get();
			return $query->result();
			
	}

	public function diseases($area='city')
	{
		# code...
		if($area != 'province'){
			return $this->diseasesbyProvince();	
		}

		$query = $this->db->select('count('.$this->respondents.'.respondent_id) as total, disease as label, city_name as city')
			->from($this->respondents)
			->join($this->pestdisease ,$this->pestdisease.'.respondent_id = '.$this->respondents.'.respondent_id','LEFT')
			->group_by('city')
			->order_by('city')
			->get();
			return $query->result();
			
	}


	public function diseasesbyProvince()
	{
		# code...

		$query = $this->db->select('count('.$this->respondents.'.respondent_id) as total, disease as label')
			->from($this->respondents)
			->join($this->pestdisease ,$this->pestdisease.'.respondent_id = '.$this->respondents.'.respondent_id','LEFT')
			->group_by('label')
			->order_by('label')
			->get();
			return $query->result();
			
	}


	public function diseasesControl()
	{
		# code...

		$query = $this->db->select('count('.$this->respondents.'.respondent_id) as total, disease_control as label')
			->from($this->respondents)
			->join($this->pestdisease ,$this->pestdisease.'.respondent_id = '.$this->respondents.'.respondent_id','LEFT')
			->where(array('disease_control != '=> NULL))
			->group_by('label')
			->order_by('label')
			->get();
			$result = $query->result();
			$pest_control = array(
				'chemical control',
				'mechanical control',
				'pruning and burning of infected plants/parts',
				'others');
				

        	$result2 =  str_explodeToChart($result);

            $GroupBylabel = groupArray($result2,'label',true);
           
            $array =  array();
            $sumArray =  sumArray($GroupBylabel,'total');


            foreach ($sumArray as $key) {
            	if(in_array(strtolower(trim($key['label'])), $pest_control)){
            		$array[]= $key;
            	}
            }
            return $array;

			
	}
	public function pests($area='city')
	{
		# code...

		if($area == 'province'){
			return $this->pestsProvince();
		}
		$query = $this->db->select('count('.$this->respondents.'.respondent_id) as total, pest as label, city_name as city')
			->from($this->respondents)
			->join($this->pestdisease ,$this->pestdisease.'.respondent_id = '.$this->respondents.'.respondent_id','LEFT')
			->group_by('label,city')
			->order_by('city')
			->get();
			return $query->result();
			
	}


	public function pestsProvince($type='bar')
	{
		# code...

		$query = $this->db->select('count('.$this->respondents.'.respondent_id) as total, pest as label')
			->from($this->respondents)
			->join($this->pestdisease ,$this->pestdisease.'.respondent_id = '.$this->respondents.'.respondent_id','LEFT')
			->group_by('label')
			->order_by('label')
			->get();
			return $query->result();
			
	}

	public function pestControl()
	{
		# code...

		$query = $this->db->select('count('.$this->respondents.'.respondent_id) as total, pest_control_management as label')
			->from($this->respondents)
			->join($this->pestdisease ,$this->pestdisease.'.respondent_id = '.$this->respondents.'.respondent_id','LEFT')
			->where(array('pest_control_management != '=> NULL))
			->group_by('label')
			->order_by('label')
			->get();
			$result = $query->result();
			$pest_control = array('sleeving','early harvesting','hand picking','sanitation','chemical control','others');
				

        	$result2 =  str_explodeToChart($result);

            $GroupBylabel = groupArray($result2,'label',true);
           
            $array =  array();
            $sumArray =  sumArray($GroupBylabel,'total');


            foreach ($sumArray as $key) {
            	if(in_array(strtolower(trim($key['label'])), $pest_control)){
            		$array[]= $key;
            	}
            }
            return $array;

			
	}

	public function cropping_system($type='bar')
	{
		# code...


		$query = $this->db->select('count('.$this->respondents.'.respondent_id) as total, cropping_system as label,city_name as city')
			->from($this->respondents)
			->join($this->production ,$this->production.'.respondent_id = '.$this->respondents.'.respondent_id','LEFT')
			->group_by('label,city')
			->order_by('city')
			->get();
			$result = $query->result();
			$pest_control = array('monocropping','inter-cropping','others');

        	$result2 =  str_explodeToChart($result,true);

            $GroupByCity = groupArray($result2,'city');

            $array =  array();
            foreach ($GroupByCity as $key => $value) {
            	# code...
            	$group = groupArray($value,'label');

            		$sumArray = array();
            	foreach ($group as $label => $total) {
            		# code...
            		$sum = array_sum($total);
            		$sumArray[] = array('label'=>$label,'total'=>$sum);
            	}
            	$array[$key] = $sumArray;
            }
            return $array;

			
	}

	public function fertilizer($type='bar')
	{
		# code...

		$query = $this->db->select('count('.$this->respondents.'.respondent_id) as total, fertilizer_applied as label, city_name as city')
			->from($this->respondents)
			->join($this->production ,$this->production.'.respondent_id = '.$this->respondents.'.respondent_id','LEFT')
			->group_by('city')
			->order_by('city')
			->get();
			return $query->result();
			
	}

	public function product_sold($type='bar')
	{
		# code...

		$query = $this->db->select('count('.$this->respondents.'.respondent_id) as total, product_sold_type as label')
			->from($this->respondents)
			->join($this->marketing ,$this->marketing.'.respondent_id = '.$this->respondents.'.respondent_id','LEFT')
			->group_by('label')
			->order_by('label')
			->get();
			return $query->result();
			
	}


	public function TraditionalQuery($type='bar')
	{
		# code...
$sql = sprintf("SELECT * FROM respondents");
$query = $this->db->query($sql);
			return $query->result_array();
			
	}
}