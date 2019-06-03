# BOHOL CACAO INDUSTRY INFORMATION SYSTEM
System requirements:<br/>
<br/>
a. PHP5.6 and later<br/>
b. Mysqli <br/>
c. Allowed rewrite engine<br/>
d. Google map api key<br/>
e. load all plugin requirements in composer.json<br/>

SELECT count(respondents.respondent_id) as total,city_name,no_of_trees FROM respondents LEFT JOIN `respondents_farm_profile` ON respondents_farm_profile.respondent_id = respondents.respondent_id group by no_of_trees,city_name
