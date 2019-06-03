<?php 

/**
* 
*/
class Messages
{
	
	function __construct()
	{
		# code...
	}

    public function noinput()
    {
        return json_encode(array('status'=>false,'msg'=>'No input receive.'));
    }
    public function norespondent()
    {
        return json_encode(array('status'=>false,'msg'=>'No respondent found. Please input respondent information first'));
    }

    public function notexist()
    {
        return json_encode(array('status'=>false,'msg'=>'No respondent found.'));
    }
    public function exist()
    {
        return json_encode(array('status'=>true,'msg'=>'Respondent found.'));
    }
    public function ispublish($v=0)
    {
        # code...
        switch ($v) {
            case 1:
                # code...
            return 'Public';
                break;
            case 2:
                # code...
            return 'Private';
                break;
            
            case 3:
                # code...
            return 'Proccessing';
                break;
            default:
                # code...
            return 'No';
                break;
        }
    }
    public function limit($string='',$limit=200)
    {
        # code...
        $string = strip_tags($string);
            if (strlen($string) > $limit) {

                // truncate string
                $stringCut = substr($string, 0, $limit);
                $endPoint = strrpos($stringCut, ' ');

                //if the string doesn't contain any space then it will cut without word basis.
                $string = $endPoint? substr($stringCut, 0, $endPoint) : substr($stringCut, 0);
                
            }
            return $string;
    }
    public function cities($value='')
    {
       
     $cities =  array(
    0 => array('Albuquerque'),
    1 => array('Alicia'),
    2 => array('Anda'),
    3 => array('Antiquera'),
    4 => array('Baclayon'),
    5 => array('Balilihan'),
    6 => array('Batuan'),
    7 => array('Bien Unido'),
    8 => array('Bilar'),
    9 => array('Buenavista'),
    10 => array('Calape'),
    11 => array('Candijay'),
    12 => array('Carlos P. Garcia (Dao)'),
    13 => array('Carmen'),
    14 => array('Catigbian'),
    15 => array('Clarin'),
    16 => array('Corella'),
    17 => array('Cortez'),
    18 => array('Dagohoy'),
    19 => array('Danao'),
    20 => array('Dauis'),
    21 => array('Dimiao'),
    22 => array('Duero'),
    23 => array('Garcia Hernandez'),
    24 => array('Guindulman'),
    25 => array('Inabanga'),
    26 => array('Jagna'),
    27 => array('Jetafe'),
    28 => array('Lila'),
    29 => array('Loay'),
    30 => array('Loboc'),
    31 => array('Loon'),
    32 => array('Mabini'),
    33 => array('Maribujoc'),
    34 => array('Panglao'),
    35 => array('Pilar'),
    36 => array('Sagbayan'),
    37 => array('San Isidro'),
    38 => array('San Miguel'),
    39 => array('Sevilla'),
    40 => array('Sierra Bullones'),
    41 => array('Sikatuna'),
    42 => array('Tagbilaran City'),
    43 => array('Talibon'),
    44 => array('Trinidad'),
    45 => array('Tubigon'),
    46 => array('Ubay'),
    47 => array('Valencia'),
    );

     foreach ($cities as $key => $value) {
          
            $city[] = $value[0];
        }
        return $city;
    }
    public function excelcolumn($end_column = '', $first_letters = '') {
    $columns = array();
    $length = strlen($end_column);
    $letters = range('A', 'Z');

    // Iterate over 26 letters.
    foreach ($letters as $letter) {
      // Paste the $first_letters before the next.
      $column = $first_letters . $letter; 
      // Add the column to the final array.
      $columns[] = $column;
      // If it was the end column that was added, return the columns.
      if ($column == $end_column)
          return $columns;
    }

    // Add the column children.
    foreach ($columns as $column) {
      // Don't itterate if the $end_column was already set in a previous itteration.
      // Stop iterating if you've reached the maximum character length.
      if (!in_array($end_column, $columns) && strlen($column) < $length) {
          $new_columns = $this->excelcolumn($end_column, $column);
          // Merge the new columns which were created with the final columns array.
          $columns = array_merge($columns, $new_columns);
      }
    }

    return $columns;
    }

    function dateDifference($date_1, $differenceFormat = '%a' )
    {
    $datetime1 = date_create(date('y-m-d h:i:s',strtotime($date_1)));
    $datetime2 = date_create(date('y-m-d h:i:s'));
    
    $interval = date_diff($datetime1, $datetime2);
    $result = $interval->format($differenceFormat);
    if ($result <= 0) {
        # code...
        $result = $interval->format('%h');
        if ($result <=0) {
            # code...
            $result = $interval->format('%i Minute %s Seconds');
            return $result;
        }
        return $result.' hours';    
    }
    if ($result >=  364) {
        # code...
        return $interval->format('%y Year %m month');
    }
    return $result.' days';
    
    }
}