// Nancy Drew: Trail of the Twister
// Written by Toasterberry
// https://linktr.ee/toasterberry

state("Twister")
{
	string20 scene : "Twister.exe", 0x188668, 0x50, 0x8, 0x10, 0x60, 0x8, 0x0;
}

startup
{
	// Settings
	settings.Add("autorst",false,"Auto reset at difficulty select");
	
	// Universal Splits
	settings.Add("unisplt", true, "Universal Splits");
	settings.Add("moneyBox", false, "Money Box", "unisplt");
	settings.Add("welcomeNote", false, "Welcome Note", "unisplt");
	settings.Add("filingStart", false, "Filing Start", "unisplt");
	settings.Add("filingDone", false, "Filing Done", "unisplt");
	settings.Add("trivia", false, "Trivia", "unisplt");
	settings.Add("meetScott", false, "Meet Scott", "unisplt");
	settings.Add("meetDebbie", false, "Meet Debbie", "unisplt");
	settings.Add("sirenChart", false, "Siren Chart", "unisplt");
	settings.Add("meetFrosty", false, "Meet Frosty", "unisplt");
	settings.Add("sprinklerSystem", false, "Sprinkler System", "unisplt");
	settings.Add("redAndBlueSensors", false, "Red and Blue Sensors", "unisplt");
	settings.Add("sensorsDone", false, "Sensors Done", "unisplt");
	settings.Add("windmill", false, "Windmill", "unisplt");
	settings.Add("frostyAlmostForgot", false, "Frosty Almost Forgot", "unisplt");
	settings.Add("nighttimeStormWarning", false, "Nighttime Storm Warning", "unisplt");
	settings.Add("scottSeesMice", false, "Scott Sees Mice", "unisplt");
	settings.Add("chaseBootsCutscene", false, "Chase Boots Cutscene", "unisplt");
	settings.Add("meetChase", false, "Meet Chase", "unisplt");
	settings.Add("meetPa", false, "Meet Pa", "unisplt");
	settings.Add("landRush", false, "Land Rush", "unisplt");
	settings.Add("fujitaDisplay", false, "Fujita Display", "unisplt");
	settings.Add("fujitaDone", false, "Fujita Done", "unisplt");
	settings.Add("candyDisplay", false, "Candy Display", "unisplt");
	settings.Add("boughtSupplies", false, "Bought Supplies", "unisplt");
	settings.Add("mouseTrap", false, "Mouse Trap", "unisplt");
	settings.Add("prairieDogVacuum", false, "Prairie Dog Vacuum", "unisplt");
	settings.Add("disasterKitDone", false, "Disaster Kit Done", "unisplt");
	settings.Add("mice1Start", false, "Mice 1 Start", "unisplt");
	settings.Add("springhouse", false, "Springhouse", "unisplt");
	settings.Add("prairieDogsStart", false, "Prairie Dogs Start", "unisplt");
	settings.Add("prairieDogsDone", false, "Prairie Dogs Done", "unisplt");
	settings.Add("box2", false, "Box 2", "unisplt");
	settings.Add("renogramStart", false, "Renogram Start", "unisplt");
	settings.Add("renogramDone", false, "Renogram Done", "unisplt");
	settings.Add("antennasStart", false, "Antennas Start", "unisplt");
	settings.Add("antennasDone", false, "Antennas Done", "unisplt");
	settings.Add("transmissionStart", false, "Transmission Start", "unisplt");
	settings.Add("transmissionDone", false, "Transmission Done", "unisplt");
	settings.Add("mice2Start", false, "Mice 2 Start", "unisplt");
	settings.Add("debbieTalksAboutScream", false, "Debbie Talks about Scream", "unisplt");
	settings.Add("mice3Start", false, "Mice 3 Start", "unisplt");
	settings.Add("phoneJackStart", false, "Phone Jack Start", "unisplt");
	settings.Add("headset", false, "Headset", "unisplt");
	settings.Add("coolantBlade", false, "Coolant Blade", "unisplt");
	settings.Add("seeOilyBoots", false, "See Oily Boots", "unisplt");
	settings.Add("mice4Start", false, "Mice 4 Start", "unisplt");
	settings.Add("diviningRod", false, "Divining Rod", "unisplt");
	settings.Add("tvStart", false, "TV Start", "unisplt");
	settings.Add("tvDone", false, "TV Done", "unisplt");
	settings.Add("pulloff", false, "Pulloff", "unisplt");
	settings.Add("wires", false, "Wires", "unisplt");
	settings.Add("paperInDrawer", false, "Paper in Drawer", "unisplt");
	settings.Add("confrontScott", false, "Confront Scott", "unisplt");
	settings.Add("grangeTheater", false, "Grange Theater", "unisplt");
	settings.Add("inStormShelter", false, "In Storm Shelter", "unisplt");
	settings.Add("scottCrashes", false, "Scott Crashes", "unisplt");
	
	// Death%
	settings.Add("deathp", false, "Death%");
    settings.Add("incar",false,"In Car", "deathp");
}

