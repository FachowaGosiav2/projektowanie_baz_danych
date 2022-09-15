SELECT `id`, `name`, `specificiation`, `balance` from abilitys
SELECT `id`, `rarity`, `resourse_rarity`, `percent_of_water`, `name` from biomes
SELECT `id`,`name`,`health`,`type`,`is_special`,`owner`,`cost`,`dimensions`,`specification`,`Resorses_id` from buldings
SELECT `id`, `Name`, `Nation`, `where_like_spawn`, `govermeent`, `Abilitys_id`, `Units_id`, `Map_geenerator_id`, `Buldings_id`, `Resorses_id` from civs
SELECT `id`, `number_of_diplomat` ,`power_of_diplomat` ,`dip_points` ,`embassies` ,`relations` ,`who_need_war` from diplomacy
SELECT `id`, `time`, `how_to_win`, `score` from game
SELECT `id`, `seed`, `dimensions`, `landform`, `special_structures`, `is_custom`, `name`, `Resorses_id`, `Biomes_id` from map_geenerator
SELECT `id`, `Name`, `Type`, `Rarity`, `Value`, `number`, `condition_spawn`, `is_gold` from resorses
SELECT `id`, `trade_routes`, `income`, `value_import`, `value_export`, `who_embargo_it` from trade
SELECT `Trade_id`, `Diplomacy_id`, `Civs_id` from true_diplomecy
SELECT `id`, `Name`, `Unitscol`, `health`, `type`, `is_special`, `who`, `cost`, `dimensions`, `Resorses_id` from units


SELECT `civs`.`Name`, `Nation`, `where_like_spawn`, `govermeent`, `Abilitys_id`, `Units_id`, `Map_geenerator_id`, `Buldings_id`, `civs`.`Resorses_id` 
FROM `civs` 
JOIN abilitys on Abilitys_id = abilitys.id 
JOIN units on Units_id = units.id 
JOIN map_geenerator on Map_geenerator_id = map_geenerator.id 
JOIN buldings on Buldings_id = buldings.id 
JOIN resorses on `civs`.Resorses_id = resorses.id;