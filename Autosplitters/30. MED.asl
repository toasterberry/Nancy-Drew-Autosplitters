// Nancy Drew: The Shattered Medallion
// Written by Toasterberry, splits by Yandema
// https://linktr.ee/toasterberry

state("Medallion") {
    string20 scene : "Medallion.exe", 0x1907A0, 0x8, 0x5C, 0x7C, 0x8, 0x0;
}

startup {
    // Settings
	settings.Add("reset",false,"Auto reset at difficulty select");
    
    // Universal Splits
    settings.Add("unisplt", true, "Universal Splits");
    settings.Add("TrainStart",false,"Train Start", "unisplt");
    settings.Add("TrainDone",false,"Train Done", "unisplt");
    settings.Add("ActivateMap",false,"Activate Map", "unisplt");
    settings.Add("Kakabeak",false,"Kakabeak", "unisplt");
    settings.Add("SpottheDifference",false,"Spot the Difference", "unisplt");
    settings.Add("WOOLSHEDStart",false,"WOOLSHED Start", "unisplt");
    settings.Add("WOOLSHEDDone",false,"WOOLSHED Done", "unisplt");
    settings.Add("DoubtfulSound",false,"Doubtful Sound", "unisplt");
    settings.Add("Pikao",false,"Pikao", "unisplt");
    settings.Add("MtCookLily",false,"Mt Cook Lily", "unisplt");
    settings.Add("Mossburn",false,"Mossburn", "unisplt");
    settings.Add("SpiderOrchid",false,"Spider Orchid", "unisplt");
    settings.Add("BridgeCutscene",false,"Bridge Cutscene", "unisplt");
    settings.Add("MeetPatrick",false,"Meet Patrick", "unisplt");
    settings.Add("SecurityCameraStart",false,"Security Camera Start", "unisplt");
    settings.Add("SecurityCameraDone",false,"Security Camera Done", "unisplt");
    settings.Add("SpiedBooklet",false,"Spied Booklet", "unisplt");
    settings.Add("MeetLeena",false,"Meet Leena", "unisplt");
    settings.Add("MeetKiri",false,"Meet Kiri", "unisplt");
    settings.Add("MeetSonny",false,"Meet Sonny", "unisplt");
    settings.Add("BehindWaterfall",false,"Behind Waterfall", "unisplt");
    settings.Add("BridgeStart",false,"Bridge Start", "unisplt");
    settings.Add("BridgeDone",false,"Bridge Done", "unisplt");
    settings.Add("WaterfallFern",false,"Waterfall Fern", "unisplt");
    settings.Add("UsePointsCard",false,"Use Points Card", "unisplt");
    settings.Add("FlowersStart",false,"Flowers Start", "unisplt");
    settings.Add("FlowersDone",false,"Flowers Done", "unisplt");
    settings.Add("Bag",false,"Bag", "unisplt");
    settings.Add("InWoolshed",false,"In Woolshed", "unisplt");
    settings.Add("ShearBlades",false,"Shear Blades", "unisplt");
    settings.Add("PowerKey",false,"Power Key", "unisplt");
    settings.Add("PowerBox",false,"Power Box", "unisplt");
    settings.Add("Flint",false,"Flint", "unisplt");
    settings.Add("Sheep",false,"Sheep", "unisplt");
    settings.Add("BladesStart",false,"Blades Start", "unisplt");
    settings.Add("GotWool",false,"Got Wool", "unisplt");
    settings.Add("Stage2Done",false,"Stage 2 Done", "unisplt");
    settings.Add("RubiksCubeFall",false,"Rubiks Cube Fall", "unisplt");
    settings.Add("WordSearchStart",false,"Word Search Start", "unisplt");
    settings.Add("WordSearchDone",false,"Word Search Done", "unisplt");
    settings.Add("FootlockerStart",false,"Footlocker Start", "unisplt");
    settings.Add("FootlockerDone",false,"Footlocker Done", "unisplt");
    settings.Add("AskLeenaAboutMedallion",false,"Ask Leena About Medallion", "unisplt");
    settings.Add("MeetBess",false,"Meet Bess", "unisplt");
    settings.Add("EnterKeaTent",false,"Enter Kea Tent", "unisplt");
    settings.Add("BackpackStart",false,"Backpack Start", "unisplt");
    settings.Add("BackpackDone",false,"Backpack Done", "unisplt");
    settings.Add("AtHatch",false,"At Hatch", "unisplt");
    settings.Add("UnlockedHatch",false,"Unlocked Hatch", "unisplt");
    settings.Add("BlocksStart",false,"Blocks Start", "unisplt");
    settings.Add("BlocksDone",false,"Blocks Done", "unisplt");
    settings.Add("DivingStart",false,"Diving Start", "unisplt");
    settings.Add("TurninTiki",false,"Turn in Tiki", "unisplt");
    settings.Add("KayakRaceStart",false,"Kayak Race Start", "unisplt");
    settings.Add("KayakRaceDone",false,"Kayak Race Done", "unisplt");
    settings.Add("Stage2Medallion",false,"Stage 2 Medallion", "unisplt");
    settings.Add("Stage3Done",false,"Stage 3 Done", "unisplt");
    settings.Add("PointsCardFromBess",false,"Points Card From Bess", "unisplt");
    settings.Add("CodefromLeena",false,"Code from Leena", "unisplt");
    settings.Add("Pickaxe",false,"Pickaxe", "unisplt");
    settings.Add("MaoriBook",false,"Maori Book", "unisplt");
    settings.Add("SonnyTurtle",false,"Sonny Turtle", "unisplt");
    settings.Add("TurtleStart",false,"Turtle Start", "unisplt");
    settings.Add("TurtleDone",false,"Turtle Done", "unisplt");
    settings.Add("GotUnderwaterRelic",false,"Got Underwater Relic", "unisplt");
    settings.Add("Stage3Medallion",false,"Stage 3 Medallion", "unisplt");
    settings.Add("AtCromwell",false,"At Cromwell", "unisplt");
    settings.Add("GotDirt",false,"Got Dirt", "unisplt");
    settings.Add("GotJournal",false,"Got Journal", "unisplt");
    settings.Add("LanternLit",false,"Lantern Lit", "unisplt");
    settings.Add("SluiceStart",false,"Sluice Start", "unisplt");
    settings.Add("SluiceDone",false,"Sluice Done", "unisplt");
    settings.Add("Gold",false,"Gold", "unisplt");
    settings.Add("Stage4Medallion",false,"Stage 4 Medallion", "unisplt");
    settings.Add("AlienShipsPuzzle",false,"Alien Ships Puzzle", "unisplt");
    settings.Add("AlienShipsDone",false,"Alien Ships Done", "unisplt");
    settings.Add("Stage4Done",false,"Stage 4 Done", "unisplt");
    settings.Add("CavePowerStart",false,"Cave Power Start", "unisplt");
    settings.Add("CavePowerDone",false,"Cave Power Done", "unisplt");
    settings.Add("MaoriSymbolsStart",false,"Maori Symbols Start", "unisplt");
    settings.Add("MaoriSymbolsDone",false,"Maori Symbols Done", "unisplt");
    settings.Add("SeeKiriinMine",false,"See Kiri in Mine", "unisplt");
    settings.Add("OminousStart",false,"Ominous Start", "unisplt");
    settings.Add("OminousDone",false,"Ominous Done", "unisplt");
    settings.Add("Stage5Medallion",false,"Stage 5 Medallion", "unisplt");
    settings.Add("BessCatchCutscene",false,"Bess Catch Cutscene", "unisplt");
    settings.Add("SuddenDeathStart",false,"Sudden Death Start", "unisplt");
    settings.Add("SuddenDeathDone",false,"Sudden Death Done", "unisplt");
    settings.Add("RappelDownCave",false,"Rappel Down Cave", "unisplt");
    settings.Add("CaveColorsStart",false,"Cave Colors Start", "unisplt");
    settings.Add("CaveColorsDone",false,"Cave Colors Done", "unisplt");
    settings.Add("RaftingStart",false,"Rafting Start", "unisplt");
    settings.Add("RaftingDone",false,"Rafting Done", "unisplt");
    settings.Add("CompassAssembly",false,"Compass Assembly", "unisplt");
    settings.Add("CompassStart",false,"Compass Start", "unisplt");
    settings.Add("CompassDone",false,"Compass Done", "unisplt");
    
    // Death%
    settings.Add("deathp", false, "Death% (Untested)");
}

