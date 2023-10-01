// Nancy Drew: Secrets Can Kill
// Written by Toasterberry
// https://linktr.ee/toasterberry

state("Game") {
	uint scene : 0xD0ECA;
	uint title : 0xDA56F;
}

startup {
	// Settings
	settings.Add("autorst",false,"Auto reset at difficulty select");
	
	// Universal splits
	settings.Add("unisplt", false, "Universal Splits");
	settings.Add("teleon", false, "TV on", "unisplt");
	settings.Add("tpplay", false, "Tape inserted", "unisplt");
	settings.Add("contro", false, "Connie introduction", "unisplt");
	settings.Add("drrtro", false, "Darrele introduction", "unisplt");
	settings.Add("cnnhlp", false, "Asking Connie for help", "unisplt");
	settings.Add("drrcnf", false, "Darrele confession", "unisplt");
	settings.Add("fnlcft", false, "Pharmacy conflict", "unisplt");
	
	// No-Glitch splits
	settings.Add("nogltch", false, "Additional No-Glitch Splits");
	settings.Add("safeun", false, "Safe unlocked", "nogltch");
	settings.Add("engess", false, "English Essays book", "nogltch");
	settings.Add("hulkin", false, "Hulk introduction", "nogltch");
	settings.Add("libopn", false, "Library door open", "nogltch");
	settings.Add("libmag", false, "Library magazine", "nogltch");
	settings.Add("halint", false, "Hal introduction", "nogltch");
	settings.Add("tchrrm", false, "Teacher's room break in", "nogltch");
	settings.Add("mtnrmu", false, "Maintenance room unlocked", "nogltch");
	settings.Add("blrunl", false, "Boiler lock unlocked", "nogltch");
	//mightneedanotherdarrelesplit   S151
	
	// Death% splits
	settings.Add("deathp", false, "Death%");
	settings.Add("ddiner", false, "Diner", "deathp");
	settings.Add("dkitch", false, "Kitchen", "deathp");
	settings.Add("dboltc", false, "Bolt cutters", "deathp");
}

start {
	if (current.scene == 60) {
		vars.reset = !settings["autorst"];
		
		// Universal splits
		vars.teleon = !settings["teleon"];
		vars.tpplay = !settings["tpplay"];
		vars.contro = !settings["contro"];
		vars.drrtro = !settings["drrtro"];
		vars.cnnhlp = !settings["cnnhlp"];
		vars.drrcnf = !settings["drrcnf"];
		vars.fnlcft = !settings["fnlcft"];
		
		// No-Glitch splits
		vars.safeun = !settings["safeun"];
		vars.engess = !settings["engess"];
		vars.hulkin = !settings["hulkin"];
		vars.libopn = !settings["libopn"];
		vars.libmag = !settings["libmag"];
		vars.halint = !settings["halint"];
		vars.tchrrm = !settings["tchrrm"];
		vars.mtnrmu = !settings["mtnrmu"];
		vars.blrunl = !settings["blrunl"];
		
		// Death% splits
		vars.deathp = !settings["deathp"];
		vars.ddiner = !settings["ddiner"];
		vars.dkitch = !settings["dkitch"];
		vars.dboltc = !settings["dboltc"];
		
		return true;
	}
}

split {
	uint s = current.scene;
	switch (s) {
		// The End
		case 2070:
			return true;
		
		// Universal splits
		case 632:
			if (!vars.teleon) { vars.teleon = true; return true; }
			break;
		case 655:
			if (!vars.tpplay) { vars.tpplay = true; return true; }
			break;
		case 201:
			if (!vars.contro) { vars.contro = true; return true; }
			break;
		case 101:
			if (!vars.drrtro) { vars.drrtro = true; return true; }
			break;
		case 245:
			if (!vars.cnnhlp) { vars.cnnhlp = true; return true; }
			break;
		case 151:
			if (!vars.drrcnf) { vars.drrcnf = true; return true; }
			break;
		case 1250:
			if (!vars.fnlcft) { vars.fnlcft = true; return true; }
			break;
		
		// No-Glitch splits
		case 57:
			if (!vars.safeun) { vars.safeun = true; return true; }
			break;
		case 1434:
			if (!vars.engess) { vars.engess = true; return true; }
			break;
		case 301:
			if (!vars.hulkin) { vars.hulkin = true; return true; }
			break;
		case 1417:
			if (!vars.libopn) { vars.libopn = true; return true; }
			break;
		case 1853:
			if (!vars.libmag) { vars.libmag = true; return true; }
			break;
		case 401:
			if (!vars.halint) { vars.halint = true; return true; }
			break;
		case 1654:
			if (!vars.tchrrm) { vars.tchrrm = true; return true; }
			break;
		case 1460:
			if (!vars.mtnrmu) { vars.mtnrmu = true; return true; }
			break;
		case 5002:
			if (!vars.blrunl) { vars.blrunl = true; return true; }
			break;
		
		// Death% splits
		case 824:
			if (!vars.ddiner && !vars.deathp) { vars.ddiner = true; return true; }
			break;
		case 1041:
			if (!vars.dkitch && !vars.deathp) { vars.dkitch = true; return true; }
			break;
		case 1048:
			if (!vars.dboltc && !vars.deathp) { vars.dboltc = true; return true; }
			break;
	}
	if (current.title == 0 && s == 1046) {
		return true; // Death% End
	}
}

reset {
	if (!vars.reset && current.scene == 5) {
		return true; 
	}
}