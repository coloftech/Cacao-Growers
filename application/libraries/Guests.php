<?php 

/**
 * 
 * Maxmind db reader
 *GeoIpReader
 *
$record = $reader->city('128.101.101.101');

print($record->country->isoCode . "\n"); // 'US'
print($record->country->name . "\n"); // 'United States'
print($record->country->names['zh-CN'] . "\n"); // '美国'

print($record->mostSpecificSubdivision->name . "\n"); // 'Minnesota'
print($record->mostSpecificSubdivision->isoCode . "\n"); // 'MN'

print($record->city->name . "\n"); // 'Minneapolis'

print($record->postal->code . "\n"); // '55455'

print($record->location->latitude . "\n"); // 44.9733
print($record->location->longitude . "\n"); // -93.2323
 *
 */

date_default_timezone_set('Asia/Manila');
use GeoIp2\Database\Reader;

/**
 * 
 */
class Guests
{
  private $reader;
  private $ci;
  private $ip;

  function __construct()
  {
    # code...
    $this->reader = new Reader(PUBPATH.'/counter/GeoLite2-City/GeoLite2-City.mmdb');

    $this->ci =& get_instance();
    $this->ci->load->library('user_agent');
    $this->ip = $this->ci->input->ip_address();
  }

  public function save($ip='',$page='')
  {
    # code...

    if($ip == ''){

          $ip = $this->ip;
          
    }
         // if(!$this->is_robot() ){
         
          if($this->is_crawlers($_SERVER['HTTP_USER_AGENT']) === true){
              // do nothing
          }else{
            if ($this->setcookie()) {
              // do nothing
            }else{

                $makeDirY = $this->makeDir(PUBPATH.'/counter/visit/'.date('Y'));
                $makeDirM = $this->makeDir(PUBPATH.'/counter/visit/'.date('Y').'/'.date('m'));
                $path = PUBPATH.'/counter/visit/'.date('Y').'/'.date('m');
                $file = fopen($path.'/'.date('Y-m-d').'.txt', 'a') or die("Can't create file");
                

                $date = date('Y-m-d h:i a');
                $agent = $_SERVER['HTTP_USER_AGENT'];
                
                fwrite($file, 
                  $ip
                  ."~".$date
                  ."~".$this->country($ip)
                  ."~".$this->countrycode($ip)
                  ."~".$this->city($ip)
                  ."~".$this->province($ip)
                  ."~".$this->provincecode($ip)
                  ."~".$this->browser()
                  ."~".$this->platform()
                  ."~".$this->mobile()
                  ."~".$agent
                  ."~".$page
                  ."\n");
                fclose($file);
            }
          }
  }

  public function readfile($filename = '', $date='')
  {
    # code...
    if (isset($date)) {
      # code...

      $path = PUBPATH.'/counter/visit/'.date('Y',strtotime($date)).'/'.date('m',strtotime($date));
      $filename = $path.'/'.$date.'.txt';
      if(file_exists($filename)){
        $fileinfo = fopen($filename, 'r');
        $data = array();
        $i=0;
        while (!feof($fileinfo)) {
              $line = fgets($fileinfo);
              $data[$i] = $line;
              $i++;
            }
          fclose($fileinfo);
          return $data;

      }
      return false;

    }
          $path = PUBPATH.'/counter/visit/'.date('Y').'/'.date('m');
      $filename = $path.'/'.date('Y-m-d').'.txt';
      if(file_exists($filename)){
        $fileinfo = fopen($filename, 'r');
        $data = array();
        $i=0;
        while (!feof($fileinfo)) {
              $line = fgets($fileinfo);
              $data[$i] = $line;
              $i++;
            }
          fclose($fileinfo);
          return $data;

      }
      return false;



  }

