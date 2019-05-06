<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';

/**
 * Class : User (UserController)
 * User Class to control all user related operations.
 * @author : Kishor Mali
 * @version : 1.1
 * @since : 15 November 2016
 */
class Asurvey extends BaseController
{
    /**
     * This is default constructor of the class
     */
    private $noError = false;
    public function __construct()
    {
        parent::__construct();
        $this->load->model('user_model');
        $this->isLoggedIn();   
    	$this->load->model('respondent_model','respondent');
    }
    
    /**
     * This function used to load the first screen of the user
     */
    public function index()
    {   

        $this->global['cities'] = $this->messages->cities();
        
        $this->global['list_all'] = $this->respondent->getall();
        $this->global['pageTitle'] = 'Bohol Cacao Farms : Survey';
        
        $this->loadViews("survey/index", $this->global, NULL , NULL);
    }
    public function add($value='')
    {
        $this->global['token']= uniqid(rand(), true);
        $this->global['pageTitle'] = 'Bohol Cacao Industry Information System : Survey - add survey';
        
        $this->loadViews("survey/questionnaires/question", $this->global, NULL , NULL);

    }

    public function edit($respondent_id=0)
    {

        $this->global['basicinfo'] = $this->respondent->getinfo($respondent_id,'tbl_resp');
        $this->global['organizations'] = $this->respondent->getinfo($respondent_id,'tbl_org');
        $this->global['affiliations'] = $this->respondent->getinfo($respondent_id,'tbl_aff');
        $this->global['pestsdiseases'] = $this->respondent->getinfo($respondent_id,'tbl_pest');
        $this->global['productions'] = $this->respondent->getinfo($respondent_id,'tbl_production');
        $this->global['harvests'] = $this->respondent->getinfo($respondent_id,'tbl_harvest');
        $this->global['marketing'] = $this->respondent->getinfo($respondent_id,'tbl_marketing');
        $this->global['farmprofile'] = $this->respondent->getinfo($respondent_id,'tbl_farm');

        $this->global['respondent_id'] = $respondent_id;

        $this->global['token']= uniqid(rand(), true);
        $this->global['pageTitle'] = 'Bohol Cacao Industry Information System : Survey - add survey';
        
        $this->loadViews("survey/questionnaires/newEdit/equestion", $this->global, NULL , NULL);

    }











    public function save($respondent_id=0)
    {
    	# code...

    	$post = $this->input->post();
        $farm = json_decode($post['farm'],true);
        $personal = json_decode($post['personal'],true);
        $pests = json_decode($post['pests'],true);
        $production = json_decode($post['production'],true);
        $harvest = json_decode($post['harvest'],true);
        $marketing = json_decode($post['marketing'],true);
        $token = uniqid(rand(), true);
            $this->db->trans_start();
        $respondent_id = $this->personalinfo($personal,$token,$respondent_id);
        
        if ($respondent_id > 0) {
            # code...
             $result_1 = $this->farm($farm[0],$respondent_id);
             $result_3 = $this->pests($pests[0],$respondent_id);
             $result_2 = $this->production($production[0],$respondent_id);
             $result_4 = $this->harvest($harvest[0],$respondent_id);
             $result_5 = $this->marketing($marketing[0],$respondent_id);
             if($this->db->trans_status() === FALSE || !$result_1 || !$result_2 || !$result_3 || !$result_4 || !$result_5 || !$this->noError){

                   $this->db->trans_rollback();
                    echo json_encode(array('status'=>false,'msg'=>'System encounter an error. Try again! If this error continue, Please contact the administrator.')); 
                    exit();
                }else{

                   $this->db->trans_complete();
                    echo json_encode(array('status'=>true,'msg'=>'Respondents successful added.')); 
                    exit();
                }
        }

                echo json_encode(array('status'=>false,'msg'=>'Respondent cannot be added.')); 
                exit();
    }

