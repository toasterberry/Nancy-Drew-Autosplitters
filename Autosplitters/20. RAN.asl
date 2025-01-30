// Nancy Drew: Ransom of the Seven Ships
// Written by Toasterberry, splits by Yandema
// https://linktr.ee/toasterberry

state("Ransom", "Steam") {
	string10 scene : 0x145CA8, 0x14, 0x0, 0x8, 0x10, 0x24, 0x0;
}

state("Ransom", "Disc") {
	string10 scene : 0x13EC48, 0x14, 0x0, 0x8, 0x10, 0x24, 0x0;
}

startup {
	// Universal Splits
	var universal = new Dictionary<string, string>
	{
		{ "s1021b_SC", "Shed Key" },
		{ "s3199", "Closet Lock Start" },
		{ "s2945", "Closet Opened" },
		{ "s2926", "Saw Monkey Display" },
		{ "s3198", "Bat Locator Start" },
		{ "s3230", "Shed Opened" },
		{ "s3250", "Golf Cart Start" },
		{ "s3255", "Golf Cart Done" },
		{ "s5150", "Shark Cove Start" },
		{ "s5015", "Journal Found" },
		{ "s2323", "See Missing Pulley" },
		{ "s4718", "Caught in Snare Trap" },
		{ "s1135", "Ask for Battery" },
		{ "s1128", "Ask for Metal Detector" },
		{ "s2052", "See Monkeys on Cliff" },
		{ "s4105", "At Monkey Facility" },
		{ "s4399", "Land Rush Start" },
		{ "s4108", "Land Rush Done" },
		{ "s4398", "Coconuts Start" },
		{ "s5400", "Sailing Start" },
		{ "s2610", "At Diving Spot" },
		{ "s2631", "Urchin" },
		{ "s2650", "Underwater Sudoku Start" },
		{ "s2652", "Underwater Sudoku Done" },
		{ "s3210", "Back to Resort" },
		{ "s2918", "Fruit Bowl" },
		{ "s1500", "Meet Coucou" },
		{ "s1559", "Coucou want driftwood" },
		{ "s1565a_SC", "Correct Perch" },
		{ "s1148", "Ask for Glowstick" },
		{ "s2299", "Astrolabe" },
		{ "s2065", "Correct Cave" },
		{ "s2290", "Mirror Puzzle Solved" },
		{ "s2296", "Jigsaw Start" },
		{ "s2297", "Slider Done" },
		{ "s1153", "GPS done" },
		{ "s3500", "Dove Isle" },
		{ "s3238", "Atocha Plaque" },
		{ "s4397", "Spinner Game Start" },
		{ "s3506", "Atocha Done" },
		{ "s4500", "Halfmoon Reef" },
		{ "s4403", "Shell" },
		{ "s4698", "Squares Box Start" },
		{ "s4401", "Squares Box Done" },
		{ "s5297", "Beachcomb for Coins" },
		{ "s5100", "Beachcombing Done" },
		{ "s2340", "Hourglasses Start" },
		{ "s2345", "Hourglasses Done" },
		{ "s1081", "See Dropoff Note" },
		{ "s1176", "Give Johnny Map" },
		{ "s3898", "Trapped in Hole" },
		{ "s3895", "Unlocked Cave Door 1" },
		{ "s3860", "Unlocked Cave Door 2" }
	};

	// Death% Splits
	var death = new Dictionary<string, string>
	{
		{ "s1001", "Letter Skip" },
		{ "s1022", "Shed Key" },
		{ "s3232", "Cart Part" }
	};

	// Settings
	settings.Add("reset",true,"Auto reset at difficulty select");
	settings.Add("award",false,"All Awards");
	settings.Add("death",false,"Death%");
	settings.Add("universal",true,"Universal Splits");


	foreach (var entry in universal)
		settings.Add(entry.Key, false, entry.Value, "universal");

	foreach (var entry in death)
		settings.Add(entry.Key, false, entry.Value, "death");

	vars.completedSplits = new HashSet<string>();
}

init {
	if (modules.First().ModuleMemorySize > 1700000) {
		version = "Steam";
	} else {
		version = "Disc";
	}
}

onStart {
	vars.completedSplits.Clear();
}

start {
	if (current.scene == "s6459") {
		vars.deathp = !settings["deathp"];
		vars.reset = !settings["reset"];
		vars.award = !settings["award"];
		return true;
	}
}

split {
	if (old.scene == current.scene)
		return false;

	return current.scene == "s6498" && !vars.death // Death% end
		|| current.scene == "s6400" && !vars.award // All Awards end
		|| current.scene == "s6494" && vars.award // Universal end
		|| settings[current.scene] && vars.completedSplits.Add(current.scene); // All other splits
}

reset {
	return !vars.reset
		&& old.scene != current.scene
		&& current.scene == "s6496";
}
