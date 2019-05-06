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
	public function getbysection($setting='',$is_active=false)
	{
		# code...
		$this->db->select('*')
					->from($this->table)
					->where('settings_parent',$setting);
					if ($is_active == true) {
						# code...
						$this->db->where('is_active',1);
					}
					$query = $this->db->order_by('position')
					->get();

					return $query->result();
	}

	public function lastposition($setting='')
	{
		# code...
		$query = $this->db->select('position')
					->from($this->table)
					->where('settings_parent',$setting)
					->order_by('position','desc')
					->limit('1')
					->get();

					if($result = $query->result()){
						return $result[0]->position;
					}
					return 0;
	}
	public function savedata($id='',$data=false)
	{
		# code...
		if (is_array($data)) {
			# code...
		$this->db->where('settings_id',$id);
		return $this->db->update($this->table,$data);
		}
		return false;
	}

	public function addsection($data=false)
	{
		# code...
		if (is_array($data)) {
			# code...
		return $this->db->insert($this->table,$data);
		}
		return false;
	}

}