// Nancy Drew: Tomb of the Lost Queen
// Written by Toasterberry, splits by Yandema
// https://linktr.ee/toasterberry

state("DeadlyDevice") {
    string20 scene : "DeadlyDevice.exe", 0x17484c, 0x8, 0x5c, 0x0, 0x0;
}

startup {
    // Settings
	settings.Add("reset",false,"Auto reset at difficulty select");
    
    // Universal Splits
    settings.Add("unisplt", true, "Universal Splits");
    settings.Add("AtAlarmClock",false,"At Alarm Clock", "unisplt");
    settings.Add("AggregationStart",false,"Aggregation Start", "unisplt");
    settings.Add("AggregationDone",false,"Aggregation Done", "unisplt");
    settings.Add("MeetMason",false,"Meet Mason", "unisplt");
    settings.Add("BinaryBoard",false,"Binary Board", "unisplt");
    settings.Add("MeetRyan",false,"Meet Ryan", "unisplt");
    settings.Add("MeetEllie",false,"Meet Ellie", "unisplt");
    settings.Add("BiometryBook",false,"Biometry Book", "unisplt");
    settings.Add("ComputerTrashBin",false,"Computer Trash Bin", "unisplt");
    settings.Add("WallAlarm",false,"Wall Alarm", "unisplt");
    settings.Add("InGraysOffice",false,"In Grays Office", "unisplt");
    settings.Add("ZapUpStart",false,"ZapUp Start", "unisplt");
    settings.Add("BinaryStart",false,"Binary Start", "unisplt");
    settings.Add("KeycardLogs",false,"Keycard Logs", "unisplt");
    settings.Add("KeycardPuzzleStart",false,"Keycard Puzzle Start", "unisplt");
    settings.Add("InLab",false,"In Lab", "unisplt");
    settings.Add("PartMissinginCoil",false,"Part Missing in Coil", "unisplt");
    settings.Add("SeeSmallCoil",false,"See Small Coil", "unisplt");
    settings.Add("CabinetUnlocked",false,"Cabinet Unlocked", "unisplt");
    settings.Add("TeslaCoilBook",false,"Tesla Coil Book", "unisplt");
    settings.Add("EllieDistracted",false,"Ellie Distracted", "unisplt");
    settings.Add("AskRyanAboutMediaCard",false,"Ask Ryan About Media Card", "unisplt");
    settings.Add("MemoryLockStart",false,"Memory Lock Start", "unisplt");
    settings.Add("MemoryLockDone",false,"Memory Lock Done", "unisplt");
    settings.Add("DeliverCandyBar",false,"Deliver Candy Bar", "unisplt");
    settings.Add("MediaPlayer",false,"Media Player", "unisplt");
    settings.Add("ThreateningNotes",false,"Threatening Notes", "unisplt");
    settings.Add("ConfrontRyan",false,"Confront Ryan", "unisplt");
    settings.Add("KO",false,"KO", "unisplt");
    settings.Add("VentMazeDone",false,"Vent Maze Done", "unisplt");
    settings.Add("MeetGray",false,"Meet Gray", "unisplt");
    settings.Add("ElliesBookNotes",false,"Ellies Book Notes", "unisplt");
    settings.Add("PhonePuzzleStart",false,"Phone Puzzle Start", "unisplt");
    settings.Add("PhonePuzzleDone",false,"Phone Puzzle Done", "unisplt");
    settings.Add("GetShreddedPaper",false,"Get Shredded Paper", "unisplt");
    settings.Add("3DPrintStart",false,"3D Print Start", "unisplt");
    settings.Add("BookPuzzleDone",false,"Book Puzzle Done", "unisplt");
    settings.Add("PaperJigsaw",false,"Paper Jigsaw", "unisplt");
    settings.Add("PaperJigsawDone",false,"Paper Jigsaw Done", "unisplt");
    settings.Add("BangingonDoor",false,"Banging on Door", "unisplt");
    settings.Add("PianoStart",false,"Piano Start", "unisplt");
    settings.Add("TeslaCoilPart",false,"Tesla Coil Part", "unisplt");
    settings.Add("CoilFixed",false,"Coil Fixed", "unisplt");
    settings.Add("Blacklight",false,"Blacklight", "unisplt");
    settings.Add("SwitchesPuzzle",false,"Switches Puzzle", "unisplt");
    settings.Add("MeetVictor",false,"Meet Victor", "unisplt");
    settings.Add("NewKeycard",false,"New Keycard", "unisplt");
    settings.Add("ControlBoothUnlocked",false,"Control Booth Unlocked", "unisplt");
    settings.Add("EnteredtheHex",false,"Entered the Hex", "unisplt");
    settings.Add("NikosFingerprint",false,"Nikos Fingerprint", "unisplt");
    settings.Add("StealGummyBears",false,"Steal Gummy Bears", "unisplt");
    settings.Add("ElevatorGears",false,"Elevator Gears", "unisplt");
    settings.Add("EnteredNikosLab",false,"Entered Nikos Lab", "unisplt");
    settings.Add("PigeonLaser",false,"Pigeon Laser", "unisplt");
    settings.Add("Wardenclyffe",false,"Wardenclyffe", "unisplt");
    settings.Add("OscillatorDone",false,"Oscillator Done", "unisplt");
    settings.Add("ZapUp2Start",false,"Zap Up 2 Start", "unisplt");
    settings.Add("PlayFinalSecurityVideo",false,"Play Final Security Video", "unisplt");
    settings.Add("RyansChart",false,"Ryans Chart", "unisplt");
    settings.Add("RocketUSB",false,"Rocket USB", "unisplt");
    settings.Add("MadeAluminumBox",false,"Made Aluminum Box", "unisplt");
    settings.Add("TrappedinFaradayCage",false,"Trapped in Faraday Cage", "unisplt");
    settings.Add("FinalPuzzleStart",false,"Final Puzzle Start", "unisplt");
    settings.Add("FinalPuzzleDone",false,"Final Puzzle Done", "unisplt");
    
    // Death%
    settings.Add("deathp", false, "Death% (not done)");

}

