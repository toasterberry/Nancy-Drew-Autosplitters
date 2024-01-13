// Nancy Drew: The Silent Spy
// Written by Toasterberry, splits by Yandema
// https://linktr.ee/toasterberry

state("Spy") {
    string50 scene : "Spy.exe", 0x17A008, 0x8, 0x5C, 0x0, 0x0;
	string50 subscene: "Spy.exe", 0x17A008, 0x18, 0x5C, 0x0, 0x0;
	string50 subscene2: "Spy.exe", 0x17A008, 0x14, 0x5C, 0x0, 0x0;
}

startup {
    // Settings
	settings.Add("reset",false,"Auto reset at difficulty select");
    
    // Universal Splits
    settings.Add("unisplt", true, "Universal Splits");
    settings.Add("MeetAlec",false,"Meet Alec", "unisplt");
    settings.Add("EwanCall",false,"Ewan Call", "unisplt");
    settings.Add("EasterEgg",false,"Easter Egg", "unisplt");
    settings.Add("BridgetCutscene",false,"Bridget Cutscene", "unisplt");
    settings.Add("MeetBridget",false,"Meet Bridget", "unisplt");
    settings.Add("BoughtTrainTicket",false,"Bought Train Ticket", "unisplt");
    settings.Add("AskAlectoFindMoira",false,"Ask Alec to Find Moira", "unisplt");
    settings.Add("RevenantCall",false,"Revenant Call", "unisplt");
    settings.Add("Giffnock",false,"Giffnock", "unisplt");
    settings.Add("AlecFoundMoira",false,"Alec Found Moira", "unisplt");
    settings.Add("Bearsden",false,"Bearsden", "unisplt");
    settings.Add("GotScotlandBook",false,"Got Scotland Book", "unisplt");
    settings.Add("BuyMoirasFood",false,"Buy Moiras Food", "unisplt");
    settings.Add("MeetMoira",false,"Meet Moira", "unisplt");
    settings.Add("HiddeninCloset",false,"Hidden in Closet", "unisplt");
    settings.Add("Teapot",false,"Teapot", "unisplt");
    settings.Add("OpenedFuseBox",false,"Opened Fuse Box", "unisplt");
    settings.Add("Flashback1",false,"Flashback 1", "unisplt");
    settings.Add("SeeBagpipe",false,"See Bagpipe", "unisplt");
    settings.Add("ArcheryStart",false,"Archery Start", "unisplt");
    settings.Add("ArcheryDone",false,"Archery Done", "unisplt");
    settings.Add("InsideSafeHouse",false,"Inside Safe House", "unisplt");
    settings.Add("SpyCabinActivated",false,"Spy Cabin Activated", "unisplt");
    settings.Add("CallNed",false,"Call Ned", "unisplt");
    settings.Add("GotJournalFromMoira",false,"Got Journal From Moira", "unisplt");
    settings.Add("Flashback2",false,"Flashback 2", "unisplt");
    settings.Add("FireplaceStart",false,"Fireplace Start", "unisplt");
    settings.Add("FireplaceDone",false,"Fireplace Done", "unisplt");
    settings.Add("VaultLockDone",false,"Vault Lock Done", "unisplt");
    settings.Add("Luggage",false,"Luggage", "unisplt");
    settings.Add("SpyOnBridget",false,"Spy On Bridget", "unisplt");
    settings.Add("MeetEwan",false,"Meet Ewan", "unisplt");
    settings.Add("MessedUpThermostat",false,"Messed Up Thermostat", "unisplt");
    settings.Add("ZiplineStart",false,"Zipline Start", "unisplt");
    settings.Add("ZiplineDone",false,"Zipline Done", "unisplt");
    settings.Add("PhonePuzzleStart",false,"Phone Puzzle Start", "unisplt");
    settings.Add("PhonePuzzleDone",false,"Phone Puzzle Done", "unisplt");
    settings.Add("BridgetDistracted",false,"Bridget Distracted", "unisplt");
    settings.Add("BenchPuzzleStart",false,"Bench Puzzle Start", "unisplt");
    settings.Add("BenchPuzzleDone",false,"Bench Puzzle Done", "unisplt");
    settings.Add("AlecTalksAboutLuggage",false,"Alec Talks About Luggage", "unisplt");
    settings.Add("DeadDrop",false,"Dead Drop", "unisplt");
    settings.Add("ConfrontBridget",false,"Confront Bridget", "unisplt");
    settings.Add("AlecChairStart",false,"Alec Chair Start", "unisplt");
    settings.Add("AlecChairDone",false,"Alec Chair Done", "unisplt");
    settings.Add("MeetZoe",false,"Meet Zoe", "unisplt");
    settings.Add("GiveEwanGlasses",false,"Give Ewan Glasses", "unisplt");
    settings.Add("GetFixedGlasses",false,"Get Fixed Glasses", "unisplt");
    settings.Add("ZoeTakesCanister",false,"Zoe Takes Canister", "unisplt");
    settings.Add("DisplayCaseLock",false,"Display Case Lock", "unisplt");
    settings.Add("DisplayCaseUnlocked",false,"Display Case Unlocked", "unisplt");
    settings.Add("PlantedZoesBug",false,"Planted Zoes Bug", "unisplt");
    settings.Add("HideFromEwan",false,"Hide From Ewan", "unisplt");
    settings.Add("Wiretap1Start",false,"Wiretap 1 Start", "unisplt");
    settings.Add("Wiretap1Done",false,"Wiretap 1 Done", "unisplt");
    settings.Add("PlantedAlecsBug",false,"Planted Alecs Bug", "unisplt");
    settings.Add("CipherWheelStart",false,"Cipher Wheel Start", "unisplt");
    settings.Add("CipherWheelDone",false,"Cipher Wheel Done", "unisplt");
	settings.Add("ListentoBugs",false,"Listen to Bugs", "unisplt");
    settings.Add("EnhancePuzzleStart",false,"Enhance Puzzle Start", "unisplt");
    settings.Add("EnhancePuzzleDone",false,"Enhance Puzzle Done", "unisplt");
    settings.Add("BagpipesStart",false,"Bagpipes Start", "unisplt");
    settings.Add("BagpipesDone",false,"Bagpipes Done", "unisplt");
    settings.Add("ZoesSafeStart",false,"Zoes Safe Start", "unisplt");
    settings.Add("ZoesSafeDone",false,"Zoes Safe Done", "unisplt");
    settings.Add("GlassPieceBehindBed",false,"Glass Piece Behind Bed", "unisplt");
    settings.Add("GlassPieceNearVase",false,"Glass Piece Near Vase", "unisplt");
    settings.Add("GlassPieceonDiningTable",false,"Glass Piece on Dining Table", "unisplt");
    settings.Add("GlassPieceonMirror",false,"Glass Piece on Mirror", "unisplt");
    settings.Add("GlassPieceonChair",false,"Glass Piece on Chair", "unisplt");
    settings.Add("GlassPieceBehindBooks",false,"Glass Piece Behind Books", "unisplt");
    settings.Add("MP3Playing",false,"MP3 Playing", "unisplt");
    settings.Add("Archives",false,"Archives", "unisplt");
    settings.Add("SoakedCards",false,"Soaked Cards", "unisplt");
    settings.Add("ListentoRecord",false,"Listen to Record", "unisplt");
    settings.Add("PoemDecoded",false,"Poem Decoded", "unisplt");
    settings.Add("SeeScientistsNumber",false,"See Scientists Number", "unisplt");
    settings.Add("Flashback3",false,"Flashback 3", "unisplt");
    settings.Add("SeeTrashedRoom",false,"See Trashed Room", "unisplt");
    settings.Add("EwanUntied",false,"Ewan Untied", "unisplt");
    settings.Add("FoundLaser",false,"Found Laser", "unisplt");
    settings.Add("ConfrontAlec",false,"Confront Alec", "unisplt");
    settings.Add("CardsinLocker",false,"Cards in Locker", "unisplt");
    settings.Add("MoirasBoxStart",false,"Moiras Box Start", "unisplt");
    settings.Add("MoirasBoxDone",false,"Moiras Box Done", "unisplt");
    settings.Add("CardsStart",false,"Cards Start", "unisplt");
    settings.Add("CardsDone",false,"Cards Done", "unisplt");
    settings.Add("SliderStart",false,"Slider Start", "unisplt");
    settings.Add("SliderDone",false,"Slider Done", "unisplt");
    settings.Add("Wiretap2Start",false,"Wiretap 2 Start", "unisplt");
    settings.Add("Wiretap2Done",false,"Wiretap 2 Done", "unisplt");
    settings.Add("EwansCoin",false,"Ewans Coin", "unisplt");
    settings.Add("EwansHideout",false,"Ewans Hideout", "unisplt");
    settings.Add("FinalZoeConvo",false,"Final Zoe Convo", "unisplt");
    settings.Add("EwanTrapped",false,"Ewan Trapped", "unisplt");
    settings.Add("USB1",false,"USB 1", "unisplt");
    settings.Add("USB2",false,"USB 2", "unisplt");
    settings.Add("USB3",false,"USB 3", "unisplt");
    settings.Add("USB4",false,"USB 4", "unisplt");
    settings.Add("USB5",false,"USB 5", "unisplt");
    settings.Add("USBPortsPuzzle",false,"USB Ports Puzzle", "unisplt");
    settings.Add("USBPortsDone",false,"USB Ports Done", "unisplt");
    settings.Add("BombStart",false,"Bomb Start", "unisplt");
    settings.Add("BombDone",false,"Bomb Done", "unisplt");
    
    // Death%
    settings.Add("deathp", false, "Death%");
}

