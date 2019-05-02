<?php 

/**
 * 
 */
class Settings_model extends CI_Model
{
	private $table = 'site_settings';
	public function add($data='')
	{
		# code...
		if (is_array($data)) {

		return $this->db->insert($this->table,$data);

		}
		    return false;
	}
	public function getValue($name='',$parent='')
	{
		# code...
		$query = $this->db
			->select('settings_value')
			->from($this->table)
			->where('settings_parent',$parent)
			->where('settings_name',$name)
			->where('is_active',1)
			->get();
		if($result = $query->result())
		{
			return $result[0]->settings_value;
		}
			return false;
	}
	public function getbysection($setting='')
	{
		# code...
		$query = $this->db->select('*')
					->from($this->table)
					->where('settings_parent',$setting)
					->order_by('position')
					->get();

					return $query->result();
	}

}