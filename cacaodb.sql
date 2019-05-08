-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2019 at 11:08 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.0.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cacaov3`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `gallery_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_public` int(1) NOT NULL,
  `unik_id` varchar(14) NOT NULL,
  `used` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mapping`
--

CREATE TABLE `mapping` (
  `crimeLat` varchar(50) NOT NULL,
  `crimeLong` varchar(50) NOT NULL,
  `crimeDate` date NOT NULL,
  `crimeLoc` varchar(50) NOT NULL,
  `crimeDesc` text NOT NULL,
  `crimeIcon` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `msg_messages`
--

CREATE TABLE `msg_messages` (
  `id` int(11) NOT NULL,
  `thread_id` int(11) NOT NULL,
  `body` text NOT NULL,
  `priority` int(2) NOT NULL DEFAULT '0',
  `sender_id` int(11) NOT NULL,
  `cdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `msg_participants`
--

CREATE TABLE `msg_participants` (
  `user_id` int(11) NOT NULL,
  `thread_id` int(11) NOT NULL,
  `cdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `msg_status`
--

CREATE TABLE `msg_status` (
  `message_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `msg_threads`
--

CREATE TABLE `msg_threads` (
  `id` int(11) NOT NULL,
  `subject` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pestdisease`
--

CREATE TABLE `pestdisease` (
  `pestdisease_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `cover` varchar(100) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_publish` int(1) NOT NULL,
  `posted_by` int(11) NOT NULL,
  `approved_by` int(11) NOT NULL,
  `date_publish` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `respondents`
--

CREATE TABLE `respondents` (
  `respondent_id` int(11) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `age` int(3) NOT NULL,
  `civilstatus` varchar(25) NOT NULL,
  `education` varchar(25) NOT NULL,
  `familysize` int(3) NOT NULL,
  `annualincome` varchar(25) NOT NULL,
  `address` varchar(100) NOT NULL,
  `barangay` varchar(10) NOT NULL,
  `city` varchar(10) NOT NULL,
  `city_name` varchar(50) NOT NULL,
  `province` varchar(10) NOT NULL,
  `date_of_survey` datetime NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `date_last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `token` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `respondents_affiliation`
--

CREATE TABLE `respondents_affiliation` (
  `respondent_id` int(11) NOT NULL,
  `title_of_trainig` varchar(100) DEFAULT NULL,
  `date_conducted` varchar(20) DEFAULT NULL,
  `venue` varchar(10) DEFAULT NULL,
  `sponsoring_agency` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `respondents_farm_profile`
--

CREATE TABLE `respondents_farm_profile` (
  `farm_id` int(11) NOT NULL,
  `respondent_id` int(11) NOT NULL,
  `land_ownership` varchar(50) NOT NULL,
  `farm_size` varchar(50) NOT NULL,
  `no_of_trees` varchar(50) NOT NULL,
  `planting_distance` varchar(50) DEFAULT NULL,
  `farming_experience_production` varchar(50) NOT NULL,
  `farming_experience_production_organic` varchar(50) NOT NULL,
  `cacao_varieties` varchar(50) DEFAULT NULL,
  `cacao_clone_planted` varchar(100) NOT NULL,
  `cacao_clone_planted_others` varchar(100) DEFAULT NULL,
  `farming_category` varchar(50) NOT NULL,
  `farming_status` varchar(50) NOT NULL,
  `type_of_propagation` varchar(50) NOT NULL,
  `source_of_seeds` varchar(100) DEFAULT NULL,
  `source_of_seedlings` varchar(100) DEFAULT NULL,
  `source_of_scions` varchar(100) DEFAULT NULL,
  `source_of_stocks` varchar(100) DEFAULT NULL,
  `stablish_nursery` varchar(50) NOT NULL,
  `stablish_nursery_yes` varchar(100) DEFAULT NULL,
  `sell_seedling` varchar(50) NOT NULL,
  `sell_seedling_yes` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `respondents_marketing`
--

CREATE TABLE `respondents_marketing` (
  `marketing_id` int(11) NOT NULL,
  `respondent_id` int(11) NOT NULL,
  `product_sold_type` varchar(50) NOT NULL,
  `product_sold_type_others` varchar(50) DEFAULT NULL,
  `marketing_type` varchar(50) NOT NULL,
  `marketing_type_others` varchar(50) DEFAULT NULL,
  `market_destination` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `respondents_organizations`
--

CREATE TABLE `respondents_organizations` (
  `org_id` int(11) NOT NULL,
  `respondent_id` int(11) NOT NULL,
  `name_of_organization` varchar(100) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `years_in_membership` int(4) DEFAULT NULL,
  `projects_of_organization` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `respondents_pest_disease`
--

CREATE TABLE `respondents_pest_disease` (
  `pest_id` int(11) NOT NULL,
  `respondent_id` int(11) NOT NULL,
  `pest` varchar(150) NOT NULL,
  `pest_others` varchar(100) DEFAULT NULL,
  `pest_control_management` varchar(100) DEFAULT NULL,
  `pest_control_others` varchar(100) DEFAULT NULL,
  `pest_control_sanitation` varchar(100) DEFAULT NULL,
  `pest_control_chemical_control` varchar(100) DEFAULT NULL,
  `disease` varchar(100) DEFAULT NULL,
  `disease_others` varchar(100) DEFAULT NULL,
  `disease_control` varchar(100) NOT NULL,
  `disease_control_chemical` varchar(100) DEFAULT NULL,
  `disease_control_mechanical` varchar(100) DEFAULT NULL,
  `disease_control_pruning` varchar(100) DEFAULT NULL,
  `disease_control_others` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `respondents_post_harvest`
--

CREATE TABLE `respondents_post_harvest` (
  `harvet_id` int(11) NOT NULL,
  `respondent_id` int(11) NOT NULL,
  `pod_per_variety` varchar(25) DEFAULT NULL,
  `kg_produced_per_variety` varchar(25) DEFAULT NULL,
  `total_bean_production` varchar(25) NOT NULL,
  `cacao_pod_sorting` varchar(50) DEFAULT NULL,
  `pod_processing` varchar(150) DEFAULT NULL,
  `pod_breaking` varchar(10) DEFAULT NULL,
  `bean_processing` varchar(10) DEFAULT NULL,
  `bean_sorting` varchar(10) DEFAULT NULL,
  `bean_roasting` varchar(10) DEFAULT NULL,
  `winnowing` varchar(10) DEFAULT NULL,
  `grinding` varchar(10) DEFAULT NULL,
  `cacao_pod_processing` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `respondents_production_management`
--

CREATE TABLE `respondents_production_management` (
  `production_id` int(11) NOT NULL,
  `respondent_id` int(11) NOT NULL,
  `climate_factor_rainfall` varchar(100) DEFAULT NULL,
  `climate_factor_temperature` varchar(100) DEFAULT NULL,
  `climate_factor_elevation` varchar(100) DEFAULT NULL,
  `climate_factor_slope` varchar(100) DEFAULT NULL,
  `edaphic_factors_soil_type` varchar(100) DEFAULT NULL,
  `edaphic_factors_soil_depth` varchar(100) DEFAULT NULL,
  `edaphic_factors_soil_texture` varchar(100) DEFAULT NULL,
  `edaphic_factors_soil_structure` varchar(100) DEFAULT NULL,
  `cropping_system` varchar(100) NOT NULL,
  `cropping_system_others` varchar(100) DEFAULT NULL,
  `associated_crops` varchar(100) DEFAULT NULL,
  `associated_crops_peanut` varchar(100) DEFAULT NULL,
  `associated_crops_vegetables` varchar(100) DEFAULT NULL,
  `associated_crops_root_crops` varchar(100) DEFAULT NULL,
  `associated_crops_trees` varchar(100) DEFAULT NULL,
  `associated_crops_fruit_crops` varchar(100) DEFAULT NULL,
  `associated_crops_others` varchar(100) DEFAULT NULL,
  `fertilizer_applied` varchar(100) DEFAULT NULL,
  `if_organic` varchar(100) DEFAULT NULL,
  `if_inorganic` varchar(100) DEFAULT NULL,
  `fertilizer_application_frequency` varchar(100) DEFAULT NULL,
  `practice_pruning` varchar(3) NOT NULL,
  `practice_pruning_yes` varchar(100) DEFAULT NULL,
  `da_training` varchar(3) NOT NULL,
  `da_training_yes` varchar(100) DEFAULT NULL,
  `da_share_technology` varchar(3) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `settings_id` int(11) NOT NULL,
  `settings_name` varchar(100) NOT NULL,
  `settings_value` text NOT NULL,
  `settings_parent` varchar(100) NOT NULL,
  `is_active` int(1) NOT NULL,
  `position` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`settings_id`, `settings_name`, `settings_value`, `settings_parent`, `is_active`, `position`) VALUES
(1, 'section1', '  <section id=\"main-slider\" class=\"no-margin\">\n    <div class=\"carousel slide\">\n      <div class=\"carousel-inner\">\n        <div class=\"item active\" style=\"background-image: url(\n../public/images/cacao.jpg)\">\n          <div class=\"container\">\n            <div class=\"row slide-margin\">\n              <div class=\"col-sm-6\">\n                <div class=\"carousel-content\">\n                  <h3 class=\"animation animated-item-1\"><span>Welcome to</span> THE CACAO GROWERS</h3>\n                  <p class=\"animation animated-item-2\">The Bohol Cacao Integrated Information System Database sponsored by DOST 7.</p>\n                  <a class=\"btn-slide animation animated-item-3\" href=\"#\">Read More</a>\n                </div>\n              </div>\n\n              <div class=\"col-sm-6 hidden-xs animation animated-item-4\">\n                <div class=\"slider-img\">\n                  <img src=\"../assets/themes/Company/images/slider/img3.png\" class=\"img-responsive hidden\">\n                </div>\n              </div>\n\n            </div>\n          </div>\n        </div>\n      </div>\n    </div>\n  </section>\n', 'home', 1, 1),
(3, 'section2', '\n  <div class=\"feature\">\n    <div class=\"container\">\n      <div class=\"text-center\">\n<div class=\"col-md-4\">\n<div class=\"hi-icon-wrap hi-icon-effect wow fadeInDown\" data-wow-duration=\"1000ms\" data-wow-delay=\"300ms\"><img src=\"../public/images/c-cacao.png\">\n<h2>Criollo</h2>\n<p>Criollo a superior quality characterized by having generally elongated and highly ridged pods.</p>\n</div>\n</div>\n<div class=\"col-md-4\">\n<div class=\"hi-icon-wrap hi-icon-effect wow fadeInDown\" data-wow-duration=\"1000ms\" data-wow-delay=\"600ms\"><img src=\"../public/images/f-cacao.png\">\n<h2>Forastero</h2>\n<p>Forastero is a high yielding cacao where its pods are thick-walled, hard and round which turn yellow when ripe.</p>\n</div>\n</div>\n<div class=\"col-md-4\">\n<div class=\"hi-icon-wrap hi-icon-effect wow fadeInDown\" data-wow-duration=\"1000ms\" data-wow-delay=\"900ms\"><img src=\"../public/images/t-cacao.png\">\n<h2>Trinitario</h2>\n<p>The richest source of genetic variations for the improvement of cacao by hybridization..</p>\n</div>\n</div>\n\n</div>\n</div>\n</div>', 'home', 1, 2),
(4, 'section3', '\r\n  <div class=\"about\">\r\n    <div class=\"container\">\r\n\r\n<div class=\"col-md-6 wow fadeInDown\" data-wow-duration=\"1000ms\" data-wow-delay=\"300ms\">\r\n        <h2>WHY CACAO?</h2>\r\n        <img src=\"https://chocolateclass.files.wordpress.com/2017/03/3_main_types_of_cocoa-01_large.jpg\" class=\"img-responsive\" />\r\n        <p>Cacao –Theobroma cacao L. - A rainforest tree now grown and domesticated in lower tropical humid climate near the equator in Central and South America, Africa, India, Indonesia, Sri Lanka, Malaysia and Philippines that need good fertile soils, sunlight and wind protection.\r\n        </p>\r\n      </div>\r\n\r\n      <div class=\"col-md-6 wow fadeInDown\" data-wow-duration=\"1000ms\" data-wow-delay=\"600ms\">\r\n        <h2>Template built with Twitter Bootstrap</h2>\r\n        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque libero,\r\n          pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque\r\n          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque\r\n            libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque\r\n          </p>\r\n          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque\r\n            libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque </p>\r\n      </div>\r\n\r\n\r\n</div>\r\n</div>', 'home', 1, 3),
(5, 'section4', 'This is news area not editable', 'home', 1, 4),
(6, 'section5', '\n  <section id=\"partner\">\n    <div class=\"container\"> <div class=\"center wow fadeInDown\">\n        <h2>Our Partners</h2>\n        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut <br> et dolore magna aliqua. Ut enim ad minim veniam</p>\n      </div>\n\n      <div class=\"partners\">\n        <ul>\n          <li> <a href=\"#\"><img class=\"img-responsive wow fadeInDown\" data-wow-duration=\"1000ms\" data-wow-delay=\"300ms\" src=\"../assets/themes/Company/images/partners/partner1.png\"></a></li>\n          <li> <a href=\"#\"><img class=\"img-responsive wow fadeInDown\" data-wow-duration=\"1000ms\" data-wow-delay=\"600ms\" src=\"../assets/themes/Company/images/partners/partner2.png\"></a></li>\n          <li> <a href=\"#\"><img class=\"img-responsive wow fadeInDown\" data-wow-duration=\"1000ms\" data-wow-delay=\"900ms\" src=\"../assets/themes/Company/images/partners/partner3.png\"></a></li>\n          <li> <a href=\"#\"><img class=\"img-responsive wow fadeInDown\" data-wow-duration=\"1000ms\" data-wow-delay=\"1200ms\" src=\"../assets/themes/Company/images/partners/partner4.png\"></a></li>\n          <li> <a href=\"#\"><img class=\"img-responsive wow fadeInDown\" data-wow-duration=\"1000ms\" data-wow-delay=\"1500ms\" src=\"../assets/themes/Company/images/partners/partner5.png\"></a></li>\n        </ul>\n      </div> </div>\n    <!--/.container-->\n  </section>\n  <!--/#partner-->', 'home', 0, 5),
(7, 'section6', '\n  <section id=\"conatcat-info\">\n    <div class=\"container\">\n      <div class=\"row\">\n\n        <div class=\"col-sm-8\">\n          <div class=\"media contact-info wow fadeInDown\" data-wow-duration=\"1000ms\" data-wow-delay=\"600ms\">\n            <div class=\"pull-left\">\n              <i class=\"fa fa-phone\"></i>\n            </div>\n            <div class=\"media-body\">\n              <h2>Have a question or need a custom quote?</h2>\n              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation  0123 456 70 80</p>\n            </div>\n          </div>\n        </div>\n        </div>\n        </div>\n</section>', 'home', 1, 6),
(8, 'section1', '<div class=\"aboutus\">\n<div class=\"container\">\n      <h3>Our company information</h3>\n      <hr>\n      <div class=\"col-md-7 wow fadeInDown\" data-wow-duration=\"1000ms\" data-wow-delay=\"300ms\">\n        <img src=\"../assets/themes/Company/images/7.jpg\" class=\"img-responsive\">\n        <h4>We Create, Design and Make it Real</h4>\n        <p>Nam tempor velit sed turpis imperdiet vestibulum. In mattis leo ut sapien euismod id feugiat mauris euismod. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus id nulla risus, vel tincidunt\n          turpis. Aliquam a nulla mi, placerat blandit eros. </p>\n        <p>In neque lectus, lobortis a varius a, hendrerit eget dolor. Fusce scelerisque, sem ut viverra sollicitudin, est turpis blandit lacus, in pretium lectus sapien at est. Integer pretium ipsum sit amet dui feugiat vitae dapibus odio eleifend.</p>\n      </div>\n      <div class=\"col-md-5 wow fadeInDown\" data-wow-duration=\"1000ms\" data-wow-delay=\"600ms\">\n        <div class=\"skill\">\n          <h2>Our Skills</h2>\n          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n\n          <div class=\"progress-wrap\">\n            <h3>Graphic Design</h3>\n            <div class=\"progress\">\n              <div class=\"progress-bar  color1\" role=\"progressbar\" aria-valuenow=\"40\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width: 85%\">\n                <span class=\"bar-width\">85%</span>\n              </div>\n\n            </div>\n          </div>\n\n          <div class=\"progress-wrap\">\n            <h4>HTML</h4>\n            <div class=\"progress\">\n              <div class=\"progress-bar color2\" role=\"progressbar\" aria-valuenow=\"20\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width: 95%\">\n                <span class=\"bar-width\">95%</span>\n              </div>\n            </div>\n          </div>\n\n          <div class=\"progress-wrap\">\n            <h4>CSS</h4>\n            <div class=\"progress\">\n              <div class=\"progress-bar color3\" role=\"progressbar\" aria-valuenow=\"60\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width: 80%\">\n                <span class=\"bar-width\">80%</span>\n              </div>\n            </div>\n          </div>\n\n          <div class=\"progress-wrap\">\n            <h4>Wordpress</h4>\n            <div class=\"progress\">\n              <div class=\"progress-bar color4\" role=\"progressbar\" aria-valuenow=\"80\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width: 90%\">\n                <span class=\"bar-width\">90%</span>\n              </div>\n            </div>\n          </div>\n        </div>\n      </div>\n\n\n      </div>\n      </div>', 'about', 1, 1),
(9, 'section2', '<div class=\"our-team\">\n<div class=\"container\">\n<h3>Our Team</h3>       <div class=\"text-center\">         <div class=\"col-md-4 wow fadeInDown\" data-wow-duration=\"1000ms\" data-wow-delay=\"300ms\">           <img src=\"../assets/themes/Company/images/services/1.jpg\" alt=\"\">           <h4>John Doe</h4>           <p>Lorem ipsum dolor sit amet consectetur adipisicing eil sed deiusmod tempor</p>         </div>         <div class=\"col-md-4 wow fadeInDown\" data-wow-duration=\"1000ms\" data-wow-delay=\"600ms\">           <img src=\"../assets/themes/Company/images/services/2.jpg\" alt=\"\">           <h4>John Doe</h4>           <p>Lorem ipsum dolor sit amet consectetur adipisicing eil sed deiusmod tempor</p>         </div>         <div class=\"col-md-4 wow fadeInDown\" data-wow-duration=\"1000ms\" data-wow-delay=\"900ms\">           <img src=\"../assets/themes/Company/images/services/3.jpg\" alt=\"\">           <h4>John Doe</h4>           <p>Lorem ipsum dolor sit amet consectetur adipisicing eil sed deiusmod tempor</p>         </div>       </div>\n\n</div>\n</div>', 'about', 1, 2),
(10, 'section1', '     <div class=\"services\">\n<div class=\"container\">\n  <h3>Company Services</h3>       <hr>       <div class=\"col-md-6\">         <img src=\"../assets/themes/Company/images/4.jpg\" class=\"img-responsive\">         <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque libero,           pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque</p>       </div>        <div class=\"col-md-6\">         <div class=\"media\">           <ul>             <li>               <div class=\"media-left\">                 <i class=\"fa fa-pencil\"></i>               </div>               <div class=\"media-body\">                 <h4 class=\"media-heading\">Web Development</h4>                 <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat libero, pulvinar tincidunt leo consectetur eget.</p>               </div>             </li>             <li>               <div class=\"media-left\">                 <i class=\"fa fa-book\"></i>               </div>               <div class=\"media-body\">                 <h4 class=\"media-heading\">Responsive Design</h4>                 <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat libero, pulvinar tincidunt leo consectetur eget.</p>               </div>             </li>             <li>               <div class=\"media-left\">                 <i class=\"fa fa-rocket\"></i>               </div>               <div class=\"media-body\">                 <h4 class=\"media-heading\">Bootstrap Themes</h4>                 <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat libero, pulvinar tincidunt leo consectetur eget.</p>               </div>             </li>           </ul>         </div>       </div>\n</div>\n</div>', 'services', 1, 1),
(11, 'section2', '     <div class=\"sub-services\">\n<div class=\"container\">  \n<div class=\"col-md-6\">         <div class=\"media\">           <ul>             <li>               <div class=\"media-left\">                 <i class=\"fa fa-pencil\"></i>               </div>               <div class=\"media-body\">                 <h4 class=\"media-heading\">Landing Page</h4>                 <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat libero, pulvinar tincidunt leo consectetur eget.</p>               </div>             </li>             <li>               <div class=\"media-left\">                 <i class=\"fa fa-book\"></i>               </div>               <div class=\"media-body\">                 <h4 class=\"media-heading\">Training</h4>                 <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat libero, pulvinar tincidunt leo consectetur eget.</p>               </div>             </li>             <li>               <div class=\"media-left\">                 <i class=\"fa fa-rocket\"></i>               </div>               <div class=\"media-body\">                 <h4 class=\"media-heading\">Logo Design</h4>                 <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat libero, pulvinar tincidunt leo consectetur eget.</p>               </div>             </li>           </ul>         </div>       </div>        <div class=\"col-md-6\">         <img src=\"../assets/themes/Company/images/4.jpg\" class=\"img-responsive\">         <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum erat libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque libero, pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque libero,           pulvinar tincidunt leo consectetur eget. Curabitur lacinia pellentesque</p>       </div>\n\n</div>\n</div>', 'services', 1, 2),
(12, 'tinyapi', '2ib73acioj4e1ftii2coubvn3vjzj65xhml5aoxdnftbld0k', '', 0, 0),
(13, 'googleapi', 'AIzaSyDl1fNnC-kRcfPSi1eaw95L8Csm_0329Xs', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `survey_masterlist`
--

CREATE TABLE `survey_masterlist` (
  `masterlist_id` int(11) NOT NULL,
  `town_name` varchar(100) NOT NULL,
  `town_code` int(11) NOT NULL,
  `no_of_farmer` int(11) NOT NULL,
  `year` int(4) NOT NULL DEFAULT '2019',
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_last_login`
--

CREATE TABLE `tbl_last_login` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `sessionData` varchar(2048) NOT NULL,
  `machineIp` varchar(1024) NOT NULL,
  `userAgent` varchar(128) NOT NULL,
  `agentString` varchar(1024) NOT NULL,
  `platform` varchar(128) NOT NULL,
  `createdDtm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_last_login`
--

INSERT INTO `tbl_last_login` (`id`, `userId`, `sessionData`, `machineIp`, `userAgent`, `agentString`, `platform`, `createdDtm`) VALUES
(1, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Windows 10', '2019-03-14 11:21:38'),
(2, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Windows 10', '2019-03-14 11:34:57'),
(3, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Windows 10', '2019-03-14 14:06:28'),
(4, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Windows 10', '2019-03-18 08:27:48'),
(5, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Windows 10', '2019-03-18 18:51:30'),
(6, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Windows 10', '2019-03-19 08:30:17'),
(7, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Windows 10', '2019-03-19 17:43:31'),
(8, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Windows 10', '2019-03-20 08:56:14'),
(9, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Windows 10', '2019-03-21 08:09:52'),
(10, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 72.0.3626.121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Windows 10', '2019-03-21 11:25:27'),
(11, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.105', 'Chrome 71.0.3578.99', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 5A) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.99 Mobile Safari/537.36', 'Android', '2019-03-21 11:48:34'),
(12, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Windows 10', '2019-03-21 14:07:08'),
(13, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 72.0.3626.121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Windows 10', '2019-03-21 15:36:44'),
(14, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Windows 10', '2019-03-21 17:02:18'),
(15, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Windows 10', '2019-03-21 17:12:52'),
(16, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Windows 10', '2019-03-22 08:10:20'),
(17, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Windows 10', '2019-03-22 14:43:43'),
(18, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 72.0.3626.121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Windows 10', '2019-03-26 08:38:22'),
(19, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 72.0.3626.121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Windows 10', '2019-03-26 10:48:48'),
(20, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.117', 'Chrome 71.0.3578.99', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 5A) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.99 Mobile Safari/537.36', 'Android', '2019-03-26 14:31:26'),
(21, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 73.0.3683.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'Windows 10', '2019-03-27 09:37:49'),
(22, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 73.0.3683.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'Windows 10', '2019-03-27 17:00:24'),
(23, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.100', 'Chrome 71.0.3578.99', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 5A) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.99 Mobile Safari/537.36', 'Android', '2019-03-27 20:19:19'),
(24, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 73.0.3683.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'Windows 10', '2019-03-28 08:13:01'),
(25, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.100', 'Chrome 71.0.3578.99', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 5A) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.99 Mobile Safari/537.36', 'Android', '2019-03-28 17:09:17'),
(26, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 73.0.3683.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'Windows 10', '2019-03-28 22:37:40'),
(27, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 73.0.3683.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'Windows 10', '2019-03-29 10:28:40'),
(28, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 73.0.3683.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'Windows 10', '2019-03-29 18:04:25'),
(29, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 73.0.3683.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'Windows 10', '2019-03-29 21:12:55'),
(30, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 73.0.3683.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'Windows 10', '2019-03-30 11:39:05'),
(31, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 73.0.3683.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'Windows 10', '2019-03-30 17:33:12'),
(32, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 73.0.3683.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'Windows 10', '2019-04-01 14:10:13'),
(33, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 73.0.3683.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'Windows 10', '2019-04-01 16:54:54'),
(34, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 73.0.3683.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'Windows 10', '2019-04-03 16:55:01'),
(35, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 73.0.3683.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'Windows 10', '2019-04-08 08:04:52'),
(36, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 73.0.3683.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'Windows 10', '2019-04-08 14:05:40'),
(37, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 73.0.3683.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'Windows 10', '2019-04-15 08:49:18'),
(38, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 73.0.3683.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'Windows 10', '2019-04-16 15:07:53'),
(39, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 73.0.3683.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'Windows 10', '2019-04-16 15:52:50'),
(40, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 73.0.3683.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'Windows 10', '2019-04-17 08:38:59'),
(41, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 73.0.3683.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'Windows 10', '2019-04-18 17:08:39'),
(42, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 73.0.3683.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'Windows 10', '2019-04-23 13:37:15'),
(43, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 73.0.3683.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'Windows 10', '2019-04-24 08:42:58'),
(44, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 65.0.3325.162', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36', 'Windows 10', '2019-04-29 09:29:39'),
(45, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '127.0.0.1', 'Chrome 65.0.3325.162', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36', 'Windows 10', '2019-04-29 09:31:04'),
(46, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '127.0.0.1', 'Chrome 65.0.3325.162', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36', 'Windows 10', '2019-04-29 09:32:28'),
(47, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '127.0.0.1', 'Chrome 65.0.3325.162', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36', 'Windows 10', '2019-04-29 09:38:29'),
(48, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '127.0.0.1', 'Chrome 65.0.3325.162', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36', 'Windows 10', '2019-04-30 14:37:17'),
(49, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '192.168.0.200', 'Chrome 73.0.3683.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'Windows 10', '2019-04-30 14:57:47'),
(50, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 73.0.3683.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'Windows 10', '2019-05-02 11:17:15'),
(51, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 73.0.3683.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'Windows 10', '2019-05-02 15:54:51'),
(52, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 73.0.3683.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'Windows 10', '2019-05-03 08:43:54'),
(53, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 73.0.3683.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'Windows 10', '2019-05-03 15:14:55'),
(54, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 74.0.3729.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'Windows 10', '2019-05-06 08:32:56'),
(55, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 74.0.3729.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'Windows 10', '2019-05-06 14:36:21'),
(56, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 74.0.3729.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'Windows 10', '2019-05-06 21:11:30'),
(57, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 74.0.3729.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'Windows 10', '2019-05-07 08:58:36'),
(58, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 74.0.3729.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'Windows 10', '2019-05-07 13:25:30'),
(59, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 74.0.3729.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'Windows 10', '2019-05-08 01:00:50'),
(60, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 74.0.3729.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'Windows 10', '2019-05-08 09:11:04'),
(61, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 74.0.3729.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'Windows 10', '2019-05-08 13:17:48'),
(62, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 74.0.3729.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'Windows 10', '2019-05-08 16:36:33');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reset_password`
--

CREATE TABLE `tbl_reset_password` (
  `id` bigint(20) NOT NULL,
  `email` varchar(128) NOT NULL,
  `activation_id` varchar(32) NOT NULL,
  `agent` varchar(512) NOT NULL,
  `client_ip` varchar(32) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT '0',
  `createdBy` bigint(20) NOT NULL DEFAULT '1',
  `createdDtm` datetime NOT NULL,
  `updatedBy` bigint(20) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `roleId` tinyint(4) NOT NULL COMMENT 'role id',
  `role` varchar(50) NOT NULL COMMENT 'role text'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_roles`
--

INSERT INTO `tbl_roles` (`roleId`, `role`) VALUES
(1, 'System Administrator'),
(2, 'Manager'),
(3, 'Employee');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `userId` int(11) NOT NULL,
  `email` varchar(128) NOT NULL COMMENT 'login email',
  `password` varchar(128) NOT NULL COMMENT 'hashed login password',
  `name` varchar(128) DEFAULT NULL COMMENT 'full name of user',
  `mobile` varchar(20) DEFAULT NULL,
  `roleId` tinyint(4) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT '0',
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`userId`, `email`, `password`, `name`, `mobile`, `roleId`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'letswrite14@gmail.com', '$2y$10$6NOKhXKiR2SAgpFF2WpCkuRgYKlSqFJaqM0NgIM3PT1gKHEM5/SM6', 'System Administrator', '09094573621', 1, 0, 0, '2015-07-01 18:56:49', 1, '2018-01-05 05:56:34'),
(2, 'manager@example.com', '$2y$10$quODe6vkNma30rcxbAHbYuKYAZQqUaflBgc4YpV9/90ywd.5Koklm', 'Manager', '9890098900', 2, 0, 1, '2016-12-09 17:49:56', 1, '2018-01-12 07:22:11'),
(3, 'employee@example.com', '$2y$10$UYsH1G7MkDg1cutOdgl2Q.ZbXjyX.CSjsdgQKvGzAgl60RXZxpB5u', 'Employee', '9890098900', 3, 0, 1, '2016-12-09 17:50:22', 3, '2018-01-04 07:58:28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_visits`
--

CREATE TABLE `tbl_visits` (
  `visit_id` int(11) NOT NULL,
  `country` varchar(25) NOT NULL,
  `date_of_visit` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_activity`
--

CREATE TABLE `user_activity` (
  `activity_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `event` varchar(50) NOT NULL,
  `subject` text,
  `publisher_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expires_at` datetime NOT NULL,
  `ip` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `msg_messages`
--
ALTER TABLE `msg_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `msg_participants`
--
ALTER TABLE `msg_participants`
  ADD PRIMARY KEY (`user_id`,`thread_id`);

--
-- Indexes for table `msg_status`
--
ALTER TABLE `msg_status`
  ADD PRIMARY KEY (`message_id`,`user_id`);

--
-- Indexes for table `msg_threads`
--
ALTER TABLE `msg_threads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pestdisease`
--
ALTER TABLE `pestdisease`
  ADD PRIMARY KEY (`pestdisease_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `respondents`
--
ALTER TABLE `respondents`
  ADD PRIMARY KEY (`respondent_id`);

--
-- Indexes for table `respondents_affiliation`
--
ALTER TABLE `respondents_affiliation`
  ADD PRIMARY KEY (`respondent_id`);

--
-- Indexes for table `respondents_farm_profile`
--
ALTER TABLE `respondents_farm_profile`
  ADD PRIMARY KEY (`farm_id`);

--
-- Indexes for table `respondents_organizations`
--
ALTER TABLE `respondents_organizations`
  ADD PRIMARY KEY (`org_id`);

--
-- Indexes for table `respondents_pest_disease`
--
ALTER TABLE `respondents_pest_disease`
  ADD PRIMARY KEY (`pest_id`);

--
-- Indexes for table `respondents_post_harvest`
--
ALTER TABLE `respondents_post_harvest`
  ADD PRIMARY KEY (`harvet_id`);

--
-- Indexes for table `respondents_production_management`
--
ALTER TABLE `respondents_production_management`
  ADD PRIMARY KEY (`production_id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `survey_masterlist`
--
ALTER TABLE `survey_masterlist`
  ADD PRIMARY KEY (`masterlist_id`);

--
-- Indexes for table `tbl_last_login`
--
ALTER TABLE `tbl_last_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_reset_password`
--
ALTER TABLE `tbl_reset_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`roleId`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `tbl_visits`
--
ALTER TABLE `tbl_visits`
  ADD PRIMARY KEY (`visit_id`);

--
-- Indexes for table `user_activity`
--
ALTER TABLE `user_activity`
  ADD PRIMARY KEY (`activity_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `msg_messages`
--
ALTER TABLE `msg_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `msg_threads`
--
ALTER TABLE `msg_threads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pestdisease`
--
ALTER TABLE `pestdisease`
  MODIFY `pestdisease_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `respondents`
--
ALTER TABLE `respondents`
  MODIFY `respondent_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `respondents_farm_profile`
--
ALTER TABLE `respondents_farm_profile`
  MODIFY `farm_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `respondents_organizations`
--
ALTER TABLE `respondents_organizations`
  MODIFY `org_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `respondents_pest_disease`
--
ALTER TABLE `respondents_pest_disease`
  MODIFY `pest_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `respondents_post_harvest`
--
ALTER TABLE `respondents_post_harvest`
  MODIFY `harvet_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `respondents_production_management`
--
ALTER TABLE `respondents_production_management`
  MODIFY `production_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `survey_masterlist`
--
ALTER TABLE `survey_masterlist`
  MODIFY `masterlist_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_last_login`
--
ALTER TABLE `tbl_last_login`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `tbl_reset_password`
--
ALTER TABLE `tbl_reset_password`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `roleId` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'role id', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_visits`
--
ALTER TABLE `tbl_visits`
  MODIFY `visit_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_activity`
--
ALTER TABLE `user_activity`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