    public function personalinfo($post='',$token='',$respondent_id=0)
    {
        # code...
        


             $obj = (object)$post[0];
             $obj1 = (object)$post[1];


             $data = array(
            'fname'=>ucwords(strtolower($obj->fname)),
            'lname'=>ucwords(strtolower($obj->lname)),
            'age'=>$obj->age,
            'date_of_survey'=>$obj->date_of_survey,
            'civilstatus'=>$obj->civilstatus,
            'education'=>$obj->education,
            'familysize'=>$obj->familysize,
            'annualincome'=>$obj->annualincome,
            'address'=>$obj->address,
            'barangay'=>$obj1->barangay,
            'city'=>$obj1->city,
            'city_name'=>$obj1->cityname,
            'added_by'=>$this->vendorId,
            'updated_by'=>$this->vendorId,
            'token'=>$token
            );
             if ($respondent_id == 0) {
                 # code...
             $respondent_id = $this->respondent->savebasic($data,$respondent_id,$token);

             }else{

                $result = $this->respondent->savebasic($data,$respondent_id,$token);
                
             }

             if (isset($obj->nameoforganization)) {
                   $organizations = array();
                $i=0;
                foreach ($obj->nameoforganization as $org) {
                    # code...
                    if (!empty($org)) {
                        # code...
                        $organizations[$i] = array(
                        'respondent_id'=>$respondent_id,
                        'name_of_organization'=>$org,
                        'position'=>$obj->position[$i],
                        'years_in_membership'=>$obj->yearsmembership[$i],
                        'projects_of_organization'=>$obj->programsforganization[$i]
                        );
                    $i++;
                    }
                    
                }
                if (!empty($organizations)) {
                    $this->respondent->saveorganization($organizations);
                }

            }
            if(isset($obj->trainingtitle) && is_array($obj->trainingtitle)){

            $affiliations = array();
            $i=0;
            foreach ($obj->trainingtitle as $training) {
                # code...

                    if (!empty($training)) {
                    $affiliations[$i] = array(
                        'respondent_id'=>$respondent_id,
                        'title_of_trainig'=>$training,
                        'date_conducted'=>$obj->trainingdated[$i],
                        'venue'=>$obj->trainingvenue[$i],
                        'sponsoring_agency'=>$obj->trainingsponsor[$i]
                        );
                    $i++;
                    }
            }
             if (!empty($affiliations)) {
                $this->respondent->saveaffiliation($affiliations);
                }

            }
            return $respondent_id;

    }


    public function farm($post,$respondent_id=0)
    {


        $Obj = (object)$post;

        if(isset($Obj->land_ownership)){
            $land_ownership = implode(',',$Obj->land_ownership);
        }else{
            $land_ownership='Undefined';
        }

        if(isset($Obj->CacaoClones)){
            $clones = implode(',',$Obj->CacaoClones);
        }else{
            $clones='';
        }

        if(isset($Obj->propagationtype)){
            $propagationtype = implode(',',$Obj->propagationtype);
        }else{
            $propagationtype='';
        }
        if(isset($Obj->Cacaovarieties)){
            $Cacaovarieties = implode(',',$Obj->Cacaovarieties);
        }else{
            $Cacaovarieties='';
        }


        $farms = array(
            'respondent_id'=>$respondent_id,
            'cacao_clone_planted'=> $clones,
            'cacao_varieties'=>$Cacaovarieties,
            'farming_experience_production_organic'=>isset($Obj->ExperienceOrganic) ? $Obj->ExperienceOrganic : '',
            'land_ownership'=>$land_ownership,
            'farm_size'=>isset($Obj->FarmSize) ? $Obj->FarmSize : '',
            'farming_experience_production'=>isset($Obj->FarmingExperience) ? $Obj->FarmingExperience : '',
            'no_of_trees'=>!isset($Obj->Notrees) ? '' : $Obj->Notrees,
            'planting_distance'=>$Obj->planting_distance,
            'source_of_scions'=>$Obj->Sourceofscions,
            'source_of_seedlings'=>$Obj->Sourceofseedlings,
            'source_of_seeds'=>$Obj->Sourceofseeds,
            'source_of_stocks'=>$Obj->Sourceofstocks,
            'farming_category'=>!isset($Obj->cacaoCategory) ? '' : $Obj->cacaoCategory,
            'farming_status'=>isset($Obj->cacaoStatus) ? $Obj->cacaoStatus : '',
            'stablish_nursery'=> $Obj->nursery,
            'cacao_clone_planted_others'=>$Obj->othersCacaoClones,
            'stablish_nursery_yes'=>$Obj->othersnursery,
            'type_of_propagation'=>$propagationtype,
            'sell_seedling'=>!isset($Obj->sellSeedlings) ? '' : $Obj->sellSeedlings,
            'sell_seedling_yes'=>$Obj->otherssellSeedlings
            );
        return $this->respondent->savefarm($farms);

        

    }