start {

    if (current.scene == "CINEMATIC_OPENING_SC") {
        // Settings
		vars.reset = !settings["reset"];
		
		// Universal Splits
        vars.AtAlarmClock = !settings["AtAlarmClock"];
        vars.AggregationStart = !settings["AggregationStart"];
        vars.AggregationDone = !settings["AggregationDone"];
        vars.MeetMason = !settings["MeetMason"];
        vars.BinaryBoard = !settings["BinaryBoard"];
        vars.MeetRyan = !settings["MeetRyan"];
        vars.MeetEllie = !settings["MeetEllie"];
        vars.BiometryBook = !settings["BiometryBook"];
        vars.ComputerTrashBin = !settings["ComputerTrashBin"];
        vars.WallAlarm = !settings["WallAlarm"];
        vars.InGraysOffice = !settings["InGraysOffice"];
        vars.ZapUpStart = !settings["ZapUpStart"];
        vars.BinaryStart = !settings["BinaryStart"];
        vars.KeycardLogs = !settings["KeycardLogs"];
        vars.KeycardPuzzleStart = !settings["KeycardPuzzleStart"];
        vars.InLab = !settings["InLab"];
        vars.PartMissinginCoil = !settings["PartMissinginCoil"];
        vars.SeeSmallCoil = !settings["SeeSmallCoil"];
        vars.CabinetUnlocked = !settings["CabinetUnlocked"];
        vars.TeslaCoilBook = !settings["TeslaCoilBook"];
        vars.EllieDistracted = !settings["EllieDistracted"];
        vars.AskRyanAboutMediaCard = !settings["AskRyanAboutMediaCard"];
        vars.MemoryLockStart = !settings["MemoryLockStart"];
        vars.MemoryLockDone = !settings["MemoryLockDone"];
        vars.DeliverCandyBar = !settings["DeliverCandyBar"];
        vars.MediaPlayer = !settings["MediaPlayer"];
        vars.ThreateningNotes = !settings["ThreateningNotes"];
        vars.ConfrontRyan = !settings["ConfrontRyan"];
        vars.KO = !settings["KO"];
        vars.VentMazeDone = !settings["VentMazeDone"];
        vars.MeetGray = !settings["MeetGray"];
        vars.ElliesBookNotes = !settings["ElliesBookNotes"];
        vars.PhonePuzzleStart = !settings["PhonePuzzleStart"];
        vars.PhonePuzzleDone = !settings["PhonePuzzleDone"];
        vars.GetShreddedPaper = !settings["GetShreddedPaper"];
        vars.DPrintStart = !settings["3DPrintStart"];
        vars.BookPuzzleDone = !settings["BookPuzzleDone"];
        vars.PaperJigsaw = !settings["PaperJigsaw"];
        vars.PaperJigsawDone = !settings["PaperJigsawDone"];
        vars.BangingonDoor = !settings["BangingonDoor"];
        vars.PianoStart = !settings["PianoStart"];
        vars.TeslaCoilPart = !settings["TeslaCoilPart"];
        vars.CoilFixed = !settings["CoilFixed"];
        vars.Blacklight = !settings["Blacklight"];
        vars.SwitchesPuzzle = !settings["SwitchesPuzzle"];
        vars.MeetVictor = !settings["MeetVictor"];
        vars.NewKeycard = !settings["NewKeycard"];
        vars.ControlBoothUnlocked = !settings["ControlBoothUnlocked"];
        vars.EnteredtheHex = !settings["EnteredtheHex"];
        vars.NikosFingerprint = !settings["NikosFingerprint"];
        vars.StealGummyBears = !settings["StealGummyBears"];
        vars.ElevatorGears = !settings["ElevatorGears"];
        vars.EnteredNikosLab = !settings["EnteredNikosLab"];
        vars.PigeonLaser = !settings["PigeonLaser"];
        vars.Wardenclyffe = !settings["Wardenclyffe"];
        vars.OscillatorDone = !settings["OscillatorDone"];
        vars.ZapUp2Start = !settings["ZapUp2Start"];
        vars.PlayFinalSecurityVideo = !settings["PlayFinalSecurityVideo"];
        vars.RyansChart = !settings["RyansChart"];
        vars.RocketUSB = !settings["RocketUSB"];
        vars.MadeAluminumBox = !settings["MadeAluminumBox"];
        vars.TrappedinFaradayCage = !settings["TrappedinFaradayCage"];
        vars.FinalPuzzleStart = !settings["FinalPuzzleStart"];
        vars.FinalPuzzleDone = !settings["FinalPuzzleDone"];
        // Death%

        return true;
    }
}

