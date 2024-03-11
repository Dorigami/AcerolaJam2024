function UpgradeGetCost(upg_normalized){
	var cost_base = 100;
	var cost_rate = 100;
	return cost_base + cost_rate*upg_normalized*upg_normalized*upg_normalized*upg_normalized;
}