start
{

	if (current.scene == "s3560")
	{
		vars.reset = !settings["autorst"];
		
		// Universal Splits
		vars.moneyBox = !settings["moneyBox"];
		vars.welcomeNote = !settings["welcomeNote"];
		vars.filingStart = !settings["filingStart"];
		vars.filingDone = !settings["filingDone"];
		vars.trivia = !settings["trivia"];
		vars.meetScott = !settings["meetScott"];
		vars.meetDebbie = !settings["meetDebbie"];
		vars.sirenChart = !settings["sirenChart"];
		vars.meetFrosty = !settings["meetFrosty"];
		vars.sprinklerSystem = !settings["sprinklerSystem"];
		vars.redAndBlueSensors = !settings["redAndBlueSensors"];
		vars.sensorsDone = !settings["sensorsDone"];
		vars.windmill = !settings["windmill"];
		vars.frostyAlmostForgot = !settings["frostyAlmostForgot"];
		vars.nighttimeStormWarning = !settings["nighttimeStormWarning"];
		vars.scottSeesMice = !settings["scottSeesMice"];
		vars.chaseBootsCutscene = !settings["chaseBootsCutscene"];
		vars.meetChase = !settings["meetChase"];
		vars.meetPa = !settings["meetPa"];
		vars.landRush = !settings["landRush"];
		vars.fujitaDisplay = !settings["fujitaDisplay"];
		vars.fujitaDone = !settings["fujitaDone"];
		vars.candyDisplay = !settings["candyDisplay"];
		vars.boughtSupplies = !settings["boughtSupplies"];
		vars.mouseTrap = !settings["mouseTrap"];
		vars.prairieDogVacuum = !settings["prairieDogVacuum"];
		vars.disasterKitDone = !settings["disasterKitDone"];
		vars.mice1Start = !settings["mice1Start"];
		vars.springhouse = !settings["springhouse"];
		vars.prairieDogsStart = !settings["prairieDogsStart"];
		vars.prairieDogsDone = !settings["prairieDogsDone"];
		vars.box2 = !settings["box2"];
		vars.renogramStart = !settings["renogramStart"];
		vars.renogramDone = !settings["renogramDone"];
		vars.antennasStart = !settings["antennasStart"];
		vars.antennasDone = !settings["antennasDone"];
		vars.transmissionStart = !settings["transmissionStart"];
		vars.transmissionDone = !settings["transmissionDone"];
		vars.mice2Start = !settings["mice2Start"];
		vars.debbieTalksAboutScream = !settings["debbieTalksAboutScream"];
		vars.mice3Start = !settings["mice3Start"];
		vars.phoneJackStart = !settings["phoneJackStart"];
		vars.headset = !settings["headset"];
		vars.coolantBlade = !settings["coolantBlade"];
		vars.seeOilyBoots = !settings["seeOilyBoots"];
		vars.mice4Start = !settings["mice4Start"];
		vars.diviningRod = !settings["diviningRod"];
		vars.tvStart = !settings["tvStart"];
		vars.tvDone = !settings["tvDone"];
		vars.pulloff = !settings["pulloff"];
		vars.wires = !settings["wires"];
		vars.paperInDrawer = !settings["paperInDrawer"];
		vars.confrontScott = !settings["confrontScott"];
		vars.grangeTheater = !settings["grangeTheater"];
		vars.inStormShelter = !settings["inStormShelter"];
		vars.scottCrashes = !settings["scottCrashes"];
		
		// Death% Splits
		vars.deathp = !settings["deathp"];
		vars.incar = !settings["incar"];
		return true;
	}
}