split {
    string s = current.scene;
    switch (s) {
        case "CLOSINGLETTER_SC":
			return true;
		
		case "CLOCK_SC":
    if (!vars.AtAlarmClock) { vars.AtAlarmClock = true; return true; }
    break;
        case "AGGREGATIONGAME_SC":
    if (!vars.AggregationStart) { vars.AggregationStart = true; return true; }
    break;
        case "S2601":
    if (!vars.AggregationDone) { vars.AggregationDone = true; return true; }
    break;
        case "S1200":
    if (!vars.MeetMason) { vars.MeetMason = true; return true; }
    break;
        case "S2052":
    if (!vars.BinaryBoard) { vars.BinaryBoard = true; return true; }
    break;
        case "S1000":
    if (!vars.MeetRyan) { vars.MeetRyan = true; return true; }
    break;
        case "S1100":
    if (!vars.MeetEllie) { vars.MeetEllie = true; return true; }
    break;
        case "S3562":
    if (!vars.BiometryBook) { vars.BiometryBook = true; return true; }
    break;
        case "S3526":
    if (!vars.ComputerTrashBin) { vars.ComputerTrashBin = true; return true; }
    break;
        case "S2072":
    if (!vars.WallAlarm) { vars.WallAlarm = true; return true; }
    break;
        case "S3801":
    if (!vars.InGraysOffice) { vars.InGraysOffice = true; return true; }
    break;
        case "CONTROLS_SC":
    if (!vars.ZapUpStart) { vars.ZapUpStart = true; return true; }
    break;
        case "WHEEL_SC":
    if (!vars.BinaryStart) { vars.BinaryStart = true; return true; }
    break;
        case "S3825":
    if (!vars.KeycardLogs) { vars.KeycardLogs = true; return true; }
    break;
        case "PROGRAM_SC":
    if (!vars.KeycardPuzzleStart) { vars.KeycardPuzzleStart = true; return true; }
    break;
        case "2301":
    if (!vars.InLab) { vars.InLab = true; return true; }
    break;
        case "S4762":
    if (!vars.PartMissinginCoil) { vars.PartMissinginCoil = true; return true; }
    break;
        case "S2305":
    if (!vars.SeeSmallCoil) { vars.SeeSmallCoil = true; return true; }
    break;
        case "S2311":
    if (!vars.CabinetUnlocked) { vars.CabinetUnlocked = true; return true; }
    break;
        case "S3542":
    if (!vars.TeslaCoilBook) { vars.TeslaCoilBook = true; return true; }
    break;
        case "S1199C_SC":
    if (!vars.EllieDistracted) { vars.EllieDistracted = true; return true; }
    break;
        case "S1094A_SC":
    if (!vars.AskRyanAboutMediaCard) { vars.AskRyanAboutMediaCard = true; return true; }
    break;
        case "SIMON_SC":
    if (!vars.MemoryLockStart) { vars.MemoryLockStart = true; return true; }
    break;
        case "S2917":
    if (!vars.MemoryLockDone) { vars.MemoryLockDone = true; return true; }
    break;
        case "S1096":
    if (!vars.DeliverCandyBar) { vars.DeliverCandyBar = true; return true; }
    break;
        case "PLAYER_SC":
    if (!vars.MediaPlayer) { vars.MediaPlayer = true; return true; }
    break;
        case "S2665":
    if (!vars.ThreateningNotes) { vars.ThreateningNotes = true; return true; }
    break;
        case "S1023":
    if (!vars.ConfrontRyan) { vars.ConfrontRyan = true; return true; }
    break;
        case "S3208":
    if (!vars.KO) { vars.KO = true; return true; }
    break;
        case "S3210":
    if (!vars.VentMazeDone) { vars.VentMazeDone = true; return true; }
    break;
        case "S1300":
    if (!vars.MeetGray) { vars.MeetGray = true; return true; }
    break;
        case "S3546":
    if (!vars.ElliesBookNotes) { vars.ElliesBookNotes = true; return true; }
    break;
        case "NUMBERS_SC":
    if (!vars.PhonePuzzleStart) { vars.PhonePuzzleStart = true; return true; }
    break;
        case "S3548":
    if (!vars.PhonePuzzleDone) { vars.PhonePuzzleDone = true; return true; }
    break;
        case "S3806":
    if (!vars.GetShreddedPaper) { vars.GetShreddedPaper = true; return true; }
    break;
        case "PRINT_SC":
    if (!vars.DPrintStart) { vars.DPrintStart = true; return true; }
    break;
        case "S2635B_SC":
    if (!vars.BookPuzzleDone) { vars.BookPuzzleDone = true; return true; }
    break;
        case "JIGSAW_SC":
    if (!vars.PaperJigsaw) { vars.PaperJigsaw = true; return true; }
    break;
        case "S2680":
    if (!vars.PaperJigsawDone) { vars.PaperJigsawDone = true; return true; }
    break;
        case "DOORSCARE2_SC":
    if (!vars.BangingonDoor) { vars.BangingonDoor = true; return true; }
    break;
        case "SONGS_SC":
    if (!vars.PianoStart) { vars.PianoStart = true; return true; }
    break;
        case "PRINTOPEN_SC":
    if (!vars.TeslaCoilPart) { vars.TeslaCoilPart = true; return true; }
    break;
        case "S4763":
    if (!vars.CoilFixed) { vars.CoilFixed = true; return true; }
    break;
        case "S4482":
    if (!vars.Blacklight) { vars.Blacklight = true; return true; }
    break;
        case "SWITCHESOFF_SC":
    if (!vars.SwitchesPuzzle) { vars.SwitchesPuzzle = true; return true; }
    break;
        case "S1400":
    if (!vars.MeetVictor) { vars.MeetVictor = true; return true; }
    break;
        case "S1092":
    if (!vars.NewKeycard) { vars.NewKeycard = true; return true; }
    break;
        case "S4751":
    if (!vars.ControlBoothUnlocked) { vars.ControlBoothUnlocked = true; return true; }
    break;
        case "S4100":
    if (!vars.EnteredtheHex) { vars.EnteredtheHex = true; return true; }
    break;
        case "S2913":
    if (!vars.NikosFingerprint) { vars.NikosFingerprint = true; return true; }
    break;
        case "S4487":
    if (!vars.StealGummyBears) { vars.StealGummyBears = true; return true; }
    break;
        case "BRAKE_SC":
    if (!vars.ElevatorGears) { vars.ElevatorGears = true; return true; }
    break;
        case "S4104":
    if (!vars.EnteredNikosLab) { vars.EnteredNikosLab = true; return true; }
    break;
        case "S2925":
    if (!vars.PigeonLaser) { vars.PigeonLaser = true; return true; }
    break;
        case "S4150":
    if (!vars.Wardenclyffe) { vars.Wardenclyffe = true; return true; }
    break;
        case "S2309":
    if (!vars.OscillatorDone) { vars.OscillatorDone = true; return true; }
    break;
        case "STUCONTROLS_SC":
    if (!vars.ZapUp2Start) { vars.ZapUp2Start = true; return true; }
    break;
        case "S4114":
    if (!vars.PlayFinalSecurityVideo) { vars.PlayFinalSecurityVideo = true; return true; }
    break;
        case "S1001A_SC":
    if (!vars.RyansChart) { vars.RyansChart = true; return true; }
    break;
        case "S4484":
    if (!vars.RocketUSB) { vars.RocketUSB = true; return true; }
    break;
        case "BUILDWON_SC":
    if (!vars.MadeAluminumBox) { vars.MadeAluminumBox = true; return true; }
    break;
        case "CONFRONTTES_SC":
    if (!vars.TrappedinFaradayCage) { vars.TrappedinFaradayCage = true; return true; }
    break;
        case "ESCAPE_SC":
    if (!vars.FinalPuzzleStart) { vars.FinalPuzzleStart = true; return true; }
    break;
        case "LIGHTNINGROD_SC":
    if (!vars.FinalPuzzleDone) { vars.FinalPuzzleDone = true; return true; }
    break;
    }
}

reset {
	if (!vars.reset && current.scene == "Badges_SC") {
		return true; 
	}
}
