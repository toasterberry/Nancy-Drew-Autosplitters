// Nancy Drew: Tomb of the Lost Queen
// Written by Toasterberry, splits by Yandema
// https://linktr.ee/toasterberry

state("Tomb") {
    string20 scene : "Tomb.exe", 0x16C5A0, 0x8, 0x5C, 0x10, 0x10, 0x7C, 0x8, 0x0;
}

startup {
    // Settings
	settings.Add("reset",false,"Auto reset at difficulty select");
    
    // Universal Splits
    settings.Add("unisplt", true, "Universal Splits");
    settings.Add("InAntiquitiesTent",false,"In Antiquities Tent", "unisplt");
    settings.Add("CatJigsawStart",false,"Cat Jigsaw Start", "unisplt");
    settings.Add("EnteredTomb",false,"Entered Tomb", "unisplt");
    settings.Add("SlidingGlyphsPuzzle",false,"Sliding Glyphs Puzzle", "unisplt");
    settings.Add("ndTombCutscene",false,"2nd Tomb Cutscene", "unisplt");
    settings.Add("MeetLily",false,"Meet Lily", "unisplt");
    settings.Add("LampOil",false,"Lamp Oil", "unisplt");
    settings.Add("MirrorsPuzzle1",false,"Mirrors Puzzle 1", "unisplt");
    settings.Add("TrytoLiftSarcophagus",false,"Try to Lift Sarcophagus", "unisplt");
    settings.Add("MeetJamila",false,"Meet Jamila", "unisplt");
    settings.Add("MeetAbdullah",false,"Meet Abdullah", "unisplt");
    settings.Add("RedScarab",false,"Red Scarab", "unisplt");
    settings.Add("SonsofHorusPassage",false,"Sons of Horus Passage", "unisplt");
    settings.Add("ScarabPuzzle",false,"Scarab Puzzle", "unisplt");
    settings.Add("ScarabPuzzleDone",false,"Scarab Puzzle Done", "unisplt");
    settings.Add("JumpAcrossColumns",false,"Jump Across Columns", "unisplt");
    settings.Add("LiftedSarcophagus",false,"Lifted Sarcophagus", "unisplt");
    settings.Add("OpenedFirstSarcophagus",false,"Opened First Sarcophagus", "unisplt");
    settings.Add("JamilaDistracted",false,"Jamila Distracted", "unisplt");
    settings.Add("GotCatAmulet",false,"Got Cat Amulet", "unisplt");
    settings.Add("MeetDylan",false,"Meet Dylan", "unisplt");
    settings.Add("SeeSenetTutorial",false,"See Senet Tutorial", "unisplt");
    settings.Add("SeeBlueCat",false,"See Blue Cat", "unisplt");
    settings.Add("SeeAbdullahArticle",false,"See Abdullah Article", "unisplt");
    settings.Add("MirrorsPuzzle2",false,"Mirrors Puzzle 2", "unisplt");
    settings.Add("MicePuzzleDone",false,"Mice Puzzle Done", "unisplt");
    settings.Add("NefertarisChildrenStart",false,"Nefertari’s Children Start", "unisplt");
    settings.Add("OpenedSarcophagus2",false,"Opened Sarcophagus 2", "unisplt");
    settings.Add("PapyrusJigsawDone",false,"Papyrus Jigsaw Done", "unisplt");
    settings.Add("CobrasStart",false,"Cobras Start", "unisplt");
    settings.Add("ConfrontJamila",false,"Confront Jamila", "unisplt");
    settings.Add("InFinalTomb",false,"In Final Tomb", "unisplt");
    settings.Add("StonesPuzzleStart",false,"Stones Puzzle Start", "unisplt");
    settings.Add("StonesPuzzleDone",false,"Stones Puzzle Done", "unisplt");
    settings.Add("BirdsPuzzleStart",false,"Birds Puzzle Start", "unisplt");
    settings.Add("LilysCode2",false,"Lily’s Code 2", "unisplt");
    settings.Add("LilysTrunkPuzzle",false,"Lily’s Trunk Puzzle", "unisplt");
    settings.Add("FoundPieceofJonsNotes",false,"Found Piece of Jon’s Notes", "unisplt");
    settings.Add("SeeCobra",false,"See Cobra", "unisplt");
    settings.Add("CobraDone",false,"Cobra Done", "unisplt");
    settings.Add("LilyShowsSenetSymbols",false,"Lily Shows Senet Symbols", "unisplt");
    settings.Add("FoundNefertari",false,"Found Nefertari", "unisplt");
    settings.Add("GotPantheonfromJamila",false,"Got Pantheon from Jamila", "unisplt");
    settings.Add("GodsHeadPuzzle",false,"Gods Head Puzzle", "unisplt");
    settings.Add("EndGamePuzzle",false,"End Game Puzzle", "unisplt");
    
    // Death%
    settings.Add("deathp", false, "Death%");
}

