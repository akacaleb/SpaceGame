/// @description 

event_inherited();

if image_index > 0{
effect_create_below(ef_explosion, x,y, 2, c_teal);
} else {
	effect_create_above(ef_explosion, x, y, 7, c_purple);
	effect_create_below(ef_spark, x,y, 7, c_yellow);
}