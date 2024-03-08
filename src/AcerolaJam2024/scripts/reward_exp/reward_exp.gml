// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function reward_exp(_val,_recipient){
	with(_recipient)
	{
		fighter.xp += _val;
	}
}