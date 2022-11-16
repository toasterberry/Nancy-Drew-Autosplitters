// Danger on Deception Island Autosplitter
// Written by toburr | Fixed by Toasterberry 
// DM me at twitch.tv/toburr or on discord for questions/feedback

state("Game")
{
	//uint sceneval : 0x7C124, 0x8;
	uint sceneval : 0x7C124, 0x8;
	uint titlescreen : 0xDFA00, 0x64; // 0 = title screen, 1 = in game
}

//update
//{
//  if (current.sceneval != old.sceneval) {
//    vars.DebugOutput("Sceneval changed: "+current.sceneval);
//  }
//}

startup
{
	// Autosplitter settings
	settings.Add("introskip",false,"Skip all the letters");
	settings.Add("smove",false,"Straight movement");
	settings.Add("jmove",false,"Jank Turns");
	settings.Add("bike",false,"Bike time");
	settings.Add("dpath",false,"Path to death");
}

start
{
	if (current.sceneval == 5900) {
		vars.introskip = !settings["introskip"];
		vars.smove = !settings["smove"];
		vars.jmove = !settings["jmove"];
		vars.bike = !settings["bike"];
		vars.dpath = !settings["dpath"];


		return true;
	}
}

split
{
	uint s = current.sceneval;
	uint t = current.titlescreen;
	switch (s) {
		case 1001:
			if (!vars.introskip) { vars.introskip = true; return true; }
			break;
			
		case 2344: // Straight moement
			if (!vars.smove) { vars.smove = true; return true; }
			break;
			
		case 2311: // Success
			if (!vars.jmove) { vars.jmove = true; return true; }
			break;
			
		case 2596: // Bike time
			if (!vars.bike) { vars.bike = true; return true; }
			break;
			
		case 6244: // 
			if (!vars.dpath) { vars.dpath = true; return true; }
			break;
		
	}
	switch (t) {
		case 0:
			return true; // End
	}
	
}
