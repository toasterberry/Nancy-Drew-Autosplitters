// Nancy Drew: The Phantom of Venice
// Written by Toasterberry, Scenes by Yandema
// https://linktr.ee/toasterberry

state("Ransom") {
    string10 scene : "Ransom.exe", 0x13E7F0, 0xC, 0x11C, 0x8, 0x10, 0x70, 0x8, 0x0;
}

startup {
    // Settings
	settings.Add("autorst",false,"Auto reset at difficulty select");
    
    // Universal Splits
    settings.Add("unisplt", true, "Universal Splits");
    settings.Add("ShedKey",false,"Shed Key", "unisplt");
    settings.Add("BatLocatorStart",false,"Bat Locator Start", "unisplt");
    settings.Add("ClosetLockStart",false,"Closet Lock Start", "unisplt");
    settings.Add("ClosetOpened",false,"Closet Opened", "unisplt");
    settings.Add("ShedOpened",false,"Shed Opened", "unisplt");
    settings.Add("GolfCartStart",false,"Golf Cart Start", "unisplt");
    settings.Add("GolfCartDone",false,"Golf Cart Done", "unisplt");
    settings.Add("SharkCoveStart",false,"Shark Cove Start", "unisplt");
    settings.Add("JournalFound",false,"Journal Found", "unisplt");
    settings.Add("SeeMissingPulley",false,"See Missing Pulley", "unisplt");
    settings.Add("CaughtinSnareTrap",false,"Caught in Snare Trap", "unisplt");
    settings.Add("AskforBattery",false,"Ask for Battery", "unisplt");
    settings.Add("AskforMetalDetector",false,"Ask for Metal Detector", "unisplt");
    settings.Add("SeeMonkeysonCliff",false,"See Monkeys on Cliff", "unisplt");
    settings.Add("AtMonkeyFacility",false,"At Monkey Facility", "unisplt");
    settings.Add("LandRushStart",false,"Land Rush Start", "unisplt");
    settings.Add("LandRushDone",false,"Land Rush Done", "unisplt");
    settings.Add("LandRush2Done",false,"Land Rush 2 Done", "unisplt");
    settings.Add("CoconutsStart",false,"Coconuts Start", "unisplt");
    settings.Add("GaveJohnnyCompass",false,"Gave Johnny Compass", "unisplt");
    settings.Add("SailingStart",false,"Sailing Start", "unisplt");
    settings.Add("AtDivingSpot",false,"At Diving Spot", "unisplt");
    settings.Add("Urchin",false,"Urchin", "unisplt");
    settings.Add("UnderwaterSudokuStart",false,"Underwater Sudoku Start", "unisplt");
    settings.Add("UnderwaterSudokuDone",false,"Underwater Sudoku Done", "unisplt");
    settings.Add("BacktoResort",false,"Back to Resort", "unisplt");
    settings.Add("FruitBowl",false,"Fruit Bowl", "unisplt");
    settings.Add("MeetCoucou",false,"Meet Coucou", "unisplt");
    settings.Add("Coucouwantdriftwood",false,"Coucou want driftwood", "unisplt");
    settings.Add("CorrectPerch",false,"Correct Perch", "unisplt");
    settings.Add("AskforGlowstick",false,"Ask for Glowstick", "unisplt");
    settings.Add("Astrolabe",false,"Astrolabe", "unisplt");
    settings.Add("CorrectCave",false,"Correct Cave", "unisplt");
    settings.Add("MirrorPuzzleSolved",false,"Mirror Puzzle Solved", "unisplt");
    settings.Add("JigsawStart",false,"Jigsaw Start", "unisplt");
    settings.Add("SliderDone",false,"Slider Done", "unisplt");
    settings.Add("GPSdone",false,"GPS done", "unisplt");
    settings.Add("DoveIsle",false,"Dove Isle", "unisplt");
    settings.Add("AtochaPlaque",false,"Atocha Plaque", "unisplt");
    settings.Add("SpinnerGameStart",false,"Spinner Game Start", "unisplt");
    settings.Add("AtochaDone",false,"Atocha Done", "unisplt");
    settings.Add("HalfmoonReef",false,"Halfmoon Reef", "unisplt");
    settings.Add("Shell",false,"Shell", "unisplt");
    settings.Add("SquaresBoxStart",false,"Squares Box Start", "unisplt");
    settings.Add("SquaresBoxDone",false,"Squares Box Done", "unisplt");
    settings.Add("BeachcombforCoins",false,"Beachcomb for Coins", "unisplt");
    settings.Add("BeachcombingDone",false,"Beachcombing Done", "unisplt");
    settings.Add("HourglassesStart",false,"Hourglasses Start", "unisplt");
    settings.Add("HourglassesDone",false,"Hourglasses Done", "unisplt");
    settings.Add("SeeDropoffNote",false,"See Dropoff Note", "unisplt");
    settings.Add("GiveJohnnyMap",false,"Give Johnny Map", "unisplt");
    settings.Add("TrappedinHole",false,"Trapped in Hole", "unisplt");
    settings.Add("UnlockedCaveDoor1",false,"Unlocked Cave Door 1", "unisplt");
    settings.Add("UnlockedCaveDoor2",false,"Unlocked Cave Door 2", "unisplt");
    
    // Death%
    settings.Add("deathp", false, "Death%");
    settings.Add("LetterSkip",false,"Letter Skip", "deathp");
    settings.Add("ShedKeyObtained",false,"Shed Key Obtained", "deathp");
    settings.Add("CartPart",false,"Cart Part", "deathp");
    settings.Add("End",false,"End", "deathp");
}

