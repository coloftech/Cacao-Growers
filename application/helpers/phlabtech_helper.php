<?php if(!defined('BASEPATH')) exit('No direct script access allowed');


if(!function_exists('groupArray'))
{
   
	function groupArray($arr, $group, $preserveGroupKey = false, $preserveSubArrays = false) {
    $temp = array();
    foreach($arr as $key => $value) {
        $groupValue = $value[$group];
        if(!$preserveGroupKey)
        {
            unset($arr[$key][$group]);
        }
        if(!array_key_exists($groupValue, $temp)) {
            $temp[$groupValue] = array();
        }

        if(!$preserveSubArrays){
            $data = count($arr[$key]) == 1? array_pop($arr[$key]) : $arr[$key];
        } else {
            $data = $arr[$key];
        }
        $temp[$groupValue][] = $data;
    }
    return $temp;
	}
}

if(!function_exists('sumArray'))
{
	function sumArray($arr,$key,$label='label',$other=""){
				$array = array();

                foreach ($arr as $k => $v) {
                    # code...
                    $sum = array_sum(array_column($v,$key));
                    //echo $k.'='.$sum.' ';
                    $array[] = array(
                    	"$label"=>$k,
                    	'total'=>$sum
                );
                }
                return $array;
	}
}

if(!function_exists('asortArray'))
{
	function asortArray($arr,$orderby){
	$sortArray = array(); 

	foreach($arr as $label){ 
	    foreach($label as $key=>$value){ 
	        if(!isset($sortArray[$key])){ 
	            $sortArray[$key] = array(); 
	        } 
	        $sortArray[$key][] = $value; 
	    } 
	} 

 //change this to whatever key you want from the array 

	array_multisort($sortArray[$orderby],SORT_ASC,$arr); 
	return $arr;

	}
}
if(!function_exists('searchArray'))
{
function searchArray($value, $key, $array) {
   foreach ($array as $k => $val) {
       if (trim($val[$key]) == trim($value)) {
           return $k;
       }
   }
   return false;
}
}

if(!function_exists('str_explode'))
{
function str_explodeToChart($array,$city = false) {
   
        $newArray =  array();
        foreach ($array as $key => $value) {
            # code...
            $labels = explode(',', $value->label);
            foreach ($labels as $label) {
                # code...
                if (empty($label)) {
                    # code...
                    $label = 'Undefined';
                }
                if ($city) {
                	# code...
		                $newArray[] = array(
		                    'total'=> $value->total,
		                    'label'=> trim($label),
		                    'city' => $value->city
		                );
	                }else{

		                $newArray[] = array(
		                    'total'=> $value->total,
		                    'label'=> trim($label)
                		);
	                }
            }
        }

        return $newArray;

		}
}