    public function pests($post,$respondent_id=0)
    {

        $Obj = (object)$post;

        if(isset($Obj->pest)){

            $pest = implode(',', $Obj->pest);
        }else{
            $pest='';
        }

        if(isset($Obj->PestControl)){
            $PestControl = implode(',',$Obj->PestControl);
        }else{
            $PestControl='';
        }

        if(isset($Obj->Disease)){
            $Disease = implode(',',$Obj->Disease);
        }else{
            $Disease='';
        }

        if(isset($Obj->diseaseControl)){
            $diseaseControl = implode(',',$Obj->diseaseControl);
        }else{
            $diseaseControl='';
        }
        $pests = array(
            'respondent_id'=>$respondent_id,
            'pest'=>$pest,
            'pest_control_management'=>$PestControl,
            'pest_control_sanitation'=>$Obj->otherssanitation,
            'pest_control_chemical_control'=>$Obj->otherschemicalcontrol,
            'disease'=>$Disease,
            'disease_others'=>$Obj->otherdisease,
            'disease_control'=>$diseaseControl,
            'disease_control_chemical'=>$Obj->chemicalcontrol,
            );  
            return $this->respondent->savepest($pests); 
        

    }

    public function production($post,$respondent_id=0)
    {

        $Obj = (object)$post;


        if(isset($Obj->cropingsystem)){
            $cropingsystem = implode(',',$Obj->cropingsystem);
        }else{
            $cropingsystem='';
        }
        
        if(isset($Obj->AssociatedCrops)){
            $AssociatedCrops = implode(',',$Obj->AssociatedCrops);
        }else{
            $AssociatedCrops='';
        }


        if(isset($Obj->Fertilizer)){            
            $Fertilizer = implode(',',$Obj->Fertilizer);
        }else{
            $Fertilizer='';
        }            
            $appFrequency = $Obj->appFrequency;

            if ($Obj->practicepruning == 'Yes') {
                # code...
                $practicepruning_yes =  implode(',',$Obj->practicepruning_yes);

            }else{
                $practicepruning_yes = '';
            }
        
        $production = array(
            'respondent_id'=>$respondent_id,
            'climate_factor_rainfall'=>$Obj->rainfall,
            'climate_factor_temperature'=>$Obj->temperature,
            'climate_factor_elevation'=>$Obj->elevation,
            'climate_factor_slope'=>$Obj->slope,
            'edaphic_factors_soil_type'=>$Obj->soil_type,
            'edaphic_factors_soil_depth'=>$Obj->soil_depth,
            'edaphic_factors_soil_texture'=>$Obj->soil_texture,
            'edaphic_factors_soil_structure'=>$Obj->soil_structure,
            'cropping_system'=>$cropingsystem,
            'cropping_system_others'=>$Obj->croping_others,
            'associated_crops'=>$AssociatedCrops,
            'associated_crops_peanut'=>$Obj->peanuts,
            'associated_crops_vegetables'=>$Obj->vegetables,
            'associated_crops_root_crops'=>$Obj->root_crops,
            'associated_crops_trees'=>$Obj->trees,
            'associated_crops_fruit_crops'=>$Obj->fruit,
            'associated_crops_others'=>$Obj->othercrops,
            'fertilizer_applied'=>$Fertilizer,
            'if_organic'=>$Obj->organic,
            'if_inorganic'=>$Obj->inorganic,
            'fertilizer_application_frequency'=>$appFrequency,
            'practice_pruning'=>$Obj->practicepruning,
            'practice_pruning_yes'=>$practicepruning_yes,
            'da_training'=>$Obj->da_conducttraining,
            'da_training_yes'=>$Obj->da_conducttraining_yes,
            'da_share_technology'=>$Obj->sharedtechnology,
            'latitude'=>$Obj->coordinates_lat,
            'longitude'=>$Obj->coordinates_long
            );   

        return $this->respondent->saveproduction($production);
        

    }


