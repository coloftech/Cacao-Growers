ALTER TABLE `respondents_post_harvest` ADD `pod_breaking` VARCHAR(10) NULL AFTER `pod_processing`, ADD `bean_processing` VARCHAR(10) NULL AFTER `pod_breaking`, ADD `bean_sorting` VARCHAR(10) NULL AFTER `bean_processing`, ADD `bean_roasting` VARCHAR(10) NULL AFTER `bean_sorting`, ADD `winnowing` VARCHAR(10) NULL AFTER `bean_roasting`, ADD `grinding` VARCHAR(10) NULL AFTER `winnowing`, ADD `cacao_pod_processing` VARCHAR(40) NULL AFTER `grinding`;