  public function getCurrentDataGroupByIP($date='',$file='',$counter=false)
  {

            if($fileinfo = $this->readfile($file,$date)){
                $info = array();
                $i=0;
                foreach ($fileinfo as $data) {

                  $records = explode('~', $data);
                    if(count($records) > 1){
                       $ip = $records[0];
                       $date = $records[1];
                       $country =  isset($records[2]) ? $records[2] : 'Anonymous';
                       $countrycode =  isset($records[3]) ? $records[3] : 'Anonymous';
                       $city = isset($records[4]) ? $records[4] : 'Anonymous';
                       $province = isset($records[5]) ? $records[5] : 'Anonymous';
                       $provincecode =  isset($records[6]) ? $records[6] : 'Anonymous';

                       $browser =  isset($records[7]) ? $records[7] : 'Anonymous';
                       $platform = isset($records[8]) ? $records[8] : 'Anonymous';
                       $mobile = isset($records[9]) ? $records[9] : 'Anonymous';

                            $info[$i] = array(
                              'ip'=>$ip,
                              'countrycode'=>$countrycode,
                              'country'=>$country,
                              'date'=>$date,
                              'city'=>$city,
                              'province'=>$province,
                              'provincecode'=>$provincecode,
                              'browser'=>$browser,
                              'platform'=>$platform,
                              'mobile'=>$mobile,
                              'counter'=>0
                            );
                           $i++;                                         

                    }

                }
                if (is_array($info)) {

                    $info = $this->groupArray($info,'ip',true);
                    if ($counter == false) {
                      # code...

                    return $info;

                    }
                    $new_data = [];
                    $i=0;
                    foreach ($info as $key) {
                        # code...
                        $new_data[$i] = $key[0];
                        $new_data[$i]['counter'] = count($key);
                        $i++;
                    }
                    return $new_data;

                }


              }
              return false;
  }

public function groupArray($arr, $group, $preserveGroupKey = false, $preserveSubArrays = false) {
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
  public function info($ip='')
  {
    # code...
     try {
       
      return $this->reader->city($ip);
     } catch (Exception $e) {
       return false;
     }
  }

  public function city($ip='')
  {
    # code...
    if ($info = $this->info($ip)) {
      # code...
      return $info->city->name;
    }
    return false;
  }
  
  public function province($ip='')
  {
    # code...

    if ($info = $this->info($ip)) {
      # code...
      return $info->mostSpecificSubdivision->name;
    }
    return false;
  }
  
  public function provincecode($ip='')
  {
    # code...

    if ($info = $this->info($ip)) {
      # code...
      return $info->mostSpecificSubdivision->isoCode;
    }
    return false;

  }
  public function country($ip='')
  {
    # code...

    if ($info = $this->info($ip)) {
      # code...
      return $info->country->name;
    }
    return false;

    return $this->reader->city($ip);
  }
  public function countrycode($ip='')
  {
    # code...

    if ($info = $this->info($ip)) {
      # code...
      return $info->country->isoCode;
    }
    return false;

  }

  public function postal($ip='')
  {
    # code...

    if ($info = $this->info($ip)) {
      # code...
      return $info->postal->code;
    }
    return false;

   }
  public function lat($ip='')
  {
    # code...

    if ($info = $this->info($ip)) {
      # code...
      return $info->location->latitude;
    }
    return false;

  }
  public function long($ip='')
  {
    # code...

    if ($info = $this->info($ip)) {
      # code...
      return $info->location->longitude;
    }
    return false;

  }
  public function radius($ip='')
  {
    # code...

    if ($info = $this->info($ip)) {
      # code...
      return $info->location->accuracyRadius;
    }
    return false;

  }

  public function browser()
  {
    # code...
      return $this->ci->agent->browser();
    
  }

  public function platform()
  {
    # code...
      return $this->ci->agent->platform();
    
  }

  public function mobile()
  {
    # code...
    if ($this->ci->agent->is_mobile()) {
            # code...
      return $this->ci->agent->mobile();
    }
    return false;

    
  }
  public function is_robot()
  {
    # code...
    if ($this->ci->agent->is_robot())
      {
        $agent = $this->ci->agent->robot();
      }
      return false;
  }
  
  public function is_crawlers($USER_AGENT) {
        $crawlers_agents = 'Google|GoogleBot|Googlebot|msnbot|Rambler|Yahoo|AbachoBOT|accoona|AcioRobot|ASPSeek|CocoCrawler|Dumbot|FAST-WebCrawler|GeonaBot|Gigabot|Lycos|MSRBOT|Scooter|AltaVista|IDBot|eStyle|Scrubby|SemrushBot|facebookexternalhit|bingbot';
        $crawlers = explode("|", $crawlers_agents);
        foreach($crawlers as $crawler) {
          if ( strpos($USER_AGENT, $crawler) !== false){

          return true;

          }
        }
        return false;
}
  

  /* check if the visitors is robot or human before updating the counter */
  public function check_bots($agent='')
  {
    # code...
  if (preg_match('/bot|crawl|curl|dataprovider|search|get|spider|find|java|majesticsEO|google|yahoo|teoma|contaxe|yandex|libwww-perl|facebookexternalhit/i', $agent)) {
    // is bot
    return true;
  }else {return false;}
  }

  public function makeDir($path)
    {
         return is_dir($path) || mkdir($path);
    }

  public function setcookie($value='')
  {
    # code...

        $cookie_name = "user";
        $cookie_value = "Roy Rita";

     //unset($_COOKIE[$cookie_name]);


    if(!isset($_COOKIE[$cookie_name])) {

        setcookie($cookie_name, $cookie_value, time() + (86400), "/"); // 86400 = 1 day
        
        return false;

      } else {
        return true;
      }

  }

  
  
  
  

 
}