start {

    if (current.scene == "OPEN0_SC") {
        // Settings
        vars.reset = !settings["reset"];
        
        // Universal Splits
        vars.InAntiquitiesTent = !settings["InAntiquitiesTent"];
        vars.CatJigsawStart = !settings["CatJigsawStart"];
        vars.EnteredTomb = !settings["EnteredTomb"];
        vars.SlidingGlyphsPuzzle = !settings["SlidingGlyphsPuzzle"];
        vars.ndTombCutscene = !settings["ndTombCutscene"];
        vars.MeetLily = !settings["MeetLily"];
        vars.LampOil = !settings["LampOil"];
        vars.MirrorsPuzzle1 = !settings["MirrorsPuzzle1"];
        vars.TrytoLiftSarcophagus = !settings["TrytoLiftSarcophagus"];
        vars.MeetJamila = !settings["MeetJamila"];
        vars.MeetAbdullah = !settings["MeetAbdullah"];
        vars.RedScarab = !settings["RedScarab"];
        vars.SonsofHorusPassage = !settings["SonsofHorusPassage"];
        vars.ScarabPuzzle = !settings["ScarabPuzzle"];
        vars.ScarabPuzzleDone = !settings["ScarabPuzzleDone"];
        vars.JumpAcrossColumns = !settings["JumpAcrossColumns"];
        vars.LiftedSarcophagus = !settings["LiftedSarcophagus"];
        vars.OpenedFirstSarcophagus = !settings["OpenedFirstSarcophagus"];
        vars.JamilaDistracted = !settings["JamilaDistracted"];
        vars.GotCatAmulet = !settings["GotCatAmulet"];
        vars.MeetDylan = !settings["MeetDylan"];
        vars.SeeSenetTutorial = !settings["SeeSenetTutorial"];
        vars.SeeBlueCat = !settings["SeeBlueCat"];
        vars.SeeAbdullahArticle = !settings["SeeAbdullahArticle"];
        vars.MirrorsPuzzle2 = !settings["MirrorsPuzzle2"];
        vars.MicePuzzleDone = !settings["MicePuzzleDone"];
        vars.NefertarisChildrenStart = !settings["NefertarisChildrenStart"];
        vars.OpenedSarcophagus2 = !settings["OpenedSarcophagus2"];
        vars.PapyrusJigsawDone = !settings["PapyrusJigsawDone"];
        vars.CobrasStart = !settings["CobrasStart"];
        vars.ConfrontJamila = !settings["ConfrontJamila"];
        vars.InFinalTomb = !settings["InFinalTomb"];
        vars.StonesPuzzleStart = !settings["StonesPuzzleStart"];
        vars.StonesPuzzleDone = !settings["StonesPuzzleDone"];
        vars.BirdsPuzzleStart = !settings["BirdsPuzzleStart"];
        vars.LilysCode2 = !settings["LilysCode2"];
        vars.LilysTrunkPuzzle = !settings["LilysTrunkPuzzle"];
        vars.FoundPieceofJonsNotes = !settings["FoundPieceofJonsNotes"];
        vars.SeeCobra = !settings["SeeCobra"];
        vars.CobraDone = !settings["CobraDone"];
        vars.LilyShowsSenetSymbols = !settings["LilyShowsSenetSymbols"];
        vars.FoundNefertari = !settings["FoundNefertari"];
        vars.GotPantheonfromJamila = !settings["GotPantheonfromJamila"];
        vars.GodsHeadPuzzle = !settings["GodsHeadPuzzle"];
        vars.EndGamePuzzle = !settings["EndGamePuzzle"];
        // Death%
		vars.deathp = !settings["deathp"];
        return true;
    }
}

