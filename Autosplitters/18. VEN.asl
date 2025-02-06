// Nancy Drew: The Phantom of Venice
// Written by Toasterberry, splits by Yandema, ersapon is a member of the community
// https://linktr.ee/toasterberry

state("PhantomOfVenice") {
	string10 scene : 0xFDDD8, 0x21, 0x4, 0x18, 0x3E, 0x31, 0x0;
}

startup {
	// Universal Splits
	var universal = new Dictionary<string, string>
	{
		{ "s1271", "Colin" },
		{ "s2320", "Helena" },
		{ "s2333", "Banco Del Oro Card" },
		{ "s5203", "Buy Bird Seed" },
		{ "s4121", "Pick up Binoculars" },
		{ "s2946", "Fango's Door is Locked" },
		{ "s1000", "Margherita" },
		{ "s2036", "Spy on Fango" },
		{ "s1611", "Answer Prudence Call" },
		{ "s3544", "Hairpin" },
		{ "s4724", "Found Bug" },
		{ "s2925", "In Fango's Office" },
		{ "s2943", "Hidden in the Closet" },
		{ "s4421", "Correct Pigeon" },
		{ "s4419", "Translated Samantha Quick Note" },
		{ "s5227", "Sunglasses" },
		{ "s2334", "More Chocolates" },
		{ "s1300", "Enrico" },
		{ "s4460", "Scopa Explanation Start" },
		{ "s1317", "Scopa Start" },
		{ "s1314", "Scopa Done" },
		{ "s2930", "Fango's Computer" },
		{ "s3545", "Attacked by Phantom" },
		{ "s2037", "Margherita in Argon Office" },
		{ "s5819", "Rialto Market Bottle" },
		{ "s3252", "Tesserae 1 Start" },
		{ "s3253", "Tesserae 2 Start" },
		{ "s3254", "Tesserae 3 Start" },
		{ "s3255", "Tesserae 4 Start" },
		{ "s3251", "Tesserae Done" },
		{ "s2602", "Dancing Start" },
		{ "s2750", "Dancing Won" },
		{ "s5005", "Falling Urn" },
		{ "s3800", "At Zattere" },
		{ "s3805", "Zattere Unlocked" },
		{ "s3872", "(Zattere) Top Middle Room" },
		{ "s3873", "(Zattere) Top Right Room" },
		{ "s3891", "Levers 1" },
		{ "s3876", "(Zattere) Middle Right Room" },
		{ "s3879", "(Zattere) Bottom Right Room" },
		{ "s3893", "Levers 2" },
		{ "s3878", "(Zattere) Middle Bottom Room" },
		{ "s3877", "(Zattere) Bottom Left Room" },
		{ "s3892", "Levers 3" },
		{ "s3874", "(Zattere) Middle Left Room" },
		{ "s3871", "(Zattere) Top Left Room" },
		{ "s3890", "Levers 4" },
		{ "s3851", "Got Sapphire" },
		{ "s4126", "ATM Bugs" },
		{ "s1332", "Delivered Sapphire" },
		{ "s3272", "Puzzle Box Opened" },
		{ "s3522", "End of Day 2" },
		{ "s3235", "Pen Bug Planting" },
		{ "s1045", "See Back of Flyer" },
		{ "s2991", "See Scopa Cards" },
		{ "s3000", "111#046" },
		{ "s3573", "Last Page of Italian Guide" },
		{ "s5617", "Stakeout" },
		{ "s5621", "Stakeout Done" },
		{ "s4422", "Propano Key" },
		{ "s6730", "Drains Start" },
		{ "s6616", "Drains Done" },
		{ "s6709", "Locked in Safe Room" },
		{ "s6719", "Escaped from Tunnels" },
		{ "s5490", "Captured Helena" },
	};

	// Death% Splits
	var death = new Dictionary<string, string>
	{
		{ "nothing000", "Coming Soon" },
	};

	// Settings
	settings.Add("reset",false,"Auto reset at difficulty select");
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
	if (current.scene == "s6420") {
		vars.death = !settings["death"];
		vars.reset = !settings["reset"];
		return true;
	}
}

split {
	if (old.scene == current.scene)
		return false;

	return current.scene == "s6500" // Universal end
		|| settings[current.scene] && vars.completedSplits.Add(current.scene); // All other splits
}

reset {
	return !vars.reset
		&& old.scene != current.scene
		&& current.scene == "s6455";
}