start {

    if (current.scene == "s6459") {
        vars.reset = !settings["autorst"];
		
		// Universal Splits
        vars.ShedKey = !settings["ShedKey"];
        vars.BatLocatorStart = !settings["BatLocatorStart"];
        vars.ClosetLockStart = !settings["ClosetLockStart"];
        vars.ClosetOpened = !settings["ClosetOpened"];
        vars.ShedOpened = !settings["ShedOpened"];
        vars.GolfCartStart = !settings["GolfCartStart"];
        vars.GolfCartDone = !settings["GolfCartDone"];
        vars.SharkCoveStart = !settings["SharkCoveStart"];
        vars.JournalFound = !settings["JournalFound"];
        vars.SeeMissingPulley = !settings["SeeMissingPulley"];
        vars.CaughtinSnareTrap = !settings["CaughtinSnareTrap"];
        vars.AskforBattery = !settings["AskforBattery"];
        vars.AskforMetalDetector = !settings["AskforMetalDetector"];
        vars.SeeMonkeysonCliff = !settings["SeeMonkeysonCliff"];
        vars.AtMonkeyFacility = !settings["AtMonkeyFacility"];
        vars.LandRushStart = !settings["LandRushStart"];
        vars.LandRushDone = !settings["LandRushDone"];
        vars.LandRush2Done = !settings["LandRush2Done"];
        vars.CoconutsStart = !settings["CoconutsStart"];
        vars.GaveJohnnyCompass = !settings["GaveJohnnyCompass"];
        vars.SailingStart = !settings["SailingStart"];
        vars.AtDivingSpot = !settings["AtDivingSpot"];
        vars.Urchin = !settings["Urchin"];
        vars.UnderwaterSudokuStart = !settings["UnderwaterSudokuStart"];
        vars.UnderwaterSudokuDone = !settings["UnderwaterSudokuDone"];
        vars.BacktoResort = !settings["BacktoResort"];
        vars.FruitBowl = !settings["FruitBowl"];
        vars.MeetCoucou = !settings["MeetCoucou"];
        vars.Coucouwantdriftwood = !settings["Coucouwantdriftwood"];
        vars.CorrectPerch = !settings["CorrectPerch"];
        vars.AskforGlowstick = !settings["AskforGlowstick"];
        vars.Astrolabe = !settings["Astrolabe"];
        vars.CorrectCave = !settings["CorrectCave"];
        vars.MirrorPuzzleSolved = !settings["MirrorPuzzleSolved"];
        vars.JigsawStart = !settings["JigsawStart"];
        vars.SliderDone = !settings["SliderDone"];
        vars.GPSdone = !settings["GPSdone"];
        vars.DoveIsle = !settings["DoveIsle"];
        vars.AtochaPlaque = !settings["AtochaPlaque"];
        vars.SpinnerGameStart = !settings["SpinnerGameStart"];
        vars.AtochaDone = !settings["AtochaDone"];
        vars.HalfmoonReef = !settings["HalfmoonReef"];
        vars.Shell = !settings["Shell"];
        vars.SquaresBoxStart = !settings["SquaresBoxStart"];
        vars.SquaresBoxDone = !settings["SquaresBoxDone"];
        vars.BeachcombforCoins = !settings["BeachcombforCoins"];
        vars.BeachcombingDone = !settings["BeachcombingDone"];
        vars.HourglassesStart = !settings["HourglassesStart"];
        vars.HourglassesDone = !settings["HourglassesDone"];
        vars.SeeDropoffNote = !settings["SeeDropoffNote"];
        vars.GiveJohnnyMap = !settings["GiveJohnnyMap"];
        vars.TrappedinHole = !settings["TrappedinHole"];
        vars.UnlockedCaveDoor1 = !settings["UnlockedCaveDoor1"];
        vars.UnlockedCaveDoor2 = !settings["UnlockedCaveDoor2"];
		
        // Death%
        vars.LetterSkip = !settings["LetterSkip"];
        vars.ShedKeyObtained = !settings["ShedKeyObtained"];
        vars.CartPart = !settings["CartPart"];
        vars.End = !settings["End"];
        return true;
    }
}

