// Nancy Drew: Labyrinth of Lies
// Written by Toasterberry, splits by Yandema
// https://linktr.ee/toasterberry

state("Labyrinth") {
	string70 scene : 0x18A618, 0x8, 0x5C, 0x0, 0x0;
	string70 subscene0: 0x18A618, 0x10, 0x5C, 0x0, 0x0;
	string70 subscene1: 0x18A618, 0x14, 0x5C, 0x0, 0x0;
	string70 subscene2: 0x18A618, 0x18, 0x5C, 0x0, 0x0;
	string70 subscene3: 0x18A618, 0x1C, 0x5C, 0x0, 0x0;
}

onStart {
	vars.completedSplits.Clear();
}

startup {
    // Settings
	settings.Add("reset",false,"Auto reset at difficulty select");
    
    // Universal Splits
	settings.Add("unisplt", true, "Universal Splits");
	settings.Add("XD_MEET_SC",false,"Meet Xenia", "unisplt");
	settings.Add("GK_FLY_SC",false,"Meet Grigor", "unisplt");
	settings.Add("WIN_SCENERYCRASHANIM_SC",false,"Break Fly System", "unisplt");
	settings.Add("S1090",false,"Xenia’s Script", "unisplt");
	settings.Add("GK_FLYFIX_SC",false,"Grigor Says to Fix Fly System", "unisplt");
	settings.Add("WIN_STORIESCU_SC",false,"Got Tartarus Book", "unisplt");
	settings.Add("WIN_KEYPAD_SC",false,"Backstage Keypad", "unisplt");
	settings.Add("S2493_OPEN_SC",false,"Breaker Box Open", "unisplt");
	settings.Add("LEVERS_SC",false,"Fly System Start", "unisplt");
	settings.Add("LEVERSWON_SC",false,"Fly System Done", "unisplt");
	settings.Add("WIN_LIFTDOWNANIM_SC",false,"Into the Underworld", "unisplt");
	settings.Add("TG_APPEAR_SC",false,"Meet Thanos", "unisplt");
	settings.Add("S1894",false,"Charon’s Hand", "unisplt");
	settings.Add("STY_LIFTUP_SC",false,"Back to Overworld", "unisplt");
	settings.Add("MUS_NIOBECASE_ANIM_SC",false,"Enter Museum", "unisplt");
	settings.Add("S1416",false,"Welcome Note", "unisplt");
	settings.Add("S1437",false,"Office Key", "unisplt");
	settings.Add("S1600",false,"Enter Office", "unisplt");
	settings.Add("PMR_TASK_SC",false,"Melina Call 1", "unisplt");
	settings.Add("ANIMALS_SC",false,"Animals Start", "unisplt");
	settings.Add("ANIMALSWON_SC",false,"Animals Done", "unisplt");
	settings.Add("S1426",false,"Coin Display", "unisplt");
	settings.Add("S2492_OPEN_SC",false,"Grigor’s Bag", "unisplt");
	settings.Add("S1895",false,"See Rubbing", "unisplt");
	settings.Add("STY_FERRYANIM_SC",false,"Paid Ferryman", "unisplt");
	settings.Add("DOG1_SC",false,"Cerberus 1", "unisplt");
	settings.Add("DOG2_SC",false,"Cerberus 2", "unisplt");
	settings.Add("DOG3_SC",false,"Cerberus 3", "unisplt");
	settings.Add("TAR_INTERCEPTANIM_SC",false,"Xenia and Niobe Cutscene", "unisplt");
	settings.Add("TAR_LISTCU_SC",false,"Workshop Paper", "unisplt");
	settings.Add("HANDS_SC",false,"Hands Start", "unisplt");
	settings.Add("HANDSWON_SC",false,"Hands Done", "unisplt");
	settings.Add("SECURITY_SC",false,"Workshop Code Start", "unisplt");
	settings.Add("SECURITYWON_SC",false,"Workshop Code Done", "unisplt");
	settings.Add("TG_REMOTE_SC",false,"Thanos Takes Remote", "unisplt");
	settings.Add("S1695",false,"Printer Paper", "unisplt");
	settings.Add("OFF_NIOBE_DOOR_ANIM_SC",false,"Niobe Passage Cutscene", "unisplt");
	settings.Add("SLIDE_SC",false,"Lightning Bolts Start", "unisplt");
	settings.Add("SLIDEWON_SC",false,"Lightning Bolts Done", "unisplt");
	settings.Add("NP_PAINT_SC",false,"Niobe in Workshop", "unisplt");
	settings.Add("PAINTINGWON_SC",false,"Vase Timer Start", "unisplt");
	settings.Add("WOR_RAGSCU_SC",false,"Rules Paper", "unisplt");
	settings.Add("S2693",false,"Charcoal", "unisplt");
	settings.Add("S2225",false,"Rubbing 2", "unisplt");
	settings.Add("CONTROLS_SC",false,"Lift Remote Start", "unisplt");
	settings.Add("CONTROLSWON_SC",false,"Lift Remote Done", "unisplt");
	settings.Add("STY_SPECTROSCOPECU_SC",false,"Spectroscope", "unisplt");
	settings.Add("GK_PLUTUS_SC",false,"Grigor Plutus Convo", "unisplt");
	settings.Add("BUTTONS_SC",false,"Xenia Box", "unisplt");
	settings.Add("BUTTONSWON_SC",false,"Xenia Box Done", "unisplt");
	settings.Add("OFF_KEYBOARD_SC",false,"On Computer", "unisplt");
	settings.Add("TICKETS_SC",false,"Ticketer Start", "unisplt");
	settings.Add("TICKETSWON_SC",false,"Ticketer Done", "unisplt");
	settings.Add("S2890_OPEN_SC",false,"Got Vase Book", "unisplt");
	settings.Add("TAGS_SC",false,"Vase Labels Start", "unisplt");
	settings.Add("TAGSWON_SC",false,"Vase Labels Done", "unisplt");
	settings.Add("TEMPLES_SC",false,"Temples Start", "unisplt");
	settings.Add("S1434",false,"Lion Picture", "unisplt");
	settings.Add("PROVENANCE_SC",false,"Provenance Start", "unisplt");
	settings.Add("GEMS_SC",false,"Gemstone Puzzle", "unisplt");
	settings.Add("GEMSWON_SC",false,"Gemstone Puzzle Done", "unisplt");
	settings.Add("VINES_SC",false,"Vine Triangles Start", "unisplt");
	settings.Add("VINESWON_SC",false,"Vine Triangles Done", "unisplt");
	settings.Add("BOULDERWINANIM_SC",false,"Dodge Boulder", "unisplt");
	settings.Add("SIEVE_SC",false,"Pitcher Broken", "unisplt");
	settings.Add("TAR_TUBWINANIM_SC",false,"Final Room Unlocked", "unisplt");
	settings.Add("S2096",false,"Rubbing 3", "unisplt");
	settings.Add("S1227",false,"Rubbing 4", "unisplt");
	settings.Add("STONES_SC",false,"Sliding Stones Start", "unisplt");
	settings.Add("STONESWON_SC",false,"Sliding Stones Done", "unisplt");
	settings.Add("S2697_OPEN_SC",false,"Vase Done", "unisplt");
	settings.Add("NAMES_SC",false,"Actors Names Start", "unisplt");
	settings.Add("NAMESWON_SC",false,"Actors Names Done", "unisplt");
	settings.Add("MXT_SHOWCU_SC",false,"Unlocked Poster", "unisplt");
	settings.Add("OFF_AUTHDATABASE1CU_SC",false,"Authentication Database", "unisplt");
	settings.Add("WOR_SHARDCU_SC",false,"Pottery Shard", "unisplt");
	settings.Add("MUS_EARRINGSSPECTRACU_SC",false,"Test Earrings", "unisplt");
	settings.Add("MUS_NECKLACESHARDCU_SC",false,"Test Necklace", "unisplt");
	settings.Add("NP_MIMIC_SC",false,"Niobe Counterfeiting Convo", "unisplt");
	settings.Add("XD_BOARD_SC",false,"Xenia Light Cues Convo", "unisplt");
	settings.Add("LIGHTS_SC",false,"Light Cues Start", "unisplt");
	settings.Add("LIGHTSWON_SC",false,"Light Cues Done", "unisplt");
	settings.Add("WIN_GRIGORSCRIMANIM_SC",false,"Grigor Vase Cutscene", "unisplt");
	settings.Add("WOR_WRENCHCU_SC",false,"Hex Key", "unisplt");
	settings.Add("S1891",false,"Blacklight", "unisplt");
	settings.Add("GK_FENCE_SC",false,"Confront Grigor", "unisplt");
	settings.Add("WOR_NIOBEBREAKANIM_SC",false,"Niobe Thanos Cutscene", "unisplt");
	settings.Add("S2591",false,"Key on Stage", "unisplt");
	settings.Add("LOCK_SC",false,"Spider Web Start", "unisplt");
	settings.Add("LOCKWON_SC",false,"Spider Web Done", "unisplt");
	settings.Add("GODS_SC",false,"Roman Gods Start", "unisplt");
	settings.Add("GODSWON_SC",false,"Roman Gods Done", "unisplt");
	settings.Add("TAR_CAGECAUGHTANIM_SC",false,"Thanos Trapped", "unisplt");
	settings.Add("TAR_MARBLESCU_SC",false,"Got Marbles", "unisplt");
	settings.Add("SCALES_SC",false,"Scales Start", "unisplt");
	settings.Add("SCALESWON_SC",false,"Scales Done", "unisplt");
	settings.Add("FIR_XENIA_THRONE_ANIM_SC",false,"Knocked Out", "unisplt");
	settings.Add("RINGS_SC",false,"Cuffs Start", "unisplt");
	settings.Add("RINGSWON_SC",false,"Cuffs Done", "unisplt");
	settings.Add("BRIDGE_SC",false,"Raise the Bridge Start", "unisplt");
	settings.Add("BRIDGEWON_SC",false,"Raise the Bridge Done", "unisplt");
	settings.Add("S1229",false,"Seeds Got", "unisplt");
	settings.Add("S1221",false,"Grigor’s Letter", "unisplt");
	settings.Add("SEEDS_SC",false,"Seeds Start", "unisplt");
	settings.Add("SEEDSWON_SC",false,"Seeds Done", "unisplt");
	settings.Add("WIFI_SC",false,"Wifi Puzzle Start", "unisplt");
	settings.Add("WIFIWON_SC",false,"Wifi Puzzle Done", "unisplt");
	settings.Add("WIN_ENTRANCEANIM_SC",false,"Final Cutscene", "unisplt");
    
	// Death%
	settings.Add("deathp", false, "Death%");
	settings.Add("Soontm",false,"Soon", "deathp");
    
	vars.completedSplits = new HashSet<string>();
}

start {
	if (current.scene == "MXT_OPENINGPHONECALL_SC") {
		vars.deathp = !settings["deathp"];
		vars.reset = !settings["reset"];
		return true;
	}
}

split {
	if (old.scene == current.scene
		&& old.subscene0 == current.subscene0
		&& old.subscene1 == current.subscene1
		&& old.subscene2 == current.subscene2
		&& old.subscene3 == current.subscene3)
		return false;

	return current.scene == "CLOSINGLETTER_SC" // Universal end
		|| settings[current.scene] && vars.completedSplits.Add(current.scene)
		|| settings[current.subscene0] && vars.completedSplits.Add(current.subscene0)
		|| settings[current.subscene1] && vars.completedSplits.Add(current.subscene1)
		|| settings[current.subscene2] && vars.completedSplits.Add(current.subscene2)
		|| settings[current.subscene3] && vars.completedSplits.Add(current.subscene3); // All other splits
}

reset {
	if (!vars.reset && current.scene == "BADGES_SC") {
		return true; 
	}
}
