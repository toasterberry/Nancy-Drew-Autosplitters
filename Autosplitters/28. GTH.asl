// Nancy Drew: Ghost of Thornton Hall
// Written by Toasterberry, splits by Yandema
// https://linktr.ee/toasterberry

state("Thornton") {
    string20 scene : "Thornton.exe", 0x17AA04, 0x8, 0x5C, 0x7C, 0x8, 0x0;
}

startup {
    // Settings
	settings.Add("reset",false,"Auto reset at difficulty select");
    
    // Universal Splits
    settings.Add("unisplt", true, "Universal Splits");
    settings.Add("AtBlackrockIsland",false,"At Blackrock Island", "unisplt");
    settings.Add("MeetColton",false,"Meet Colton", "unisplt");
    settings.Add("Hammer",false,"Hammer", "unisplt");
    settings.Add("Oranges",false,"Oranges", "unisplt");
    settings.Add("Coins",false,"Coins", "unisplt");
    settings.Add("Nails",false,"Nails", "unisplt");
    settings.Add("ChargePuzzleStart",false,"Charge Puzzle Start", "unisplt");
    settings.Add("PhoneCharged",false,"Phone Charged", "unisplt");
    settings.Add("SpiderJumpscare",false,"Spider Jumpscare", "unisplt");
    settings.Add("FlowerPlate",false,"Flower Plate", "unisplt");
    settings.Add("GetSixToken",false,"Get Six Token", "unisplt");
    settings.Add("NumbersStart",false,"Numbers Start", "unisplt");
    settings.Add("MeetJessalyn",false,"Meet Jessalyn", "unisplt");
    settings.Add("DistractClara",false,"Distract Clara", "unisplt");
    settings.Add("GotNecklace",false,"Got Necklace", "unisplt");
    settings.Add("TunnelTooDark",false,"Tunnel Too Dark", "unisplt");
    settings.Add("LocketPuzzleDone",false,"Locket Puzzle Done", "unisplt");
    settings.Add("MotorPuzzleStart",false,"Motor Puzzle Start", "unisplt");
    settings.Add("MotorPuzzleDone",false,"Motor Puzzle Done", "unisplt");
    settings.Add("ColtonsPaper",false,"Coltons Paper", "unisplt");
    settings.Add("SafeStart",false,"Safe Start", "unisplt");
    settings.Add("CharlottesWill",false,"Charlottes Will", "unisplt");
    
    // Death%
    settings.Add("deathp", false, "Death%");
	settings.Add("dGuy",false,"iPod", "deathp");
	settings.Add("dMove",false,"Movin", "deathp");
}

start {

    if (current.scene == "CINEMATIC_OPENING_SC") {
        // Settings
        vars.reset = !settings["reset"];
        
        // Universal Splits
        vars.AtBlackrockIsland = !settings["AtBlackrockIsland"];
        vars.MeetColton = !settings["MeetColton"];
        vars.Hammer = !settings["Hammer"];
        vars.Oranges = !settings["Oranges"];
        vars.Coins = !settings["Coins"];
        vars.Nails = !settings["Nails"];
        vars.ChargePuzzleStart = !settings["ChargePuzzleStart"];
        vars.PhoneCharged = !settings["PhoneCharged"];
        vars.SpiderJumpscare = !settings["SpiderJumpscare"];
        vars.FlowerPlate = !settings["FlowerPlate"];
        vars.GetSixToken = !settings["GetSixToken"];
        vars.NumbersStart = !settings["NumbersStart"];
        vars.MeetJessalyn = !settings["MeetJessalyn"];
        vars.DistractClara = !settings["DistractClara"];
        vars.GotNecklace = !settings["GotNecklace"];
        vars.TunnelTooDark = !settings["TunnelTooDark"];
        vars.LocketPuzzleDone = !settings["LocketPuzzleDone"];
        vars.MotorPuzzleStart = !settings["MotorPuzzleStart"];
        vars.MotorPuzzleDone = !settings["MotorPuzzleDone"];
        vars.ColtonsPaper = !settings["ColtonsPaper"];
        vars.SafeStart = !settings["SafeStart"];
        vars.CharlottesWill = !settings["CharlottesWill"];
        // Death%
        vars.deathp = !settings["deathp"];
		vars.dGuy = !settings["dGuy"];
		vars.dMove = !settings["dMove"];
        return true;
    }
}

split {
    string s = current.scene;
    switch (s) {
        case "UI_SECONDCHANCE_SC": // Death% End
			if (!vars.deathp) { return true; }
			else break;
            
        case "S3260": // Universal End
			return true;
            
        // Death% Splits
		case "S3203":
			if (!vars.dGuy) { vars.dGuy = true; return true; }
			break;
		case "S1212A_SC":
			if (!vars.dMove) { vars.dMove = true; return true; }
			break;
        
        // Universal Splits
        case "S3250":
    if (!vars.AtBlackrockIsland) { vars.AtBlackrockIsland = true; return true; }
    break;
        case "S1201A_SC":
    if (!vars.MeetColton) { vars.MeetColton = true; return true; }
    break;
        case "S3407A_SC":
    if (!vars.Hammer) { vars.Hammer = true; return true; }
    break;
        case "S2060":
    if (!vars.Oranges) { vars.Oranges = true; return true; }
    break;
        case "S3813A_SC":
    if (!vars.Coins) { vars.Coins = true; return true; }
    break;
        case "S3814C_SC":
    if (!vars.Nails) { vars.Nails = true; return true; }
    break;
        case "Battery_SC":
    if (!vars.ChargePuzzleStart) { vars.ChargePuzzleStart = true; return true; }
    break;
        case "PASSWORD_SC":
    if (!vars.PhoneCharged) { vars.PhoneCharged = true; return true; }
    break;
        case "S2031":
    if (!vars.SpiderJumpscare) { vars.SpiderJumpscare = true; return true; }
    break;
        case "S2265":
    if (!vars.FlowerPlate) { vars.FlowerPlate = true; return true; }
    break;
        case "S3033A_SC":
    if (!vars.GetSixToken) { vars.GetSixToken = true; return true; }
    break;
        case "PANEL_SC":
    if (!vars.NumbersStart) { vars.NumbersStart = true; return true; }
    break;
        case "JESSCINE1_SC":
    if (!vars.MeetJessalyn) { vars.MeetJessalyn = true; return true; }
    break;
        case "S2301":
    if (!vars.DistractClara) { vars.DistractClara = true; return true; }
    break;
        case "S2063":
    if (!vars.GotNecklace) { vars.GotNecklace = true; return true; }
    break;
        case "S2231":
    if (!vars.TunnelTooDark) { vars.TunnelTooDark = true; return true; }
    break;
        case "PINSWIN_SC":
    if (!vars.LocketPuzzleDone) { vars.LocketPuzzleDone = true; return true; }
    break;
        case "MOTOR_SC":
    if (!vars.MotorPuzzleStart) { vars.MotorPuzzleStart = true; return true; }
    break;
        case "MOTORWIN_SC":
    if (!vars.MotorPuzzleDone) { vars.MotorPuzzleDone = true; return true; }
    break;
        case "S1287B_SC":
    if (!vars.ColtonsPaper) { vars.ColtonsPaper = true; return true; }
    break;
        case "COMBO_SC":
    if (!vars.SafeStart) { vars.SafeStart = true; return true; }
    break;
        case "S2296":
    if (!vars.CharlottesWill) { vars.CharlottesWill = true; return true; }
    break;
        
    }
}

reset {
	if (!vars.reset && current.scene == "Badges_SC") {
		return true; 
	}
}