split {
    string s = current.scene;
    switch (s) {
        case "s6498": //Death% End
			return true;
			
		case "s6494": //Universal End
			return true;
		
		//Universal Splits
		case "s1021b_SC":
    if (!vars.ShedKey) { vars.ShedKey = true; return true; }
    break;
        case "s3198":
    if (!vars.BatLocatorStart) { vars.BatLocatorStart = true; return true; }
    break;
        case "s3199":
    if (!vars.ClosetLockStart) { vars.ClosetLockStart = true; return true; }
    break;
        case "s2945":
    if (!vars.ClosetOpened) { vars.ClosetOpened = true; return true; }
    break;
        case "s3230":
    if (!vars.ShedOpened) { vars.ShedOpened = true; return true; }
    break;
        case "s3250":
    if (!vars.GolfCartStart) { vars.GolfCartStart = true; return true; }
    break;
        case "s3255":
    if (!vars.GolfCartDone) { vars.GolfCartDone = true; return true; }
    break;
        case "s5150":
    if (!vars.SharkCoveStart) { vars.SharkCoveStart = true; return true; }
    break;
        case "s5105":
    if (!vars.JournalFound) { vars.JournalFound = true; return true; }
    break;
        case "s2323":
    if (!vars.SeeMissingPulley) { vars.SeeMissingPulley = true; return true; }
    break;
        case "s4718":
    if (!vars.CaughtinSnareTrap) { vars.CaughtinSnareTrap = true; return true; }
    break;
        case "s1135":
    if (!vars.AskforBattery) { vars.AskforBattery = true; return true; }
    break;
        case "s1128":
    if (!vars.AskforMetalDetector) { vars.AskforMetalDetector = true; return true; }
    break;
        case "s2052":
    if (!vars.SeeMonkeysonCliff) { vars.SeeMonkeysonCliff = true; return true; }
    break;
        case "s4105":
    if (!vars.AtMonkeyFacility) { vars.AtMonkeyFacility = true; return true; }
    break;
        case "s4399":
    if (!vars.LandRushStart) { vars.LandRushStart = true; return true; }
    break;
        case "s4108":
    if (!vars.LandRushDone) { vars.LandRushDone = true; return true; }
    break;
        case "s4109":
    if (!vars.LandRush2Done) { vars.LandRush2Done = true; return true; }
    break;
        case "s4398":
    if (!vars.CoconutsStart) { vars.CoconutsStart = true; return true; }
    break;
        case "":
    if (!vars.GaveJohnnyCompass) { vars.GaveJohnnyCompass = true; return true; }
    break;
        case "5400":
    if (!vars.SailingStart) { vars.SailingStart = true; return true; }
    break;
        case "s2610":
    if (!vars.AtDivingSpot) { vars.AtDivingSpot = true; return true; }
    break;
        case "s2631":
    if (!vars.Urchin) { vars.Urchin = true; return true; }
    break;
        case "s2650":
    if (!vars.UnderwaterSudokuStart) { vars.UnderwaterSudokuStart = true; return true; }
    break;
        case "s2652":
    if (!vars.UnderwaterSudokuDone) { vars.UnderwaterSudokuDone = true; return true; }
    break;
        case "s3210":
    if (!vars.BacktoResort) { vars.BacktoResort = true; return true; }
    break;
        case "s2918":
    if (!vars.FruitBowl) { vars.FruitBowl = true; return true; }
    break;
        case "s1500":
    if (!vars.MeetCoucou) { vars.MeetCoucou = true; return true; }
    break;
        case "s1559":
    if (!vars.Coucouwantdriftwood) { vars.Coucouwantdriftwood = true; return true; }
    break;
        case "s1565a_SC":
    if (!vars.CorrectPerch) { vars.CorrectPerch = true; return true; }
    break;
        case "s1148":
    if (!vars.AskforGlowstick) { vars.AskforGlowstick = true; return true; }
    break;
        case "s2299":
    if (!vars.Astrolabe) { vars.Astrolabe = true; return true; }
    break;
        case "s2065":
    if (!vars.CorrectCave) { vars.CorrectCave = true; return true; }
    break;
        case "s2290":
    if (!vars.MirrorPuzzleSolved) { vars.MirrorPuzzleSolved = true; return true; }
    break;
        case "s2296":
    if (!vars.JigsawStart) { vars.JigsawStart = true; return true; }
    break;
        case "s2297":
    if (!vars.SliderDone) { vars.SliderDone = true; return true; }
    break;
        case "s1153":
    if (!vars.GPSdone) { vars.GPSdone = true; return true; }
    break;
        case "s3500":
    if (!vars.DoveIsle) { vars.DoveIsle = true; return true; }
    break;
        case "s3238":
    if (!vars.AtochaPlaque) { vars.AtochaPlaque = true; return true; }
    break;
        case "s4397":
    if (!vars.SpinnerGameStart) { vars.SpinnerGameStart = true; return true; }
    break;
        case "s3506":
    if (!vars.AtochaDone) { vars.AtochaDone = true; return true; }
    break;
        case "s4500":
    if (!vars.HalfmoonReef) { vars.HalfmoonReef = true; return true; }
    break;
        case "s4403":
    if (!vars.Shell) { vars.Shell = true; return true; }
    break;
        case "s4698":
    if (!vars.SquaresBoxStart) { vars.SquaresBoxStart = true; return true; }
    break;
        case "s4401":
    if (!vars.SquaresBoxDone) { vars.SquaresBoxDone = true; return true; }
    break;
        case "s5297":
    if (!vars.BeachcombforCoins) { vars.BeachcombforCoins = true; return true; }
    break;
        case "s5100":
    if (!vars.BeachcombingDone) { vars.BeachcombingDone = true; return true; }
    break;
        case "s2340":
    if (!vars.HourglassesStart) { vars.HourglassesStart = true; return true; }
    break;
        case "s2345":
    if (!vars.HourglassesDone) { vars.HourglassesDone = true; return true; }
    break;
        case "s1081":
    if (!vars.SeeDropoffNote) { vars.SeeDropoffNote = true; return true; }
    break;
        case "s1176":
    if (!vars.GiveJohnnyMap) { vars.GiveJohnnyMap = true; return true; }
    break;
        case "s3898":
    if (!vars.TrappedinHole) { vars.TrappedinHole = true; return true; }
    break;
        case "s3895":
    if (!vars.UnlockedCaveDoor1) { vars.UnlockedCaveDoor1 = true; return true; }
    break;
        case "s3860":
    if (!vars.UnlockedCaveDoor2) { vars.UnlockedCaveDoor2 = true; return true; }
    break;
        
		//Death% Splits
		case "s1001":
    if (!vars.LetterSkip) { vars.LetterSkip = true; return true; }
    break;
        case "s1022":
    if (!vars.ShedKeyObtained) { vars.ShedKeyObtained = true; return true; }
    break;
        case "s3235":
    if (!vars.CartPart) { vars.CartPart = true; return true; }
    break;
    }
}

reset {
	if (!vars.reset && current.scene == "s6496") {
		return true; 
	}
}
