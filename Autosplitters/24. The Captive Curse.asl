// Nancy Drew: The Captive Curse
// Written by Toasterberry, splits by Yandema
// https://linktr.ee/toasterberry

state("Captive") {
	string30 scene : 0x194800, 0x1B8, 0x4, 0xE0, 0xE8, 0x0;
}

startup {
	// Universal Splits
	var universal = new Dictionary<string, string>
	{
		{ "Cinematic_BucketRaise_SC", "Match Done" },
		{ "s2038", "Shears" },
		{ "s3061", "Glass Book" },
		{ "s3141", "Purchased Cake" },
		{ "s1400", "Meet Anja" },
		{ "s1300", "Meet Renate" },
		{ "RearrangeScript_SC", "Bag Start" },
		{ "s3223", "Bag Done" },
		{ "s3222", "Renates Map" },
		{ "s1000", "Meet Karl" },
		{ "s3900", "Raid Cards Done" },
		{ "s3830", "Karls Key" },
		{ "Landline_SC", "Call Markus" },
		{ "s2240", "Courtyard Fire" },
		{ "s2244", "Fire Put Out" },
		{ "s2341", "Table Plug" },
		{ "s4410", "Enter Furnace Room" },
		{ "Cinematic_SandPrank_SC", "Snake Prank" },
		{ "s4546", "Shears Sharpened" },
		{ "s1200", "Meet Lukas" },
		{ "s1121", "Distract Karl" },
		{ "GlassSquaresScript_SC", "Stained Glass Box Start" },
		{ "s4234", "Stained Glass Box Done" },
		{ "s1287", "Swap-A-Lot Start" },
		{ "s4227", "B" },
		{ "s3522", "Dictionary" },
		{ "s1303", "Renate Sees Dress" },
		{ "s4511", "A" },
		{ "s5026", "Dungeon Legend Page" },
		{ "s5312", "Forest" },
		{ "s5410a_SC", "Burrs at Campsite" },
		{ "s2400", "Glockenspiel Done" },
		{ "ControlsScript_SC", "Zap-Up Start" },
		{ "s2700", "Zap-Up Done" },
		{ "s4301", "Book Overlay" },
		{ "s3829", "Anjas Key" },
		{ "s3076", "Printed Emails" },
		{ "Win_Clocks_SC", "Clock Opened" },
		{ "EnigmaScript_SC", "Enigma 1 Start" },
		{ "ComboScript_SC", "Dayplanner Start" },
		{ "s4015", "Dayplanner Opened" },
		{ "KeypadScript_SC", "Karls Cabinet Start" },
		{ "s4000", "Karls Cabinet Opened" },
		{ "s2702", "Courtyard Monster on Camera" },
		{ "Cinematic_CreatureHit_SC", "Monster Jumpscare" },
		{ "TrafficScript01_SC", "Slider 1 Start" },
		{ "TrafficScript02_SC", "Slider 2 Start" },
		{ "TrafficScript03_SC", "Slider 3 Start" },
		{ "Winch_Win_SC", "Sliders Done" },
		{ "SequenceScript_SC", "Hex Puzzle Start" },
		{ "Sequence_Win_SC", "Hex Puzzle Done" },
		{ "s4862b_SC", "Passages Legend Page" },
		{ "s4852", "Enigma 2 Page" },
		{ "s4863", "Barrel Opened" },
		{ "DigScript_SC", "Dig for Necklace" },
		{ "SOL_from_PAS_SC", "Nancys Room from Passages" },
		{ "s3513", "Shredded Clothes" },
		{ "s2340", "Stilts" },
		{ "s1457", "Tell Anja about Castle Cast" },
		{ "s4100", "Monster Alert 2" },
		{ "s2701", "See Monster in Glass Shop" },
		{ "s4534", "Glass Shop Footprints" },
		{ "s4351", "Caught Lukas as Monster" },
		{ "s1072", "Tell Karl About Lukas" },
		{ "FOR_CreaturePicture_SC", "See Monster at Tree" },
		{ "s2704", "See Anja Leaving Castle" },
		{ "s3515", "Look at Postcard" },
		{ "s1082", "Show Karl Proof" },
		{ "s1085", "Lukas Missing" },
		{ "s5029", "Find Lukas in Dungeon" },
		{ "s5204", "#FreeLukas" },
		{ "s5200", "KO" },
		{ "SlidersScript_SC", "Entkommen Start" },
		{ "s5210", "Entkommen Done" },
		{ "s4861", "Forged Email" },
		{ "s5208a_SC", "Necklace Trap" },
	};

	// All Awards Splits
	var award = new Dictionary<string, string>
	{
		{ "RaidScript_SC", "Raid" },
		{ "s1126", "Karl Character 1" },
		{ "s1115", "Karl Character 2" },
		{ "MonsterTut_SC", "Monster Tutorial Start" },
		{ "s1116", "Karl Character 3" },
		{ "s1117", "Karl Character 4" },
		{ "s1118", "Karl Character 5" },
		{ "s1119", "Card Ready" },
	};

	// Death% Splits
	var death = new Dictionary<string, string>
	{
		{ "Cinematic_MatchBucket_SC", "Bell Rung" },
		{ "Cinematic_LukasGreet2_SC", "Match Solved" }
	};

	// Settings
	settings.Add("reset",true,"Auto reset at difficulty select");
	settings.Add("award", false, "All Awards");
	settings.Add("death", false, "Death%");
	settings.Add("universal", true, "Universal Splits");

	foreach (var entry in universal)
		settings.Add(entry.Key, false, entry.Value, "universal");

	foreach (var entry in award)
		settings.Add(entry.Key, false, entry.Value, "award");

	foreach (var entry in death)
		settings.Add(entry.Key, false, entry.Value, "death");

	vars.completedSplits = new HashSet<string>();
}

onStart {
	vars.completedSplits.Clear();
}

start {
	if (current.scene == "Cinematic_Opening_SC") {
		vars.deathp = !settings["deathp"];
		vars.reset = !settings["reset"];
		return true;
	}
}

split {
	if (old.scene == current.scene)
		return false;

	return current.scene == "SecondChance_Type_SC" && !vars.death // Death% end
	|| current.scene == "MetaAwards_SC" && !vars.award // All Awards end
	|| current.scene == "CLS_LetterA_SC" // Universal end
	|| settings[current.scene] && vars.completedSplits.Add(current.scene); // All other splits
}

reset {
	return !vars.reset
		&& old.scene != current.scene
		&& current.scene == "Badges_SC";
}
