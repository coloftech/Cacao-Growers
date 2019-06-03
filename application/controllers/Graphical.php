<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';


class Graphical extends BaseController
{
    /**
     * This is default constructor of the class
     */
    public function __construct()
    {
        parent::__construct();
        $this->load->model('user_model');
        $this->isLoggedIn();

        $this->load->model('charts_model','charts');
    }
    
    /**
     * This function used to load the first screen of the user
     */
    public function index()
    {

    }
    public function farmers($value='')
    {
        # code...

        $this->global['affiliation'] = $this->charts->affiliation();
        
        $this->global['organization'] = $this->charts->organization();
        $this->global['totalgrowers'] = $this->charts->totalgrowers();
        $this->global['isCharts']= true;
        $this->global['pageTitle'] ='Farmers graphical reports';
        $this->loadViews("reports/graphical/farmer", $this->global, NULL , NULL);
    }
    public function farmprofile($value='')
    {
        # code...
        $this->global['isCharts']= true;
        $this->global['pageTitle'] ='Farmers graphical reports';
        $this->loadViews("reports/graphical/farmprofile", $this->global, NULL , NULL);

    }
    public function pestdisease($value='')
    {
        # code...
        $this->global['isCharts']= true;
        $this->global['pageTitle'] ='Pests & Diseases graphical reports';
        $this->loadViews("reports/graphical/pestsdiseases", $this->global, NULL , NULL);
    }
    public function production($value='')
    {
        # code...
        $this->global['isCharts']= true;
        $this->global['pageTitle'] ='Farmers production reports';
        $this->loadViews("reports/graphical/production", $this->global, NULL , NULL);
    }
    public function postharvest($value='')
    {
        # code...

        $this->global['isCharts']= true;
        $this->global['pageTitle'] ='Farmers harvest reports';
        $this->loadViews("reports/graphical/harvest", $this->global, NULL , NULL);
    }
    public function marketing($value='')
    {
        # code...
        $this->global['isCharts']= true;
        $this->global['pageTitle'] ='Farmers marketing reports';
        $this->loadViews("reports/graphical/marketing", $this->global, NULL , NULL);
    }
    public function jsonreport($value='')
    {
        # code...

       
        $data = array();

        
        $farmer['affiliation'] = $this->charts->affiliation();        
        $farmer['organization'] = $this->charts->organization();
        $farmer['totalgrowers'] = $this->charts->totalgrowers();
        $data['farmer'] = $farmer;

       $ownership = $this->charts->ownership();

        $object =  array();
        $null = 0;
        $isNull =  true;
        foreach ($ownership as $key) {
            # code...
            $total = $key->total;
            $label = $key->label;
            if(empty($label) || $label == null || $label == 'Undefined'){
                $null += $total;
                $isNull == true;
            }else{

            $object[] = (object) array(
                'total'=> $total,
                'label'=> $label
            );
            }


        }
        if($null > 0 || $isNull == true) {
            $object[] = (object) array(
                'total'=> $null,
                'label'=> 'Undefined'
            );
        }
        
        $farm['ownership'] = $object;//$this->charts->ownership();


        $farm['nooftrees'] = $this->charts->nooftress();


        $cacaovariety = $this->charts->cacaovarieties();


        $newvariety =  str_explodeToChart($cacaovariety,true);

        $GroupvarietyByCity = groupArray($newvariety,'city');

                $array = array();
            foreach ($GroupvarietyByCity as $keys => $values) {
                # code...

                   $n = groupArray($values,'label',true); 
                   $key = 'total';

                foreach ($n as $k => $v) {
                    # code...
                    $sum = array_sum(array_column($v,$key));
                    //echo $k.'='.$sum.' ';
                    $array[] = array(
                        'city'=>$keys,
                        'label'=> $k,
                        'total'=> $sum
                    );
                }

            }
        $farm['cacaovariety'] = $array;

        $propagation = $this->charts->propagation('city');
        $propagationbyprovince = $this->charts->propagation('province');
        
        $newpropagation = str_explodeToChart($propagation,true);

        $GroupBycity = groupArray($newpropagation,'city');
               $array = array();
            foreach ($GroupBycity as $keys => $values) {
                # code...
                   $n = groupArray($values,'label',true); 
                   $key = 'total';
                   $result = sumArray($n,$key);
                   $array[$keys] = asortArray($result,'label');
            }
           
        $newArray = array();
        foreach ($array as $city => $values) {
            # code...

        $d = searchArray('Sexual','label',$values);
        
            if($d == NULL){
                $values[] = array('label'=>'Sexual','total'=>0);
            }

            $newValues = array();
            foreach ($values as $key) {
                # code...
                if ($key['label'] == 'Undefined') {
                    # code...
                }else{
                    $newValues[] = $key;
                }
            }

                $newArray[$city] = asortArray($newValues,'label');
        }

        $farm['propagation'] =  $newArray;

        $data['farm'] = $farm;

        $pestdisease['disease'] = $this->charts->diseases();
        $pestsbycity = $this->charts->pests();        
        $pestsbyprovince = $this->charts->pests('province');
        
        $newpest =  str_explodeToChart($pestsbyprovince);

            $GroupBylabel = groupArray($newpest,'label');


            $sumpestbyprovince = array();

            foreach ($GroupBylabel as $key => $value) {
                # code...
                $sum = array_sum($value);
                $sumpestbyprovince[] = (object) array(
                    'label' =>$key,
                    'total'=>$sum);
            }


        $newpestbycity =  str_explodeToChart($pestsbycity,true);


            $GroupPestByCity = groupArray($newpestbycity,'city');

                $arrayPestsbycity = array();
            foreach ($GroupPestByCity as $keys => $values) {
                # code...

                   $n = groupArray($values,'label',true); 
                   $key = 'total';
                foreach ($n as $k => $v) {
                    # code...
                    $sum = array_sum(array_column($v,$key));
                    //echo $k.'='.$sum.' ';
                    $arrayPestsbycity[] = array(
                        'city'=>$keys,
                        'label'=> $k,
                        'total'=> $sum
                    );
                }

            }

        $pestdisease['pests'] = $sumpestbyprovince;
        $pestdisease['pestsbycity'] = $arrayPestsbycity;
        $pestdisease['pestControl'] = $this->charts->pestControl();

        $disease = $this->charts->diseases('city');
        $diseaseProvince = $this->charts->diseases('province');

        $newDisease =  str_explodeToChart($diseaseProvince);
     
            $GroupBylabel = groupArray($newDisease,'label');


            $sumdiseasebyprovince = array();

            foreach ($GroupBylabel as $key => $value) {
                # code...
                $sum = array_sum($value);
                $sumdiseasebyprovince[] = (object) array(
                    'label' =>$key,
                    'total'=>$sum);
            }
        $pestdisease['disease'] = $sumdiseasebyprovince;
        $pestdisease['diseaseControl'] = $this->charts->diseasesControl();


        $data['pestdisease'] = $pestdisease;

        $cropping_system = $this->charts->cropping_system();


        $newCropping = array();
       // print_r($cropping_system);

        foreach ($cropping_system as $key => $value) {
            $arr = array();
            $labels = array();
            foreach ($value as $label) {
                $labels[] = $label['label'];
            }
            if(!in_array('Inter-cropping', $labels))
            {
                $value[] = array('label'=>'Inter-cropping',
                    'total'=>0);
            }

            if(!in_array('Monocropping', $labels))
            {
                $value[] = array('label'=>'Monocropping',
                    'total'=>0);
            }
           $newCropping[$key] = $value;


        }
        $production['cropping_system'] =  $newCropping;


        $production['fertilizer'] = $this->charts->fertilizer();
        $data['production'] = $production;

        $marketing['product_sold'] = $this->charts->product_sold();

        $product_sold = $marketing['product_sold'];

        $new_product_sold =  array();
        foreach ($product_sold as $key) {
            # code...
            $citypests = explode(',', $key->label);
            foreach ($citypests as $label) {
                # code...
                if (empty($label)) {
                    # code...
                    $label = 'Undefined';
                }
                $new_product_sold[] = array(
                    'total'=> $key->total,
                    'label'=> trim($label)
                );
            }
        }

        $groupProduct = groupArray($new_product_sold,'label');

              $key = 'total';
              $sumProductSold = array();
                foreach ($groupProduct as $k => $v) {
                    # code...
                    $sum = array_sum($v);

                    $sumProductSold[] = array(
                        'label'=> $k,
                        'total'=> $sum
                    );
                }

              $marketing['product_sold'] = $sumProductSold;



        $data['marketing'] = $marketing;



        header("Content-type:application/json");
        echo json_encode($data);

    }




/* end */
}