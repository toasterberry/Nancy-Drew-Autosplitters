// Nancy Drew: Sea of Darkness
// Written by Toasterberry, splits by Yandema
// https://linktr.ee/toasterberry

state("SeaOfDarkness") {
	string70 scene : 0x2818D0, 0x8, 0x5C, 0x0, 0x0;
	string70 subscene0: 0x2818D0, 0x10, 0x5C, 0x0, 0x0;
	string70 subscene1: 0x2818D0, 0x14, 0x5C, 0x0, 0x0;
	string70 subscene2: 0x2818D0, 0x18, 0x5C, 0x0, 0x0;
	string70 subscene3: 0x2818D0, 0x1C, 0x5C, 0x0, 0x0;
}

startup {
	// Settings
	settings.Add("reset",false,"Auto reset at difficulty select");
    
	// Universal Splits
	settings.Add("unisplt", true, "Universal Splits");
	settings.Add("DS_INTRO_SC",false,"Meet Dagny", "unisplt");
	settings.Add("S2093",false,"Dagny 1 Done", "unisplt");
	settings.Add("S2095",false,"See Dinghy", "unisplt");
	settings.Add("GT_INTRO_SC",false,"Meet Gunnar", "unisplt");
	settings.Add("PUB_ELISABET_ARGUMENT_EAVESDROP_SC",false,"Got Fuel", "unisplt");
	settings.Add("S2223",false,"Sleep 1", "unisplt");
	settings.Add("GT_MAKEGOOD_SC",false,"Gunnar 2", "unisplt");
	settings.Add("ORDERS_SC",false,"Borramatur Start", "unisplt");
	settings.Add("POR_HOOKCU_SC",false,"Ice Hook", "unisplt");
	settings.Add("S2088",false,"Saw Snowmobile Poster", "unisplt");
	settings.Add("SB_INTRO_SC",false,"Meet Soren", "unisplt");
	settings.Add("SB_PAMPHLETHANDOFF_SC",false,"Got Pamphlet", "unisplt");
	settings.Add("HEA_ICELANDCU_SC",false,"Bought Dictionary", "unisplt");
	settings.Add("HEA_BATTERIESCU_SC",false,"Bought Batteries", "unisplt");
	settings.Add("EG_FIRSTMEETING_SC",false,"Meet Elisabet", "unisplt");
	settings.Add("EG_GETKEY_SC",false,"Snowmobile Key", "unisplt");
	settings.Add("DEC_LOGSPAGES_SC",false,"See Captain’s Log", "unisplt");
	settings.Add("DEC_SKETCH1CU_SC",false,"Got Crow’s Nest Sketches", "unisplt");
	settings.Add("HOL_TRACECU_SC",false,"See Phone Password Note", "unisplt");
	settings.Add("HOL_FLASHLIGHTONCU_SC",false,"Fixed Flashlight", "unisplt");
	settings.Add("SQUARES_SC",false,"Start Desk Puzzle", "unisplt");
	settings.Add("SQUARESWON_SC",false,"Finish Desk Puzzle", "unisplt");
	settings.Add("CODE_SC",false,"Word Scramble Start", "unisplt");
	settings.Add("CODEWON_SC",false,"Word Scramble Done", "unisplt");
	settings.Add("PINS_SC",false,"Pins Start", "unisplt");
	settings.Add("PINSWON_SC",false,"Pins Done", "unisplt");
	settings.Add("PNN_INTRO_SC",false,"Ned Call 1", "unisplt");
	settings.Add("DS_FIXHEATER_SC",false,"Dagny 2", "unisplt");
	settings.Add("WIRING_SC",false,"Heater Start", "unisplt");
	settings.Add("WIRINGWON_SC",false,"Heater Done", "unisplt");
	settings.Add("DS_RADIOKEYHANDOFF_SC",false,"Got Radio Key", "unisplt");
	settings.Add("PAT_INTRO_SC",false,"Start Radio", "unisplt");
	settings.Add("MOTORBOAT_SC",false,"Start Boat", "unisplt");
	settings.Add("MOTORBOATWON_SC",false,"Boat Fixed", "unisplt");
	settings.Add("S1836",false,"At Top of Lighthouse", "unisplt");
	settings.Add("PROGRAM_SC",false,"2048 Start", "unisplt");
	settings.Add("PROGRAMWON_SC",false,"2048 Done", "unisplt");
	settings.Add("LOCK_SC",false,"Math Pyramid Start", "unisplt");
	settings.Add("LOCKWON_SC",false,"Math Pyramid Done", "unisplt");
	settings.Add("S1268_OPEN_SC",false,"Alarm Set", "unisplt");
	settings.Add("DEC_KEYCABCU_SC",false,"Got Cabin Key", "unisplt");
	settings.Add("S2099",false,"Snowmobile Fixed", "unisplt");
	settings.Add("PNN_STUMBLE_SC",false,"Ned Call 2", "unisplt");
	settings.Add("S1004_OPEN_SC",false,"In Cabin", "unisplt");
	settings.Add("S1050",false,"Saw Cave Pictures", "unisplt");
	settings.Add("CAB_KEYLUGGAGECU_SC",false,"Got Luggage Key", "unisplt");
	settings.Add("SEQUENCE_SC",false,"Dog Toys Start", "unisplt");
	settings.Add("SEQUENCEWON_SC",false,"Dog Toys Done", "unisplt");
	settings.Add("S2701",false,"At Caves", "unisplt");
	settings.Add("VOL_SKETCH5CU_SC",false,"Got Cave Sketches", "unisplt");
	settings.Add("POR_GUNNARAPPEARANIM_SC",false,"Gunnar Knife Cutscene", "unisplt");
	settings.Add("SB_DISTRACT_SC",false,"Distract Soren", "unisplt");
	settings.Add("HEA_SKETCH2CU_SC",false,"Got Luggage Sketch", "unisplt");
	settings.Add("POR_KEYBOARD_SC",false,"Dagny’s Phone Start", "unisplt");
	settings.Add("POR_MESSAGESA_SC",false,"See Magnus’ Texts", "unisplt");
	settings.Add("HOL_BILGEWATERANIM_SC",false,"Bilge Start", "unisplt");
	settings.Add("PUMPWON_SC",false,"Bilge Done", "unisplt");
	settings.Add("POR_GUNNARBANISHEDANIM_SC",false,"Gunnar Kicked Out Cutscene", "unisplt");
	settings.Add("PAIRS_SC",false,"Ship’s Wheel Start", "unisplt");
	settings.Add("PAIRSWON_SC",false,"Ship’s Wheel Done", "unisplt");
	settings.Add("SOUNDINGS1784_SC",false,"Locator Start", "unisplt");
	settings.Add("SOUNDINGSWON_SC",false,"Locator Done", "unisplt");
	settings.Add("PYRAMID_SC",false,"Triangles Start", "unisplt");
	settings.Add("PYRAMIDWON_SC",false,"Triangles Done", "unisplt");
	settings.Add("RINGS_SC",false,"Bed Puzzle Start", "unisplt");
	settings.Add("RINGSWON_SC",false,"Bed Puzzle Done", "unisplt");
	settings.Add("QUA_SKETCHCU_SC",false,"Bed Sketches", "unisplt");
	settings.Add("DIAL_SC",false,"Cabinet Code Start", "unisplt");
	settings.Add("DIALWON_SC",false,"Cabinet Code Done", "unisplt");
	settings.Add("QUA_BONEKEYCU_SC",false,"Got Dog Key", "unisplt");
	settings.Add("SLIVERS_SC",false,"Crow’s Nest Start", "unisplt");
	settings.Add("SLIVERSWON_SC",false,"Crow’s Nest Done", "unisplt");
	settings.Add("CARVING_SC",false,"Langspil Start", "unisplt");
	settings.Add("CARVINGWON_SC",false,"Langspil Done", "unisplt");
	settings.Add("GTL_ELISABETANGRY_SC",false,"Gunnar 3", "unisplt");
	settings.Add("PUB_BOXVOPEN_SC",false,"Open Gunnar’s Box", "unisplt");
	settings.Add("PUB_DISKCU_SC",false,"Got Coaster", "unisplt");
	settings.Add("GTL_AFTERBOXHANDOFF_SC",false,"Gave Gunnar Box", "unisplt");
	settings.Add("GT_GIVEITEMHANDOFF_SC",false,"Got Gunnar Sketch", "unisplt");
	settings.Add("PNN_EXPLAIN_SC",false,"Ned Call 3", "unisplt");
	settings.Add("LINES_SC",false,"Gems Start", "unisplt");
	settings.Add("LINESWON_SC",false,"Gems Done", "unisplt");
	settings.Add("DRAWING_SC",false,"Sketches Start", "unisplt");
	settings.Add("DRAWINGWON_SC",false,"Sketches Done", "unisplt");
	settings.Add("FIGURESTAIRSSTART_SC",false,"Dagny Lighthouse Cutscene", "unisplt");
	settings.Add("DEC_TUMIAPPEARSBANIM_SC",false,"Tumi Cutscene", "unisplt");
	settings.Add("DEC_CHARTCU_SC",false,"Opened Dog Toy", "unisplt");
	settings.Add("CURLS_SC",false,"Lion’s Head Start", "unisplt");
	settings.Add("CURLSWON_SC",false,"Lion’s Head Done", "unisplt");
	settings.Add("MUSIC_SC",false,"Music Box Start", "unisplt");
	settings.Add("MUSICWON_SC",false,"Music Box Done", "unisplt");
	settings.Add("PDS_THREATENS_SC",false,"Dagny Phone Call", "unisplt");
	settings.Add("CIRCLES_SC",false,"Minesweeper Start", "unisplt");
	settings.Add("CIRCLESWON_SC",false,"Minesweeper Done", "unisplt");
	settings.Add("BUILDWON_SC",false,"All Gears Done", "unisplt");
	settings.Add("SLIDE_SC",false,"Maze Start", "unisplt");
	settings.Add("SLIDEWON_SC",false,"Maze Done", "unisplt");
	settings.Add("BUTTONS_SC",false,"Sudoku Start", "unisplt");
	settings.Add("BUTTONSWON_SC",false,"Sudoku Done", "unisplt");
	settings.Add("TILES_SC",false,"Triangle Sudoku Start", "unisplt");
	settings.Add("TILESWON_SC",false,"Triangle Sudoku Done", "unisplt");
	settings.Add("VOL_MKFINDANIM_SC",false,"Found Magnus", "unisplt");
	settings.Add("VOL_SBTALKANIM_SC",false,"Fake Treasure Found", "unisplt");
	settings.Add("BLOCKS_SC",false,"Final Treasure Start", "unisplt");
	settings.Add("BLOCKSWON_SC",false,"Final Treasure Done", "unisplt");
    
	// Death%
	settings.Add("deathp", false, "Death%");
	settings.Add("test111",false,"test111", "deathp");
	
	vars.completedSplits = new HashSet<string>();
}

onStart {
	vars.completedSplits.Clear();
}

start {
	if (current.scene == "OPN_SHIPCRASHESANIM_SC") { // YANDEMA CHANGE THIS ONE
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
