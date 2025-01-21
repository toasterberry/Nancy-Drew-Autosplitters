// Nancy Drew: The Haunting of Castle Malloy
// Written by Toasterberry, splits by Yandema
// https://linktr.ee/toasterberry

state("CastleMalloy") {
	string5 scene : 0x11FE2D, 0x92, 0x8, 0x10, 0x1A, 0x0;
}

startup {
	// Universal Splits
	var universal = new Dictionary<string, string>
	{
		{ "s1500", "Call Alan Paine" },
		{ "s3075", "Knock on Castle Door" },
		{ "s3022", "Break Window" },
		{ "s1001", "Meet Kyler" },
		{ "s1035", "Kyler 2" },
		{ "s2680", "Weights" },
		{ "s2632", "Hanoi Start" },
		{ "s2640", "Hanoi Done" },
		{ "s2053", "Get Weight on Table" },
		{ "s1100", "Meet Kit" },
		{ "s1138", "Kit 2" },
		{ "s1156", "Seating Chart Done" },
		{ "s2910", "At Garden" },
		{ "s2916", "Leprechauns Done" },
		{ "s3839", "In Nursery" },
		{ "s4099", "Otters Start" },
		{ "s3829", "Otters Done" },
		{ "s3855", "Left Nursery Passage" },
		{ "s2930", "At Bog" },
		{ "s3501", "At Hut" },
		{ "s3515", "Got Jetpack" },
		{ "s3521", "Got Glass Lens" },
		{ "s3011", "At Crosses" },
		{ "s3033", "At Big Wall" },
		{ "s3034", "Big Wall Opened" },
		{ "s3043", "At Sheep Pen" },
		{ "s2988", "Got Sketch" },
		{ "s2065", "Printing Press Start" },
		{ "s1055", "Printing Press Done" },
		{ "s1089", "Ask Kyler About Sketch" },
		{ "s2650", "Gears Start" },
		{ "s2702", "Gears Done" },
		{ "s3063", "Garden Flower" },
		{ "s2923", "Fairy Circle Flower" },
		{ "s3060", "Bog Flower" },
		{ "s3510", "See Sheep Doll" },
		{ "s3062", "Entry Arch Flower" },
		{ "s3061", "Left of Car Flower" },
		{ "s2974", "Pillars Flower" },
		{ "s2048", "Luggage" },
		{ "s1161", "Kit 3" },
		{ "s2311", "Entered Inn" },
		{ "s2322", "Darts Won" },
		{ "s2365", "Difference Detective Won" },
		{ "s1200", "Meet Donal" },
		{ "s2375", "Mix Maid Tutorial Start" },
		{ "s2376", "Mix Maid Start" },
		{ "s1206", "Mix Maid Done" },
		{ "s2313", "Drums Start" },
		{ "s2377", "Drums Done" },
		{ "s3101", "Sheep Hunt Done" },
		{ "s1266", "Ask Donal About Shearing" },
		{ "s3100", "Shearing Start" },
		{ "s3522", "Got Sheep Doll" },
		{ "s2054", "Got Fortune Weight" },
		{ "s2701", "Weights Done" },
		{ "s4095", "Dolls Start" },
		{ "s3845", "Dolls Done" },
		{ "s2995", "Archway Slider Start" },
		{ "s2999", "Archway Slider Done" },
		{ "s4103", "In Tower" },
		{ "s2927", "N5 Island" },
		{ "s2670", "Hydroponics Book" },
		{ "s2634", "Zoopraxiscope Book" },
		{ "s2671", "Ersatz Quidnuncs Book" },
		{ "s2635", "Nautical Cartography Book" },
		{ "s4111", "Desk Opened" },
		{ "s3524", "Fiona Cutscene" },
		{ "s1301", "Meet Matt" },
		{ "s3240", "Tanagram" },
		{ "s3236", "Rocket Nose" },
		{ "s3231", "Rocket Fin" },
		{ "s3250", "Chemicals Start" },
		{ "s3241", "Chemicals Done" },
		{ "s3270", "Rocket Wires" },
		{ "s3215", "Rocket Control Panel" },
		{ "s3217", "Rocket Launch" }
	};

	// Death% Splits
	var death = new Dictionary<string, string>
	{
		{ "s3199", "Cutscene Skip" },
		{ "s3074", "Knock" },
		{ "s3010", "Rocks" },
		{ "s3021", "Broken Window Noticed" },
		{ "s2042", "Broken Stairs" }
	};

	// Settings
	settings.Add("reset",true,"Auto reset at difficulty select");
	settings.Add("award",false,"All Awards");
	settings.Add("death", false, "Death%");
	settings.Add("universal", true, "Universal Splits");


	foreach (var entry in universal)
		settings.Add(entry.Key, false, entry.Value, "universal");

	foreach (var entry in death)
		settings.Add(entry.Key, false, entry.Value, "death");

	vars.completedSplits = new HashSet<string>();
}

onStart {
	vars.completedSplits.Clear();
}

start {
	if (current.scene == "s6431") {
		vars.deathp = !settings["deathp"];
		vars.reset = !settings["reset"];
		return true;
	}
}

split {
	if (old.scene == current.scene)
		return false;

	return current.scene == "s2080" && !vars.death // Death% End
		|| current.scene == "s6316" && !vars.award // All Awards end
		|| current.scene == "s6400" // Universal end
		|| settings[current.scene] && vars.completedSplits.Add(current.scene); // All other splits
}

reset {
	return !vars.reset
		&& old.scene != current.scene
		&& current.scene == "s6430";
}