start {

    if (current.scene == "CINEMATIC_OPENING_SC") {
        // Settings
        vars.reset = !settings["reset"];
        
        // Universal Splits
        vars.TrainStart = !settings["TrainStart"];
        vars.TrainDone = !settings["TrainDone"];
        vars.ActivateMap = !settings["ActivateMap"];
        vars.Kakabeak = !settings["Kakabeak"];
        vars.SpottheDifference = !settings["SpottheDifference"];
        vars.WOOLSHEDStart = !settings["WOOLSHEDStart"];
        vars.WOOLSHEDDone = !settings["WOOLSHEDDone"];
        vars.DoubtfulSound = !settings["DoubtfulSound"];
        vars.Pikao = !settings["Pikao"];
        vars.MtCookLily = !settings["MtCookLily"];
        vars.Mossburn = !settings["Mossburn"];
        vars.SpiderOrchid = !settings["SpiderOrchid"];
        vars.BridgeCutscene = !settings["BridgeCutscene"];
        vars.MeetPatrick = !settings["MeetPatrick"];
        vars.SecurityCameraStart = !settings["SecurityCameraStart"];
        vars.SecurityCameraDone = !settings["SecurityCameraDone"];
        vars.SpiedBooklet = !settings["SpiedBooklet"];
        vars.MeetLeena = !settings["MeetLeena"];
        vars.MeetKiri = !settings["MeetKiri"];
        vars.MeetSonny = !settings["MeetSonny"];
        vars.BehindWaterfall = !settings["BehindWaterfall"];
        vars.BridgeStart = !settings["BridgeStart"];
        vars.BridgeDone = !settings["BridgeDone"];
        vars.WaterfallFern = !settings["WaterfallFern"];
        vars.UsePointsCard = !settings["UsePointsCard"];
        vars.FlowersStart = !settings["FlowersStart"];
        vars.FlowersDone = !settings["FlowersDone"];
        vars.Bag = !settings["Bag"];
        vars.InWoolshed = !settings["InWoolshed"];
        vars.ShearBlades = !settings["ShearBlades"];
        vars.PowerKey = !settings["PowerKey"];
        vars.PowerBox = !settings["PowerBox"];
        vars.Flint = !settings["Flint"];
        vars.Sheep = !settings["Sheep"];
        vars.BladesStart = !settings["BladesStart"];
        vars.GotWool = !settings["GotWool"];
        vars.Stage2Done = !settings["Stage2Done"];
        vars.RubiksCubeFall = !settings["RubiksCubeFall"];
        vars.WordSearchStart = !settings["WordSearchStart"];
        vars.WordSearchDone = !settings["WordSearchDone"];
        vars.FootlockerStart = !settings["FootlockerStart"];
        vars.FootlockerDone = !settings["FootlockerDone"];
        vars.AskLeenaAboutMedallion = !settings["AskLeenaAboutMedallion"];
        vars.MeetBess = !settings["MeetBess"];
        vars.EnterKeaTent = !settings["EnterKeaTent"];
        vars.BackpackStart = !settings["BackpackStart"];
        vars.BackpackDone = !settings["BackpackDone"];
        vars.AtHatch = !settings["AtHatch"];
        vars.UnlockedHatch = !settings["UnlockedHatch"];
        vars.BlocksStart = !settings["BlocksStart"];
        vars.BlocksDone = !settings["BlocksDone"];
        vars.DivingStart = !settings["DivingStart"];
        vars.TurninTiki = !settings["TurninTiki"];
        vars.KayakRaceStart = !settings["KayakRaceStart"];
        vars.KayakRaceDone = !settings["KayakRaceDone"];
        vars.Stage2Medallion = !settings["Stage2Medallion"];
        vars.Stage3Done = !settings["Stage3Done"];
        vars.PointsCardFromBess = !settings["PointsCardFromBess"];
        vars.CodefromLeena = !settings["CodefromLeena"];
        vars.Pickaxe = !settings["Pickaxe"];
        vars.MaoriBook = !settings["MaoriBook"];
        vars.SonnyTurtle = !settings["SonnyTurtle"];
        vars.TurtleStart = !settings["TurtleStart"];
        vars.TurtleDone = !settings["TurtleDone"];
        vars.GotUnderwaterRelic = !settings["GotUnderwaterRelic"];
        vars.Stage3Medallion = !settings["Stage3Medallion"];
        vars.AtCromwell = !settings["AtCromwell"];
        vars.GotDirt = !settings["GotDirt"];
        vars.GotJournal = !settings["GotJournal"];
        vars.LanternLit = !settings["LanternLit"];
        vars.SluiceStart = !settings["SluiceStart"];
        vars.SluiceDone = !settings["SluiceDone"];
        vars.Gold = !settings["Gold"];
        vars.Stage4Medallion = !settings["Stage4Medallion"];
        vars.AlienShipsPuzzle = !settings["AlienShipsPuzzle"];
        vars.AlienShipsDone = !settings["AlienShipsDone"];
        vars.Stage4Done = !settings["Stage4Done"];
        vars.CavePowerStart = !settings["CavePowerStart"];
        vars.CavePowerDone = !settings["CavePowerDone"];
        vars.MaoriSymbolsStart = !settings["MaoriSymbolsStart"];
        vars.MaoriSymbolsDone = !settings["MaoriSymbolsDone"];
        vars.SeeKiriinMine = !settings["SeeKiriinMine"];
        vars.OminousStart = !settings["OminousStart"];
        vars.OminousDone = !settings["OminousDone"];
        vars.Stage5Medallion = !settings["Stage5Medallion"];
        vars.BessCatchCutscene = !settings["BessCatchCutscene"];
        vars.SuddenDeathStart = !settings["SuddenDeathStart"];
        vars.SuddenDeathDone = !settings["SuddenDeathDone"];
        vars.RappelDownCave = !settings["RappelDownCave"];
        vars.CaveColorsStart = !settings["CaveColorsStart"];
        vars.CaveColorsDone = !settings["CaveColorsDone"];
        vars.RaftingStart = !settings["RaftingStart"];
        vars.RaftingDone = !settings["RaftingDone"];
        vars.CompassAssembly = !settings["CompassAssembly"];
        vars.CompassStart = !settings["CompassStart"];
        vars.CompassDone = !settings["CompassDone"];
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
            
        case "CLOSINGLETTER_SC": // Universal End
			return true;
            
        // Death% Splits

        
        // Universal Splits
        case "RAILS_SC":
    if (!vars.TrainStart) { vars.TrainStart = true; return true; }
    break;
        case "RAILSWON_SC":
    if (!vars.TrainDone) { vars.TrainDone = true; return true; }
    break;
        case "S2801":
    if (!vars.ActivateMap) { vars.ActivateMap = true; return true; }
    break;
        case "S1420":
    if (!vars.Kakabeak) { vars.Kakabeak = true; return true; }
    break;
        case "SCREENS_SC":
    if (!vars.SpottheDifference) { vars.SpottheDifference = true; return true; }
    break;
        case "SCRAMBLE_SC":
    if (!vars.WOOLSHEDStart) { vars.WOOLSHEDStart = true; return true; }
    break;
        case "SCRAMBLEWON_SC":
    if (!vars.WOOLSHEDDone) { vars.WOOLSHEDDone = true; return true; }
    break;
        case "S2607":
    if (!vars.DoubtfulSound) { vars.DoubtfulSound = true; return true; }
    break;
        case "S2781":
    if (!vars.Pikao) { vars.Pikao = true; return true; }
    break;
        case "S2621":
    if (!vars.MtCookLily) { vars.MtCookLily = true; return true; }
    break;
        case "S1800":
    if (!vars.Mossburn) { vars.Mossburn = true; return true; }
    break;
        case "S2010":
    if (!vars.SpiderOrchid) { vars.SpiderOrchid = true; return true; }
    break;
        case "WAT_GEORGEFALLANIM_SC":
    if (!vars.BridgeCutscene) { vars.BridgeCutscene = true; return true; }
    break;
        case "PD_DEFAULT_SC":
    if (!vars.MeetPatrick) { vars.MeetPatrick = true; return true; }
    break;
        case "SECURITY_SC":
    if (!vars.SecurityCameraStart) { vars.SecurityCameraStart = true; return true; }
    break;
        case "SECURITYWON_SC":
    if (!vars.SecurityCameraDone) { vars.SecurityCameraDone = true; return true; }
    break;
        case "S1028_OPEN_SC":
    if (!vars.SpiedBooklet) { vars.SpiedBooklet = true; return true; }
    break;
        case "LP_BOUNDS_SC":
    if (!vars.MeetLeena) { vars.MeetLeena = true; return true; }
    break;
        case "KN_GEORGE_SC":
    if (!vars.MeetKiri) { vars.MeetKiri = true; return true; }
    break;
        case "SJ_NOTES_SC":
    if (!vars.MeetSonny) { vars.MeetSonny = true; return true; }
    break;
        case "S2024_OPEN_SC":
    if (!vars.BehindWaterfall) { vars.BehindWaterfall = true; return true; }
    break;
        case "BOARDS_SC":
    if (!vars.BridgeStart) { vars.BridgeStart = true; return true; }
    break;
        case "BOARDSWON_SC":
    if (!vars.BridgeDone) { vars.BridgeDone = true; return true; }
    break;
        case "S2048":
    if (!vars.WaterfallFern) { vars.WaterfallFern = true; return true; }
    break;
        case "SCOREBOARD_SC":
    if (!vars.UsePointsCard) { vars.UsePointsCard = true; return true; }
    break;
        case "PLANTS_SC":
    if (!vars.FlowersStart) { vars.FlowersStart = true; return true; }
    break;
        case "PLANTSWON_SC":
    if (!vars.FlowersDone) { vars.FlowersDone = true; return true; }
    break;
        case "AUCTION_SC":
    if (!vars.Bag) { vars.Bag = true; return true; }
    break;
        case "S1807":
    if (!vars.InWoolshed) { vars.InWoolshed = true; return true; }
    break;
        case "S1830":
    if (!vars.ShearBlades) { vars.ShearBlades = true; return true; }
    break;
        case "S1824":
    if (!vars.PowerKey) { vars.PowerKey = true; return true; }
    break;
        case "S1828":
    if (!vars.PowerBox) { vars.PowerBox = true; return true; }
    break;
        case "S1825":
    if (!vars.Flint) { vars.Flint = true; return true; }
    break;
        case "S1834":
    if (!vars.Sheep) { vars.Sheep = true; return true; }
    break;
        case "WHEEL_SC":
    if (!vars.BladesStart) { vars.BladesStart = true; return true; }
    break;
        case "S1835":
    if (!vars.GotWool) { vars.GotWool = true; return true; }
    break;
        case "BAS_TVBRIDGE3ANIM":
    if (!vars.Stage2Done) { vars.Stage2Done = true; return true; }
    break;
        case "PUZ_MOBILECOLLAPSE_SC":
    if (!vars.RubiksCubeFall) { vars.RubiksCubeFall = true; return true; }
    break;
        case "WORDSEARCH_SC":
    if (!vars.WordSearchStart) { vars.WordSearchStart = true; return true; }
    break;
        case "WORDSEARCHWON_SC":
    if (!vars.WordSearchDone) { vars.WordSearchDone = true; return true; }
    break;
        case "COMBO_SC":
    if (!vars.FootlockerStart) { vars.FootlockerStart = true; return true; }
    break;
        case "COMBOWON_SC":
    if (!vars.FootlockerDone) { vars.FootlockerDone = true; return true; }
    break;
        case "LP_MED_TAKE_SC":
    if (!vars.AskLeenaAboutMedallion) { vars.AskLeenaAboutMedallion = true; return true; }
    break;
        case "BM_SAD_SC":
    if (!vars.MeetBess) { vars.MeetBess = true; return true; }
    break;
        case "S1010":
    if (!vars.EnterKeaTent) { vars.EnterKeaTent = true; return true; }
    break;
        case "BACKPACK_SC":
    if (!vars.BackpackStart) { vars.BackpackStart = true; return true; }
    break;
        case "BACKPACKWON_SC":
    if (!vars.BackpackDone) { vars.BackpackDone = true; return true; }
    break;
        case "S2617":
    if (!vars.AtHatch) { vars.AtHatch = true; return true; }
    break;
        case "S2620":
    if (!vars.UnlockedHatch) { vars.UnlockedHatch = true; return true; }
    break;
        case "PRESSURE_SC":
    if (!vars.BlocksStart) { vars.BlocksStart = true; return true; }
    break;
        case "PRESSUREWON_SC":
    if (!vars.BlocksDone) { vars.BlocksDone = true; return true; }
    break;
        case "OBS_SUBDIVINGANIM_SC":
    if (!vars.DivingStart) { vars.DivingStart = true; return true; }
    break;
        case "S2422":
    if (!vars.TurninTiki) { vars.TurninTiki = true; return true; }
    break;
        case "S2625":
    if (!vars.KayakRaceStart) { vars.KayakRaceStart = true; return true; }
    break;
        case "S2622":
    if (!vars.KayakRaceDone) { vars.KayakRaceDone = true; return true; }
    break;
        case "S2618":
    if (!vars.Stage2Medallion) { vars.Stage2Medallion = true; return true; }
    break;
        case "BAS_TVBRIDGE4ANIM_SC":
    if (!vars.Stage3Done) { vars.Stage3Done = true; return true; }
    break;
        case "BM_COMICHANDOFF_SC":
    if (!vars.PointsCardFromBess) { vars.PointsCardFromBess = true; return true; }
    break;
        case "LP_ETUDE_SC":
    if (!vars.CodefromLeena) { vars.CodefromLeena = true; return true; }
    break;
        case "S1219":
    if (!vars.Pickaxe) { vars.Pickaxe = true; return true; }
    break;
        case "KN_COMPETEHANDOFF_SC":
    if (!vars.MaoriBook) { vars.MaoriBook = true; return true; }
    break;
        case "SJ_TURTLE_SC":
    if (!vars.SonnyTurtle) { vars.SonnyTurtle = true; return true; }
    break;
        case "DOTS_SC":
    if (!vars.TurtleStart) { vars.TurtleStart = true; return true; }
    break;
        case "DOTSWON_SC":
    if (!vars.TurtleDone) { vars.TurtleDone = true; return true; }
    break;
        case "OBS_RELIC3CU_SC":
    if (!vars.GotUnderwaterRelic) { vars.GotUnderwaterRelic = true; return true; }
    break;
        case "S2440":
    if (!vars.Stage3Medallion) { vars.Stage3Medallion = true; return true; }
    break;
        case "S1600":
    if (!vars.AtCromwell) { vars.AtCromwell = true; return true; }
    break;
        case "DIG_SC":
    if (!vars.GotDirt) { vars.GotDirt = true; return true; }
    break;
        case "ANKERITE_SC":
    if (!vars.GotJournal) { vars.GotJournal = true; return true; }
    break;
        case "S1620_OPENLANTERN_SC":
    if (!vars.LanternLit) { vars.LanternLit = true; return true; }
    break;
        case "PIPES_SC":
    if (!vars.SluiceStart) { vars.SluiceStart = true; return true; }
    break;
        case "PIPESWON_SC":
    if (!vars.SluiceDone) { vars.SluiceDone = true; return true; }
    break;
        case "PANNINGC_SC":
    if (!vars.Gold) { vars.Gold = true; return true; }
    break;
        case "S1633_MEDALLION_SC":
    if (!vars.Stage4Medallion) { vars.Stage4Medallion = true; return true; }
    break;
        case "SEQUENCE_SC":
    if (!vars.AlienShipsPuzzle) { vars.AlienShipsPuzzle = true; return true; }
    break;
        case "SEQUENCEWON_SC":
    if (!vars.AlienShipsDone) { vars.AlienShipsDone = true; return true; }
    break;
        case "BAS_TVBRIDGE5ANIM_SC":
    if (!vars.Stage4Done) { vars.Stage4Done = true; return true; }
    break;
        case "POWER_SC":
    if (!vars.CavePowerStart) { vars.CavePowerStart = true; return true; }
    break;
        case "POWERWON_SC":
    if (!vars.CavePowerDone) { vars.CavePowerDone = true; return true; }
    break;
        case "SYMBOLS_SC":
    if (!vars.MaoriSymbolsStart) { vars.MaoriSymbolsStart = true; return true; }
    break;
        case "SYMBOLSWON_SC":
    if (!vars.MaoriSymbolsDone) { vars.MaoriSymbolsDone = true; return true; }
    break;
        case "GOL_KIRI_MINES_ANIM_SC":
    if (!vars.SeeKiriinMine) { vars.SeeKiriinMine = true; return true; }
    break;
        case "LINES_SC":
    if (!vars.OminousStart) { vars.OminousStart = true; return true; }
    break;
        case "LINESWON_SC":
    if (!vars.OminousDone) { vars.OminousDone = true; return true; }
    break;
        case "J_MUSICHANDOFF_SC":
    if (!vars.Stage5Medallion) { vars.Stage5Medallion = true; return true; }
    break;
        case "BAS_FINALTESTANIM_SC":
    if (!vars.BessCatchCutscene) { vars.BessCatchCutscene = true; return true; }
    break;
        case "MACHINE_SC":
    if (!vars.SuddenDeathStart) { vars.SuddenDeathStart = true; return true; }
    break;
        case "BAS_ENDINGANIM_SC":
    if (!vars.SuddenDeathDone) { vars.SuddenDeathDone = true; return true; }
    break;
        case "CAV_RAPPEL_ANIM_SC":
    if (!vars.RappelDownCave) { vars.RappelDownCave = true; return true; }
    break;
        case "RELICS_SC":
    if (!vars.CaveColorsStart) { vars.CaveColorsStart = true; return true; }
    break;
        case "RELICSWON_SC":
    if (!vars.CaveColorsDone) { vars.CaveColorsDone = true; return true; }
    break;
        case "RAFTING_SC":
    if (!vars.RaftingStart) { vars.RaftingStart = true; return true; }
    break;
        case "CAV_SONNY_END_SC":
    if (!vars.RaftingDone) { vars.RaftingDone = true; return true; }
    break;
        case "COMPASSINTRO_SC":
    if (!vars.CompassAssembly) { vars.CompassAssembly = true; return true; }
    break;
        case "COMPASS_SC":
    if (!vars.CompassStart) { vars.CompassStart = true; return true; }
    break;
        case "COMPASSWON_SC":
    if (!vars.CompassDone) { vars.CompassDone = true; return true; }
    break;
        
    }
}

reset {
	if (!vars.reset && current.scene == "Badges_SC") {
		return true; 
	}
}