split {
    string s = current.scene;
    switch (s) {
        case "UI_SECONDCHANCE_SC": // Death% End
			if (!vars.deathp) { return true; }
			else break;
            
        case "CLS_LETTERA_SC": // Universal End
			return true;
            
        // Death% Splits

        // Universal Splits
        case "S2001":
    if (!vars.InAntiquitiesTent) { vars.InAntiquitiesTent = true; return true; }
    break;
        case "REBUILD_SC":
    if (!vars.CatJigsawStart) { vars.CatJigsawStart = true; return true; }
    break;
        case "S3200":
    if (!vars.EnteredTomb) { vars.EnteredTomb = true; return true; }
    break;
        case "NAME_SC":
    if (!vars.SlidingGlyphsPuzzle) { vars.SlidingGlyphsPuzzle = true; return true; }
    break;
        case "S3502":
    if (!vars.ndTombCutscene) { vars.ndTombCutscene = true; return true; }
    break;
        case "S1200":
    if (!vars.MeetLily) { vars.MeetLily = true; return true; }
    break;
        case "S2940":
    if (!vars.LampOil) { vars.LampOil = true; return true; }
    break;
        case "MIRRORS_SC":
    if (!vars.MirrorsPuzzle1) { vars.MirrorsPuzzle1 = true; return true; }
    break;
        case "S3504":
    if (!vars.TrytoLiftSarcophagus) { vars.TrytoLiftSarcophagus = true; return true; }
    break;
        case "S1100":
    if (!vars.MeetJamila) { vars.MeetJamila = true; return true; }
    break;
        case "S1000":
    if (!vars.MeetAbdullah) { vars.MeetAbdullah = true; return true; }
    break;
        case "S3951":
    if (!vars.RedScarab) { vars.RedScarab = true; return true; }
    break;
        case "DECODECOLUMNS_SC":
    if (!vars.SonsofHorusPassage) { vars.SonsofHorusPassage = true; return true; }
    break;
        case "SCARABS_SC":
    if (!vars.ScarabPuzzle) { vars.ScarabPuzzle = true; return true; }
    break;
        case "S3999":
    if (!vars.ScarabPuzzleDone) { vars.ScarabPuzzleDone = true; return true; }
    break;
        case "S3499":
    if (!vars.JumpAcrossColumns) { vars.JumpAcrossColumns = true; return true; }
    break;
        case "S3518":
    if (!vars.LiftedSarcophagus) { vars.LiftedSarcophagus = true; return true; }
    break;
        case "S3519":
    if (!vars.OpenedFirstSarcophagus) { vars.OpenedFirstSarcophagus = true; return true; }
    break;
        case "S1195":
    if (!vars.JamilaDistracted) { vars.JamilaDistracted = true; return true; }
    break;
        case "REBUILD_PICKUP_SC":
    if (!vars.GotCatAmulet) { vars.GotCatAmulet = true; return true; }
    break;
        case "S1300":
    if (!vars.MeetDylan) { vars.MeetDylan = true; return true; }
    break;
        case "SENET_SC":
    if (!vars.SeeSenetTutorial) { vars.SeeSenetTutorial = true; return true; }
    break;
        case "S3914":
    if (!vars.SeeBlueCat) { vars.SeeBlueCat = true; return true; }
    break;
        case "S3889":
    if (!vars.SeeAbdullahArticle) { vars.SeeAbdullahArticle = true; return true; }
    break;
        case "MIRRORSCAT_SC":
    if (!vars.MirrorsPuzzle2) { vars.MirrorsPuzzle2 = true; return true; }
    break;
        case "S2641":
    if (!vars.MicePuzzleDone) { vars.MicePuzzleDone = true; return true; }
    break;
        case "KIDSLOCK_SC":
    if (!vars.NefertarisChildrenStart) { vars.NefertarisChildrenStart = true; return true; }
    break;
        case "S3520":
    if (!vars.OpenedSarcophagus2) { vars.OpenedSarcophagus2 = true; return true; }
    break;
        case "DECODEPAPYRUS_SC":
    if (!vars.PapyrusJigsawDone) { vars.PapyrusJigsawDone = true; return true; }
    break;
        case "TRACKS_SC":
    if (!vars.CobrasStart) { vars.CobrasStart = true; return true; }
    break;
        case "S116B":
    if (!vars.ConfrontJamila) { vars.ConfrontJamila = true; return true; }
    break;
        case "S3587":
    if (!vars.InFinalTomb) { vars.InFinalTomb = true; return true; }
    break;
        case "LETTERS_SC":
    if (!vars.StonesPuzzleStart) { vars.StonesPuzzleStart = true; return true; }
    break;
        case "LETTERSWIN_SC":
    if (!vars.StonesPuzzleDone) { vars.StonesPuzzleDone = true; return true; }
    break;
        case "BIRDS_SC":
    if (!vars.BirdsPuzzleStart) { vars.BirdsPuzzleStart = true; return true; }
    break;
        case "S3885":
    if (!vars.LilysCode2) { vars.LilysCode2 = true; return true; }
    break;
        case "DISARM_SC":
    if (!vars.LilysTrunkPuzzle) { vars.LilysTrunkPuzzle = true; return true; }
    break;
        case "S2332":
    if (!vars.FoundPieceofJonsNotes) { vars.FoundPieceofJonsNotes = true; return true; }
    break;
        case "S2390":
    if (!vars.SeeCobra) { vars.SeeCobra = true; return true; }
    break;
        case "S2916":
    if (!vars.CobraDone) { vars.CobraDone = true; return true; }
    break;
        case "S1241A_SC":
    if (!vars.LilyShowsSenetSymbols) { vars.LilyShowsSenetSymbols = true; return true; }
    break;
        case "S3550":
    if (!vars.FoundNefertari) { vars.FoundNefertari = true; return true; }
    break;
        case "S1192":
    if (!vars.GotPantheonfromJamila) { vars.GotPantheonfromJamila = true; return true; }
    break;
        case "DIALS_HUB_SC":
    if (!vars.GodsHeadPuzzle) { vars.GodsHeadPuzzle = true; return true; }
    break;
        case "WALLSINTRO_SC":
    if (!vars.EndGamePuzzle) { vars.EndGamePuzzle = true; return true; }
    break;
        
    }
}

reset {
	if (!vars.reset && current.scene == "BADGES_SC") {
		return true; 
	}
}