start {

    if (current.scene == "CINEMATIC_OPENING_SC") {
        // Settings
        vars.reset = !settings["reset"];
        
        // Universal Splits
        vars.MeetAlec = !settings["MeetAlec"];
        vars.EwanCall = !settings["EwanCall"];
        vars.EasterEgg = !settings["EasterEgg"];
        vars.BridgetCutscene = !settings["BridgetCutscene"];
        vars.MeetBridget = !settings["MeetBridget"];
        vars.BoughtTrainTicket = !settings["BoughtTrainTicket"];
        vars.AskAlectoFindMoira = !settings["AskAlectoFindMoira"];
        vars.RevenantCall = !settings["RevenantCall"];
        vars.Giffnock = !settings["Giffnock"];
        vars.AlecFoundMoira = !settings["AlecFoundMoira"];
        vars.Bearsden = !settings["Bearsden"];
        vars.GotScotlandBook = !settings["GotScotlandBook"];
        vars.BuyMoirasFood = !settings["BuyMoirasFood"];
        vars.MeetMoira = !settings["MeetMoira"];
        vars.HiddeninCloset = !settings["HiddeninCloset"];
        vars.Teapot = !settings["Teapot"];
        vars.OpenedFuseBox = !settings["OpenedFuseBox"];
        vars.Flashback1 = !settings["Flashback1"];
        vars.SeeBagpipe = !settings["SeeBagpipe"];
        vars.ArcheryStart = !settings["ArcheryStart"];
        vars.ArcheryDone = !settings["ArcheryDone"];
        vars.InsideSafeHouse = !settings["InsideSafeHouse"];
        vars.SpyCabinActivated = !settings["SpyCabinActivated"];
        vars.CallNed = !settings["CallNed"];
        vars.GotJournalFromMoira = !settings["GotJournalFromMoira"];
        vars.Flashback2 = !settings["Flashback2"];
        vars.FireplaceStart = !settings["FireplaceStart"];
        vars.FireplaceDone = !settings["FireplaceDone"];
        vars.VaultLockDone = !settings["VaultLockDone"];
        vars.Luggage = !settings["Luggage"];
        vars.SpyOnBridget = !settings["SpyOnBridget"];
        vars.MeetEwan = !settings["MeetEwan"];
        vars.MessedUpThermostat = !settings["MessedUpThermostat"];
        vars.ZiplineStart = !settings["ZiplineStart"];
        vars.ZiplineDone = !settings["ZiplineDone"];
        vars.PhonePuzzleStart = !settings["PhonePuzzleStart"];
        vars.PhonePuzzleDone = !settings["PhonePuzzleDone"];
        vars.BridgetDistracted = !settings["BridgetDistracted"];
        vars.BenchPuzzleStart = !settings["BenchPuzzleStart"];
        vars.BenchPuzzleDone = !settings["BenchPuzzleDone"];
        vars.AlecTalksAboutLuggage = !settings["AlecTalksAboutLuggage"];
        vars.DeadDrop = !settings["DeadDrop"];
        vars.ConfrontBridget = !settings["ConfrontBridget"];
        vars.AlecChairStart = !settings["AlecChairStart"];
        vars.AlecChairDone = !settings["AlecChairDone"];
        vars.MeetZoe = !settings["MeetZoe"];
        vars.GiveEwanGlasses = !settings["GiveEwanGlasses"];
        vars.GetFixedGlasses = !settings["GetFixedGlasses"];
        vars.ZoeTakesCanister = !settings["ZoeTakesCanister"];
        vars.DisplayCaseLock = !settings["DisplayCaseLock"];
        vars.DisplayCaseUnlocked = !settings["DisplayCaseUnlocked"];
        vars.PlantedZoesBug = !settings["PlantedZoesBug"];
        vars.HideFromEwan = !settings["HideFromEwan"];
        vars.Wiretap1Start = !settings["Wiretap1Start"];
        vars.Wiretap1Done = !settings["Wiretap1Done"];
        vars.PlantedAlecsBug = !settings["PlantedAlecsBug"];
        vars.CipherWheelStart = !settings["CipherWheelStart"];
        vars.CipherWheelDone = !settings["CipherWheelDone"];
		vars.ListentoBugs = !settings["ListentoBugs"];
        vars.EnhancePuzzleStart = !settings["EnhancePuzzleStart"];
        vars.EnhancePuzzleDone = !settings["EnhancePuzzleDone"];
        vars.BagpipesStart = !settings["BagpipesStart"];
        vars.BagpipesDone = !settings["BagpipesDone"];
        vars.ZoesSafeStart = !settings["ZoesSafeStart"];
        vars.ZoesSafeDone = !settings["ZoesSafeDone"];
        vars.GlassPieceBehindBed = !settings["GlassPieceBehindBed"];
        vars.GlassPieceNearVase = !settings["GlassPieceNearVase"];
        vars.GlassPieceonDiningTable = !settings["GlassPieceonDiningTable"];
        vars.GlassPieceonMirror = !settings["GlassPieceonMirror"];
        vars.GlassPieceonChair = !settings["GlassPieceonChair"];
        vars.GlassPieceBehindBooks = !settings["GlassPieceBehindBooks"];
        vars.MP3Playing = !settings["MP3Playing"];
        vars.Archives = !settings["Archives"];
        vars.SoakedCards = !settings["SoakedCards"];
        vars.ListentoRecord = !settings["ListentoRecord"];
        vars.PoemDecoded = !settings["PoemDecoded"];
        vars.SeeScientistsNumber = !settings["SeeScientistsNumber"];
        vars.Flashback3 = !settings["Flashback3"];
        vars.SeeTrashedRoom = !settings["SeeTrashedRoom"];
        vars.EwanUntied = !settings["EwanUntied"];
        vars.FoundLaser = !settings["FoundLaser"];
        vars.ConfrontAlec = !settings["ConfrontAlec"];
        vars.CardsinLocker = !settings["CardsinLocker"];
        vars.MoirasBoxStart = !settings["MoirasBoxStart"];
        vars.MoirasBoxDone = !settings["MoirasBoxDone"];
        vars.CardsStart = !settings["CardsStart"];
        vars.CardsDone = !settings["CardsDone"];
        vars.SliderStart = !settings["SliderStart"];
        vars.SliderDone = !settings["SliderDone"];
        vars.Wiretap2Start = !settings["Wiretap2Start"];
        vars.Wiretap2Done = !settings["Wiretap2Done"];
        vars.EwansCoin = !settings["EwansCoin"];
        vars.EwansHideout = !settings["EwansHideout"];
        vars.FinalZoeConvo = !settings["FinalZoeConvo"];
        vars.EwanTrapped = !settings["EwanTrapped"];
        vars.USB1 = !settings["USB1"];
        vars.USB2 = !settings["USB2"];
        vars.USB3 = !settings["USB3"];
        vars.USB4 = !settings["USB4"];
        vars.USB5 = !settings["USB5"];
        vars.USBPortsPuzzle = !settings["USBPortsPuzzle"];
        vars.USBPortsDone = !settings["USBPortsDone"];
        vars.BombStart = !settings["BombStart"];
        vars.BombDone = !settings["BombDone"];
        vars.Done = !settings["Done"];
        vars.AwardsScreen = !settings["AwardsScreen"];
        // Death%
        vars.deathp = !settings["deathp"];
		
		vars.WTTrig = false;
        return true;
    }
}