split
{
	string s = current.scene;
	switch (s) {
		case "UI_Main_SC": // Death% End
			if (!vars.deathp && old.scene == "s4940") { return true; }
			break;
		
		case "s6415A_SC": // Universal End
			return true;

		// Universal Splits
		case "s3536":
			if (!vars.moneyBox) { vars.moneyBox = true; return true; }
			break;
		case "s2620":
			if (!vars.welcomeNote) { vars.welcomeNote = true; return true; }
			break;
		case "s2599":
			if (!vars.filingStart) { vars.filingStart = true; return true; }
			break;
		case "s2314b_SC":
			if (!vars.filingDone) { vars.filingDone = true; return true; }
			break;
		case "s3400":
			if (!vars.trivia) { vars.trivia = true; return true; }
			break;
		case "s1100":
			if (!vars.meetScott) { vars.meetScott = true; return true; }
			break;
		case "s1000":
			if (!vars.meetDebbie) { vars.meetDebbie = true; return true; }
			break;
		case "s2898":
			if (!vars.sirenChart) { vars.sirenChart = true; return true; }
			break;
		case "s1300":
			if (!vars.meetFrosty) { vars.meetFrosty = true; return true; }
			break;
		case "s3540":
			if (!vars.sprinklerSystem) { vars.sprinklerSystem = true; return true; }
			break;
		case "s3530":
			if (!vars.redAndBlueSensors) { vars.redAndBlueSensors = true; return true; }
			break;
		case "s3531":
			if (!vars.sensorsDone) { vars.sensorsDone = true; return true; }
			break;
		case "s4730":
			if (!vars.windmill) { vars.windmill = true; return true; }
			break;
		case "s1394":
			if (!vars.frostyAlmostForgot) { vars.frostyAlmostForgot = true; return true; }
			break;
		case "s1730":
			if (!vars.nighttimeStormWarning) { vars.nighttimeStormWarning = true; return true; }
			break;
		case "s1129b_SC":
			if (!vars.scottSeesMice) { vars.scottSeesMice = true; return true; }
			break;
		case "s1700":
			if (!vars.chaseBootsCutscene) { vars.chaseBootsCutscene = true; return true; }
			break;
		case "s1201":
			if (!vars.meetChase) { vars.meetChase = true; return true; }
			break;
		case "s1400":
			if (!vars.meetPa) { vars.meetPa = true; return true; }
			break;
		case "s4694":
			if (!vars.landRush) { vars.landRush = true; return true; }
			break;
		case "s4698":
			if (!vars.fujitaDisplay) { vars.fujitaDisplay = true; return true; }
			break;
		case "s4412":
			if (!vars.fujitaDone) { vars.fujitaDone = true; return true; }
			break;
		case "s4295":
			if (!vars.candyDisplay) { vars.candyDisplay = true; return true; }
			break;
		case "s1483":
			if (!vars.boughtSupplies) { vars.boughtSupplies = true; return true; }
			break;
		case "s4419":
			if (!vars.mouseTrap) { vars.mouseTrap = true; return true; }
			break;
		case "s1238":
			if (!vars.prairieDogVacuum) { vars.prairieDogVacuum = true; return true; }
			break;
		case "s3220":
			if (!vars.disasterKitDone) { vars.disasterKitDone = true; return true; }
			break;
		case "s2199":
			if (!vars.mice1Start) { vars.mice1Start = true; return true; }
			break;
		case "s4800":
			if (!vars.springhouse) { vars.springhouse = true; return true; }
			break;
		case "s3550":
			if (!vars.prairieDogsStart) { vars.prairieDogsStart = true; return true; }
			break;
		case "s3534":
			if (!vars.prairieDogsDone) { vars.prairieDogsDone = true; return true; }
			break;
		case "s3558":
			if (!vars.box2) { vars.box2 = true; return true; }
			break;
		case "s4795a_SC":
			if (!vars.renogramStart) { vars.renogramStart = true; return true; }
			break;
		case "s4906":
			if (!vars.renogramDone) { vars.renogramDone = true; return true; }
			break;
		case "s4887":
			if (!vars.antennasStart) { vars.antennasStart = true; return true; }
			break;
		case "s4820":
			if (!vars.antennasDone) { vars.antennasDone = true; return true; }
			break;
		case "s3198":
			if (!vars.transmissionStart) { vars.transmissionStart = true; return true; }
			break;
		case "s1257":
			if (!vars.transmissionDone) { vars.transmissionDone = true; return true; }
			break;
		case "s3499":
			if (!vars.mice2Start) { vars.mice2Start = true; return true; }
			break;
		case "s1040":
			if (!vars.debbieTalksAboutScream) { vars.debbieTalksAboutScream = true; return true; }
			break;
		case "s2597":
			if (!vars.mice3Start) { vars.mice3Start = true; return true; }
			break;
		case "s2210":
			if (!vars.phoneJackStart) { vars.phoneJackStart = true; return true; }
			break;
		case "s2190":
			if (!vars.headset) { vars.headset = true; return true; }
			break;
		case "s2016":
			if (!vars.coolantBlade) { vars.coolantBlade = true; return true; }
			break;
		case "s2906":
			if (!vars.seeOilyBoots) { vars.seeOilyBoots = true; return true; }
			break;
		case "s4699":
			if (!vars.mice4Start) { vars.mice4Start = true; return true; }
			break;
		case "s4801a_SC":
			if (!vars.diviningRod) { vars.diviningRod = true; return true; }
			break;
		case "s2899":
			if (!vars.tvStart) { vars.tvStart = true; return true; }
			break;
		case "s2627":
			if (!vars.tvDone) { vars.tvDone = true; return true; }
			break;
		case "s4770":
			if (!vars.pulloff) { vars.pulloff = true; return true; }
			break;
		case "s4888":
			if (!vars.wires) { vars.wires = true; return true; }
			break;
		case "s2007a_SC":
			if (!vars.paperInDrawer) { vars.paperInDrawer = true; return true; }
			break;
		case "s1710":
			if (!vars.confrontScott) { vars.confrontScott = true; return true; }
			break;
		case "s4750":
			if (!vars.grangeTheater) { vars.grangeTheater = true; return true; }
			break;
		case "s4759":
			if (!vars.inStormShelter) { vars.inStormShelter = true; return true; }
			break;
		case "s4996":
			if (!vars.scottCrashes) { vars.scottCrashes = true; return true; }
			break;
			
		// Death% Splits
		case "s4999":
			if (!vars.incar) { vars.incar = true; return true; }
			break;
	}
		
}

reset {
	if (!vars.reset && current.scene == "s6499") {
		return true; 
	}
}
