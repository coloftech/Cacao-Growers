<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';

/**
 * Class : User (UserController)
 * User Class to control all user related operations.
 * @author : Kishor Mali
 * @version : 1.1
 * @since : 15 November 2016
 */
class Survey extends BaseController
{
    /**
     * This is default constructor of the class
     */
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

        $this->global['pageTitle'] = 'Bohol Cacao Farms : Survey - add new survey';
        
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
        $this->global['pageTitle'] = 'Bohol Cacao Farms : Survey - add new survey';
        
        $this->loadViews("survey/questionnaires/edit/question", $this->global, NULL , NULL);

    }
    public function searchrespondent($value='')
    {
        # code...
        $object = (object)$this->input->post();
        if ($result = $this->respondent->searchrespondent(array('fname'=>strtoupper($object->fname),'lname'=>strtoupper($object->lname)))) {
          $e = json_decode($this->messages->exist());
          $respondents = array();
          foreach ($result as $key) {
              # code...
            $respondents[] = array('respondent_id'=>$key->respondent_id,'date_of_survey'=>$key->date_of_survey,'date_added'=>$key->date_added);
          }
          /*$e->respondent_id = $result[0]->respondent_id;*/
          $e->respondents = $respondents;
          echo json_encode($e);
        }else{
           echo $this->messages->notexist();
        }
    }
    public function save($e='',$respondent_id=0)
    {
    	# code...
    	if ($e == 'basic') {
    		# code...
    		echo json_encode($this->personalinfo($respondent_id));

        //echo json_encode(array('status'=>false,'respondent_id'=>$respondent_id));
    	}elseif ($e == 'farm') {
            # code...

            echo json_encode($this->farmprofile($respondent_id));
                }elseif ($e == 'pest') {
                    # code...

                    echo json_encode($this->farmpest($respondent_id));
                }
                elseif ($e == 'production') {
                    # code...

                    echo json_encode($this->farmproductionmanagement($respondent_id));
                }elseif ($e == 'harvest') {
                    # code...

                    echo json_encode($this->farmharvest($respondent_id));
                }elseif ($e == 'marketing') {
                    # code...

                    echo json_encode($this->farmmarketing($respondent_id));
                }else{
                   {
                    echo $this->messages->noinput();
                    } 
                }
            
        
    }
    public function personalinfo($respondent_id=0)
    {
    	$obj = (object)$this->input->post();
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
    		'barangay'=>$obj->brgy,
            'city'=>$obj->city,
            'city_name'=>$obj->city_name,
            'added_by'=>$this->vendorId,
            'updated_by'=>$this->vendorId
    		);
    	if($respondent_id = $this->respondent->savebasic($data,$respondent_id)){
    		if (isset($obj->nameoforganization)) {
                
                $organizations = array();
            $i=0;
            foreach ($obj->nameoforganization as $org) {
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
            $this->respondent->saveorganization($organizations);

            }
            if(isset($obj->trainingtitle) && is_array($obj->trainingtitle)){

            $affiliations = array();
            $i=0;
            foreach ($obj->trainingtitle as $title) {
                # code...
                $affiliations[$i] = array(
                    'respondent_id'=>$respondent_id,
                    'title_of_trainig'=>$title,
                    'date_conducted'=>$obj->trainingdated[$i],
                    'venue'=>$obj->trainingvenue[$i],
                    'sponsoring_agency'=>$obj->trainingsponsor[$i]
                    );
                $i++;
            }
            $this->respondent->saveaffiliation($affiliations);

            }
            

    		return array('status'=>true,'msg'=>$respondent_id);

    	}else{
    		return array('status'=>false,'msg'=>'Unknown error occured: Database error on insert.');
    	}
    	//return $data;

    }
    public function farmprofile($respondent_id=0)
    {


    	$Obj = (object)$this->input->post();
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
    		'land_ownership'=>isset($Obj->land_ownership) ? $Obj->land_ownership : '',
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
    		'stablish_nursery'=>!isset($Obj->nursery) ? '' : $Obj->nursery,
    		'cacao_clone_planted_others'=>$Obj->othersCacaoClones,
    		'stablish_nursery_yes'=>$Obj->othersnursery,
    		'type_of_propagation'=>$propagationtype,
    		'sell_seedling'=>!isset($Obj->sellSeedlings) ? '' : $Obj->sellSeedlings,
    		'sell_seedling_yes'=>$Obj->otherssellSeedlings
    		);

    	if($farm_id = $this->respondent->savefarm($farms)){

    		return array('status'=>true,'msg'=>$farm_id);

    	}else{

    		return array('status'=>false,'msg'=>'Unknown error occured: Database error on insert.');
    	}

    }

    public function farmpest($respondent_id=0)
    {

    	$Obj = (object)$this->input->post();

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
    	if($result = $this->respondent->savepest($pests)){

    		return array('status'=>true,'msg'=>$result);

    	}else{
    		
    		return array('status'=>false,'msg'=>'Unknown error occured: Database error on insert.');
    	}

    }

    public function farmproductionmanagement($respondent_id=0)
    {

    	$Obj = (object)$this->input->post();

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


    	if(isset($Obj->AssociatedCrops)){
    		$Fertilizer = implode(',',$Obj->Fertilizer);
    	}else{
    		$Fertilizer='';
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
    		'fertilizer_application_frequency'=>$Obj->appFrequency,
    		'practice_pruning'=>$Obj->practicepruning,
    		'practice_pruning_yes'=>$Obj->practicepruning_yes,
    		'da_training'=>$Obj->da_conducttraining,
    		'da_training_yes'=>$Obj->da_conducttraining_yes,
    		'da_share_technology'=>$Obj->sharedtechnology
    		);	 
    	if($result = $this->respondent->saveproduction($production)){

    		return array('status'=>true,'msg'=>$result);

    	}else{

    		return array('status'=>false,'msg'=>'Unknown error occured: Database error on insert.');
    	}

    }


    public function farmharvest($respondent_id=0)
    {

    	$Obj = (object)$this->input->post();

    	$harvest = array(
    		'respondent_id'=>$respondent_id,
    		'pod_per_variety'=>$Obj->pod_per_variety,
    		'kg_produced_per_variety'=>$Obj->kg_produced_per_variety,
    		'total_bean_production'=>$Obj->total_bean_production,
    		'cacao_pod_sorting'=>$Obj->cacao_pod_sorting,
    		'pod_processing'=>$Obj->pod_processing
    		);	

    	if($result = $this->respondent->saveharvest($harvest)){

    		return array('status'=>true,'msg'=>$result);

    	}else{
    		
    		return array('status'=>false,'msg'=>'Unknown error occured: Database error on insert.');
    	}

    }


    public function farmmarketing($respondent_id=0)
    {

    	$Obj = (object)$this->input->post();

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

    	if($result = $this->respondent->savemarketing($marketing)){

    		return array('status'=>true,'msg'=>$result);

    	}else{
    		
    		return array('status'=>false,'msg'=>'Unknown error occured: Database error on insert.');
    	}

    }


    public function test($value='')
    {
        # code...
      $this->global['pageTitle'] = 'Bohol Cacao Farms : Survey - add new survey';
        
        $this->loadViews("test", $this->global, NULL , NULL);

    }







//---end of class
}