split {
    string s = current.scene;
	string s2 = current.scene;
	string ss = current.subscene;
	string sss = current.subscene2;
    switch (s) {
        case "UI_SECONDCHANCE_SC": // Death% End
			if (!vars.deathp) { return true; }
			else break;
            
        case "CLOSINGLETTER_SC": // Universal End
			return true;
            
        // Death% Splits

        
        // Universal Splits
        case "CINEMATIC_OPENING_SC":
    if (!vars.Start) { vars.Start = true; return true; }
    break;
        case "AF_GREET_SC":
    if (!vars.MeetAlec) { vars.MeetAlec = true; return true; }
    break;
        
        case "S2022_SAFEOPEN_SC":
    if (!vars.EasterEgg) { vars.EasterEgg = true; return true; }
    break;
        case "HAL_BRIDGETMEETANIM_SC":
    if (!vars.BridgetCutscene) { vars.BridgetCutscene = true; return true; }
    break;
        case "BS_MET_SC":
    if (!vars.MeetBridget) { vars.MeetBridget = true; return true; }
    break;
        case "S3886":
    if (!vars.BoughtTrainTicket) { vars.BoughtTrainTicket = true; return true; }
    break;
        case "AF_REPORTER_SC":
    if (!vars.AskAlectoFindMoira) { vars.AskAlectoFindMoira = true; return true; }
    break;
        case "S3815":
    if (!vars.RevenantCall) { vars.RevenantCall = true; return true; }
    break;
        case "S4000":
    if (!vars.Giffnock) { vars.Giffnock = true; return true; }
    break;
        case "AF_FOUND_REPORTER_SC":
    if (!vars.AlecFoundMoira) { vars.AlecFoundMoira = true; return true; }
    break;
        case "S2810":
    if (!vars.Bearsden) { vars.Bearsden = true; return true; }
    break;
        case "BS_SCOT_BOOK_HANDOFF_SC":
    if (!vars.GotScotlandBook) { vars.GotScotlandBook = true; return true; }
    break;
        case "SNACKS_SC":
    if (!vars.BuyMoirasFood) { vars.BuyMoirasFood = true; return true; }
    break;
        case "MC_FIRST_SC":
    if (!vars.MeetMoira) { vars.MeetMoira = true; return true; }
    break;
        case "BUN_TAKENANIM_SC":
    if (!vars.HiddeninCloset) { vars.HiddeninCloset = true; return true; }
    break;
        case "S2880":
    if (!vars.Teapot) { vars.Teapot = true; return true; }
    break;
        case "S2983":
    if (!vars.OpenedFuseBox) { vars.OpenedFuseBox = true; return true; }
    break;
        case "LOC_KATEPHONEANIM_SC":
    if (!vars.Flashback1) { vars.Flashback1 = true; return true; }
    break;
        case "S3231":
    if (!vars.SeeBagpipe) { vars.SeeBagpipe = true; return true; }
    break;
        case "ARCHERYSAL_SC":
    if (!vars.ArcheryStart) { vars.ArcheryStart = true; return true; }
    break;
        case "SAL_CASEOPENSANIM_SC":
    if (!vars.ArcheryDone) { vars.ArcheryDone = true; return true; }
    break;
        case "S2410":
    if (!vars.InsideSafeHouse) { vars.InsideSafeHouse = true; return true; }
    break;
        case "CAB_COMPUTERUP_ANIM_SC":
    if (!vars.SpyCabinActivated) { vars.SpyCabinActivated = true; return true; }
    break;
        
        case "MC_HISTORY_HANDOFF_SC":
    if (!vars.GotJournalFromMoira) { vars.GotJournalFromMoira = true; return true; }
    break;
        case "BUN_KATECALLANIM_SC":
    if (!vars.Flashback2) { vars.Flashback2 = true; return true; }
    break;
        case "STONES_SC":
    if (!vars.FireplaceStart) { vars.FireplaceStart = true; return true; }
    break;
        case "STONESWON_SC":
    if (!vars.FireplaceDone) { vars.FireplaceDone = true; return true; }
    break;
        case "DISKSWON_SC":
    if (!vars.VaultLockDone) { vars.VaultLockDone = true; return true; }
    break;
        case "S2023_OPENLUGGAGE_SC":
    if (!vars.Luggage) { vars.Luggage = true; return true; }
    break;
        case "BED_BRIDGETSNOOPANIM_SC":
    if (!vars.SpyOnBridget) { vars.SpyOnBridget = true; return true; }
    break;
        case "EM_FIRST_SC":
    if (!vars.MeetEwan) { vars.MeetEwan = true; return true; }
    break;
        case "EM_COOLANT_SC":
    if (!vars.MessedUpThermostat) { vars.MessedUpThermostat = true; return true; }
    break;
        case "ARCHERYBED_SC":
    if (!vars.ZiplineStart) { vars.ZiplineStart = true; return true; }
    break;
        case "BED_ZIPACROSSANIM_SC":
    if (!vars.ZiplineDone) { vars.ZiplineDone = true; return true; }
    break;
        case "PATTERN_SC":
    if (!vars.PhonePuzzleStart) { vars.PhonePuzzleStart = true; return true; }
    break;
        case "ROO_TEXTSCU_SC":
    if (!vars.PhonePuzzleDone) { vars.PhonePuzzleDone = true; return true; }
    break;
        case "BS_CANISTER_SC":
    if (!vars.BridgetDistracted) { vars.BridgetDistracted = true; return true; }
    break;
        case "CANISTERS_SC":
    if (!vars.BenchPuzzleStart) { vars.BenchPuzzleStart = true; return true; }
    break;
        case "CANISTERSWON_SC":
    if (!vars.BenchPuzzleDone) { vars.BenchPuzzleDone = true; return true; }
    break;
        case "AF_SUITCASE_SC":
    if (!vars.AlecTalksAboutLuggage) { vars.AlecTalksAboutLuggage = true; return true; }
    break;
        case "S3614":
    if (!vars.DeadDrop) { vars.DeadDrop = true; return true; }
    break;
        case "BS_CONFRONT_SC":
    if (!vars.ConfrontBridget) { vars.ConfrontBridget = true; return true; }
    break;
        case "BACKING_SC":
    if (!vars.AlecChairStart) { vars.AlecChairStart = true; return true; }
    break;
        case "BACKINGWON_SC":
    if (!vars.AlecChairDone) { vars.AlecChairDone = true; return true; }
    break;
        case "ZW_GLASSES_SC":
    if (!vars.MeetZoe) { vars.MeetZoe = true; return true; }
    break;
        case "EM_GLASSES_FIX_HANDOFF_SC":
    if (!vars.GiveEwanGlasses) { vars.GiveEwanGlasses = true; return true; }
    break;
        case "EM_GLASSES_HANDOFF_SC":
    if (!vars.GetFixedGlasses) { vars.GetFixedGlasses = true; return true; }
    break;
        case "COM_ZOEBREAKANIM_SC":
    if (!vars.ZoeTakesCanister) { vars.ZoeTakesCanister = true; return true; }
    break;
        case "PANEL_SC":
    if (!vars.DisplayCaseLock) { vars.DisplayCaseLock = true; return true; }
    break;
        case "PANELWON_SC":
    if (!vars.DisplayCaseUnlocked) { vars.DisplayCaseUnlocked = true; return true; }
    break;
        case "S3431":
    if (!vars.PlantedZoesBug) { vars.PlantedZoesBug = true; return true; }
    break;
        case "S2665":
    if (!vars.HideFromEwan) { vars.HideFromEwan = true; return true; }
    break;
        case "WIRETAP_SC":
    if (!vars.Wiretap1Start) { vars.Wiretap1Start = true; return true; }
    break;
        case "WIRETAPWON_SC":
    if (!vars.Wiretap1Done) { vars.Wiretap1Done = true; return true; }
    break;
        case "S3888":
    if (!vars.PlantedAlecsBug) { vars.PlantedAlecsBug = true; return true; }
    break;
        case "CIPHER_SC":
    if (!vars.CipherWheelStart) { vars.CipherWheelStart = true; return true; }
    break;
        case "CIPHERWON_SC":
    if (!vars.CipherWheelDone) { vars.CipherWheelDone = true; return true; }
    break;
		case "CAB_BUG_PLAYER_SC":
    if (!vars.ListentoBugs) { vars.ListentoBugs = true; return true; }
    break;
        case "CAB_READOUT_SC":
    if (!vars.EnhancePuzzleStart) { vars.EnhancePuzzleStart = true; return true; }
    break;
        case "ENHANCEWON_SC":
    if (!vars.EnhancePuzzleDone) { vars.EnhancePuzzleDone = true; return true; }
    break;
        case "PIPES_SC":
    if (!vars.BagpipesStart) { vars.BagpipesStart = true; return true; }
    break;
        case "PIPESWON_SC":
    if (!vars.BagpipesDone) { vars.BagpipesDone = true; return true; }
    break;
        case "TOUCH_SC":
    if (!vars.ZoesSafeStart) { vars.ZoesSafeStart = true; return true; }
    break;
        case "S3430":
    if (!vars.ZoesSafeDone) { vars.ZoesSafeDone = true; return true; }
    break;
    
        case "S2020_OUTLETOPEN_SC":
    if (!vars.MP3Playing) { vars.MP3Playing = true; return true; }
    break;
        case "ARCHIVES_SC":
    if (!vars.Archives) { vars.Archives = true; return true; }
    break;
        case "S2015":
    if (!vars.SoakedCards) { vars.SoakedCards = true; return true; }
    break;
        case "PLAY_SC":
    if (!vars.ListentoRecord) { vars.ListentoRecord = true; return true; }
    break;
        
        case "CAB_NUMBERS_SC":
    if (!vars.SeeScientistsNumber) { vars.SeeScientistsNumber = true; return true; }
    break;
        case "LOC_KATE_TEACHING_ANIM_SC":
    if (!vars.Flashback3) { vars.Flashback3 = true; return true; }
    break;
        case "BED_ALECDANGERANIM_SC":
    if (!vars.SeeTrashedRoom) { vars.SeeTrashedRoom = true; return true; }
    break;
        case "EM_TIED_SC":
    if (!vars.EwanUntied) { vars.EwanUntied = true; return true; }
    break;
        
        case "AF_LASER_HANDOFF_SC":
    if (!vars.ConfrontAlec) { vars.ConfrontAlec = true; return true; }
    break;
        
        case "ARRANGE_SC":
    if (!vars.CardsStart) { vars.CardsStart = true; return true; }
    break;
        case "POSTS_SC":
    if (!vars.SliderStart) { vars.SliderStart = true; return true; }
    break;
        case "POSTSWON_SC":
    if (!vars.SliderDone) { vars.SliderDone = true; return true; }
    break;
        
        case "S3878":
    if (!vars.EwansHideout) { vars.EwansHideout = true; return true; }
    break;
        case "ZW_BRIEF_SC":
    if (!vars.FinalZoeConvo) { vars.FinalZoeConvo = true; return true; }
    break;
        case "COM_EWANTRAPPEDANIM_SC":
    if (!vars.EwanTrapped) { vars.EwanTrapped = true; return true; }
    break;
        case "PORTS_SC":
    if (!vars.USBPortsPuzzle) { vars.USBPortsPuzzle = true; return true; }
    break;
        case "PORTSWON_SC":
    if (!vars.USBPortsDone) { vars.USBPortsDone = true; return true; }
    break;
        case "DISARM_SC":
    if (!vars.BombStart) { vars.BombStart = true; return true; }
    break;
        case "DISARMWON_SC":
    if (!vars.BombDone) { vars.BombDone = true; return true; }
    break;
    }
	
	switch (s2) {
		case "POSTSWON_SC": // Wiretap 2 Trigger
			vars.WTTrig = true;
			break;
		case "WIRETAP_SC":
			if (!vars.Wiretap2Start && vars.WTTrig == true) { vars.Wiretap2Start = true; return true; }
			break;
		case "WIRETAPWON_SC":
			if (!vars.Wiretap2Done && vars.WTTrig == true) { vars.Wiretap2Done = true; return true; }
			break;
	}
	
	switch (ss) {
		case "EMP_CALL1_SC":
    if (!vars.EwanCall) { vars.EwanCall = true; return true; }
    break;
case "NN_FIRST_SC":
    if (!vars.CallNed) { vars.CallNed = true; return true; }
    break;
case "COM_TOKENCU_SC":
    if (!vars.EwansCoin) { vars.EwansCoin = true; return true; }
    break;
	case "BED_INV_FORMULA_VCU_SC":
    if (!vars.CardsDone) { vars.CardsDone = true; return true; }
    break;
	}
	
	switch (sss) {
		case "ROO_CUTOUT05CU_SC":
    if (!vars.GlassPieceBehindBed) { vars.GlassPieceBehindBed = true; return true; }
    break;
case "ROO_CUTOUT07CU_SC":
    if (!vars.GlassPieceNearVase) { vars.GlassPieceNearVase = true; return true; }
    break;
case "ROO_CUTOUT04CU_SC":
    if (!vars.GlassPieceonDiningTable) { vars.GlassPieceonDiningTable = true; return true; }
    break;
case "ROO_CUTOUT01CU_SC":
    if (!vars.GlassPieceonMirror) { vars.GlassPieceonMirror = true; return true; }
    break;
case "ROO_CUTOUT02CU_SC":
    if (!vars.GlassPieceonChair) { vars.GlassPieceonChair = true; return true; }
    break;
case "ROO_CUTOUT03CU_SC":
    if (!vars.GlassPieceBehindBooks) { vars.GlassPieceBehindBooks = true; return true; }
    break;
	        
case "DECODEWON_SC":
    if (!vars.PoemDecoded) { vars.PoemDecoded = true; return true; }
    break;
case "BED_INV_LASERCU_SC":
    if (!vars.FoundLaser) { vars.FoundLaser = true; return true; }
    break;
case "STA_CARDS_CU_SC":
    if (!vars.CardsinLocker) { vars.CardsinLocker = true; return true; }
    break;
case "SEQUENCE_SC":
    if (!vars.MoirasBoxStart) { vars.MoirasBoxStart = true; return true; }
    break;
case "SEQUENCEWON_SC":
    if (!vars.MoirasBoxDone) { vars.MoirasBoxDone = true; return true; }
    break;
case "COM_USB1CU_SC":
    if (!vars.USB1) { vars.USB1 = true; return true; }
    break;
case "COM_USB3CU_SC":
    if (!vars.USB2) { vars.USB2 = true; return true; }
    break;
case "COM_USB4CU_SC":
    if (!vars.USB3) { vars.USB3 = true; return true; }
    break;
case "COM_USB2CU_SC":
    if (!vars.USB4) { vars.USB4 = true; return true; }
    break;
case "COM_USB5CU_SC":
    if (!vars.USB5) { vars.USB5 = true; return true; }
    break;
	}
}

reset {
	if (!vars.reset && current.scene == "BADGES_SC") {
		return true; 
	}
}
