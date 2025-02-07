// Nancy Drew: Warnings at Waverly Academy
// Written by Toasterberry, some splits by Yandema
// https://linktr.ee/toasterberry

state("Waverly") {
	string20 scene : 0x17F618, 0x50, 0x8, 0xC, 0x0;
	string20 dscne : 0x17F618, 0x50, 0x48, 0xC, 0x0; // death% scene
}

startup {
	// Universal Splits
	var universal = new Dictionary<string, string>
	{
		{ "s1700", "Bump into Izzy" },
		{ "s1400", "Rachel Hubbard" },
		{ "s4128", "Pantry Key" },
		{ "s4899", "PC Password" },
		{ "s1300", "Izzy Romero" },
		{ "s1029A_SC", "Corine sus" },
		{ "s2002", "Orthographic Start" },
		{ "s1060", "Orthographic Accepted" },
		{ "s1060c_SC", "Library Cabinet Key" },
		{ "s3750", "Piano Lamp" },
		{ "s5024", "Grave Puzzle Done" },
		{ "s1100", "Mel" },
		{ "s1200", "Leela Yadav" },
		{ "s1219", "Air Hockey" },
		{ "s1222photo_SC", "Air Hockey Win" },
		{ "s1262", "2nd Game" },
		{ "s1222menu_SC", "2nd Game Win" },
		{ "s1227", "3rd Game" },
		{ "s1230photo_SC", "3rd Game Win" },
		{ "s1319", "DNA Puzzle Accepted" },
		{ "s3710picture_SC", "Trophy Photo" },
		{ "s4210", "Snack Shop" },
		{ "s4213", "Snack Key" },
		{ "s5298", "Tree Climbing" },
		{ "s5295", "Bug Medal" },
		{ "s3741", "Door Swiped" },
		{ "s4699", "States Puzzle Start" },
		{ "s4601", "States Done" },
		{ "s3100", "Rachel Door Puzzle" },
		{ "s1710", "Rachel Caught" },
		{ "s4895", "Student Pic Puzzle Start" },
		{ "s5022", "Bow Get" },
		{ "s1177", "Mel's DoorDash" },
		{ "s2609", "Purple Trunk" },
		{ "s3709", "Piano Compartment" },
		{ "s3729", "Spoons Open" },
		{ "s5530", "Medal Display" },
		{ "s1457", "Rachel's Last Request" },
		{ "s1067", "Corine's DoorDash" },
		{ "s2018", "CELLAR" },
		{ "s5516", "Corine Caught" },
	};

	// Settings
	settings.Add("reset",true,"Auto reset at difficulty select");
	settings.Add("award",false,"All Awards");
	settings.Add("death", false, "Death%");
	settings.Add("universal", true, "Universal Splits");

	foreach (var entry in universal)
		settings.Add(entry.Key, false, entry.Value, "universal");

	vars.completedSplits = new HashSet<string>();
}

onStart {
	vars.completedSplits.Clear();
}

start {
	if (current.scene == "s6430") {
		vars.death = !settings["death"];
		vars.reset = !settings["reset"];
		vars.award = !settings["award"];
		return true;
	}
}

split {
	if (old.scene == current.scene)
		return false;

	return current.dscne == "SecondChance_Type_SC" && !vars.death // Death% end
		|| current.scene == "s6400" && !vars.award // All Awards end
		|| current.scene == "s6415" && vars.award // Universal end
		|| settings[current.scene] && vars.completedSplits.Add(current.scene); // All other splits
}

reset {
	return !vars.reset
		&& old.scene != current.scene
		&& current.scene == "s6499";
}