    public function harvest($post,$respondent_id=0)
    {

        $obj = (object)$post;
       

        $pod_processing = isset($obj->pod_processing) ? $obj->pod_processing :NULL;

        $pod_processing_1 ='';
        $pod_processing_2 ='';
        $pod_processing_3 ='';
        $pod_processing_4 ='';
        $pod_processing_5 ='';
        $pod_processing_6 ='';
        $pod_processing_7 ='';

        if ($pod_processing != NULL) {
            # code...

            foreach ($pod_processing as $key) {
                # code...
                if ($key == 'Pod Breaking') {
                    $pod_processing_1 = isset($obj->pod_breaking) ? $obj->pod_breaking : '';
                }
                if ($key == 'Bean Processing') {
                    # code...
                    $pod_processing_2 = isset($obj->bean_processing) ? $obj->bean_processing: '';
                }
                if ($key == 'Bean Sorting/Grading') {
                    # code...
                    $pod_processing_3 = isset($obj->bean_sorting) ? $obj->bean_sorting: '';
                }
                if ($key == 'Bean Roasting') {
                    # code...
                    $pod_processing_4 = isset($obj->bean_roasting) ? $obj->bean_roasting: '';
                }
                if ($key == 'Winnowing') {
                    # code...
                    $pod_processing_5 = isset($obj->winnowing) ? $obj->winnowing: '';
                }
                if ($key == 'Grinding') {
                    # code...
                    $pod_processing_6 = isset($obj->grinding) ? $obj->grinding: '';
                }
                if ($key == 'Cacao Pod Processing') {
                    # code...
                    $pod_processing_7 = isset($obj->cacao_pod_processing) ? $obj->cacao_pod_processing: '';
                }
        
            }
        }

        $harvest = array(
            'respondent_id'=>$respondent_id,
            'pod_per_variety'=>$obj->pod_per_variety,
            'kg_produced_per_variety'=>$obj->kg_produced_per_variety,
            'total_bean_production'=>$obj->total_bean_production,
            'cacao_pod_sorting'=>$obj->cacao_pod_sorting,
            'pod_processing'=>implode(',', $pod_processing),
            'pod_breaking'=>$pod_processing_1,
            'bean_processing'=>$pod_processing_2,
            'bean_sorting'=>$pod_processing_3,
            'bean_roasting'=>$pod_processing_4,
            'winnowing'=>$pod_processing_5,
            'grinding'=>$pod_processing_6,
            'cacao_pod_processing'=>$pod_processing_7
            );  
        return $result = $this->respondent->saveharvest($harvest);
        

    }


    public function marketing($post,$respondent_id=0)
    {

        $Obj = (object)$post;

        if(isset($Obj->typeproductsold)){
            $typeproductsold = implode(',',$Obj->typeproductsold);
        }else{
            $typeproductsold='';
        }

        if(isset($Obj->marketingType)){
            $marketingType = implode(',',$Obj->marketingType);
        }else{
            $marketingType='';
        }
        $marketing = array(
            'respondent_id'=>$respondent_id,
            'product_sold_type'=>$typeproductsold,
            'product_sold_type_others'=>$Obj->typeproductsold_others,
            'marketing_type'=>$marketingType,
            'marketing_type_others'=>$Obj->marketingType_others,
            'market_destination'=>$Obj->market_destination
            );  
        if($this->respondent->savemarketing($marketing)){

            $this->noError = true;
            return true;
        }
        return false;
        

    }




}