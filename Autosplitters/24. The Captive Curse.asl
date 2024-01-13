// Nancy Drew: The Captive Curse Autosplitter
// Written by Toasterberry, scene values & splits by Yandema
// https://linktr.ee/toasterberry

state("Captive")
{
	string24 scene : "Ndui.dll", 0x8C424, 0xC, 0xE0, 0xF0, 0x0, 0x60, 0x8, 0x0;
}

startup
{
	// Settings
	settings.Add("autorst",false,"Auto reset at difficulty select");
	
	// Universal Splits
	settings.Add("unisplt", true, "Universal Splits");
	settings.Add("matchDone",false,"Match Done", "unisplt");
	settings.Add("shears",false,"Shears", "unisplt");
	settings.Add("glassBook", false, "Glass Book", "unisplt");
    settings.Add("purchasedCake", false, "Purchased Cake", "unisplt");
    settings.Add("meetAnja", false, "Meet Anja", "unisplt");
    settings.Add("meetRenate", false, "Meet Renate", "unisplt");
    settings.Add("bagStart", false, "Bag Start", "unisplt");
    settings.Add("bagDone", false, "Bag Done", "unisplt");
    settings.Add("renatesMap", false, "Renate’s Map", "unisplt");
    settings.Add("meetKarl", false, "Meet Karl", "unisplt");
    settings.Add("raidCardsDone", false, "Raid Cards Done", "unisplt");
    settings.Add("karlsKey", false, "Karl’s Key", "unisplt");
    settings.Add("callMarkus", false, "Call Markus", "unisplt");
    settings.Add("courtyardFire", false, "Courtyard Fire", "unisplt");
    settings.Add("firePutOut", false, "Fire Put Out", "unisplt");
    settings.Add("tablePlug", false, "Table Plug", "unisplt");
    settings.Add("enterFurnaceRoom", false, "Enter Furnace Room", "unisplt");
    settings.Add("snakePrank", false, "Snake Prank", "unisplt");
    settings.Add("shearsSharpened", false, "Shears Sharpened", "unisplt");
    settings.Add("meetLukas", false, "Meet Lukas", "unisplt");
    settings.Add("distractKarl", false, "Distract Karl", "unisplt");
    settings.Add("stainedGlassBoxStart", false, "Stained Glass Box Start", "unisplt");
    settings.Add("stainedGlassBoxDone", false, "Stained Glass Box Done", "unisplt");
    settings.Add("swapALotStart", false, "Swap-A-Lot Start", "unisplt");
    settings.Add("b", false, "B", "unisplt");
    settings.Add("dictionary", false, "Dictionary", "unisplt");
    settings.Add("renateSeesDress", false, "Renate Sees Dress", "unisplt");
	settings.Add("nedTimer", false, "Ned Timer Start", "unisplt");
    settings.Add("a", false, "A", "unisplt");
    settings.Add("dungeonLegendPage", false, "Dungeon Legend Page", "unisplt");
    settings.Add("forest", false, "Forest", "unisplt");
    settings.Add("burrsAtCampsite", false, "Burrs at Campsite", "unisplt");
    settings.Add("glockenspielDone", false, "Glockenspiel Done", "unisplt");
    settings.Add("zapUpStart", false, "Zap-Up Start", "unisplt");
    settings.Add("zapUpDone", false, "Zap-Up Done", "unisplt");
    settings.Add("bookOverlay", false, "Book Overlay", "unisplt");
    settings.Add("anjasKey", false, "Anja’s Key", "unisplt");
    settings.Add("printedEmails", false, "Printed Emails", "unisplt");
    settings.Add("clockOpened", false, "Clock Opened", "unisplt");
    settings.Add("enigma1Start", false, "Enigma 1 Start", "unisplt");
	settings.Add("dayplannerStart", false, "Dayplanner Start", "unisplt");
	settings.Add("dayplannerOpened", false, "Dayplanner Opened", "unisplt");
	settings.Add("karlsCabinetStart", false, "Karl’s Cabinet Start", "unisplt");
	settings.Add("karlsCabinetOpened", false, "Karl’s Cabinet Opened", "unisplt");
	settings.Add("courtyardMonsterOnCamera", false, "Courtyard Monster on Camera", "unisplt");
	settings.Add("monsterJumpscare", false, "Monster Jumpscare", "unisplt");
	settings.Add("slider1Start", false, "Slider 1 Start", "unisplt");
	settings.Add("slider2Start", false, "Slider 2 Start", "unisplt");
	settings.Add("slider3Start", false, "Slider 3 Start", "unisplt");
	settings.Add("slidersDone", false, "Sliders Done", "unisplt");
	settings.Add("hexPuzzleStart", false, "Hex Puzzle Start", "unisplt");
	settings.Add("hexPuzzleDone", false, "Hex Puzzle Done", "unisplt");
	settings.Add("passagesLegendPage", false, "Passages Legend Page", "unisplt");
	settings.Add("enigma2Page", false, "Enigma 2 Page", "unisplt");
	settings.Add("barrelOpened", false, "Barrel Opened", "unisplt");
	settings.Add("digForNecklace", false, "Dig for Necklace", "unisplt");
	settings.Add("nancysRoomFromPassages", false, "Nancy’s Room from Passages", "unisplt");
	settings.Add("stilts", false, "Stilts", "unisplt");
	settings.Add("tellAnjaAboutCastleCast", false, "Tell Anja about Castle Cast", "unisplt");
	settings.Add("monsterAlert2", false, "Monster Alert 2", "unisplt");
	settings.Add("seeMonsterInGlassShop", false, "See Monster in Glass Shop", "unisplt");
	settings.Add("glassShopFootprints", false, "Glass Shop Footprints", "unisplt");
	settings.Add("caughtLukasAsMonster", false, "Caught Lukas as Monster", "unisplt");
	settings.Add("tellKarlAboutLukas", false, "Tell Karl About Lukas", "unisplt");
	settings.Add("seeMonsterAtTree", false, "See Monster at Tree", "unisplt");
	settings.Add("seeAnjaLeavingCastle", false, "See Anja Leaving Castle", "unisplt");
	settings.Add("lookAtPostcard", false, "Look at Postcard", "unisplt");
	settings.Add("showKarlProof", false, "Show Karl Proof", "unisplt");
	settings.Add("lukasMissing", false, "Lukas Missing", "unisplt");
	settings.Add("findLukasInDungeon", false, "Find Lukas in Dungeon", "unisplt");
	settings.Add("freeLukas", false, "#FreeLukas", "unisplt");
	settings.Add("ko", false, "KO", "unisplt");
	settings.Add("entkommenStart", false, "Entkommen Start", "unisplt");
	settings.Add("entkommenDone", false, "Entkommen Done", "unisplt");
	settings.Add("forgedEmail", false, "Forged Email", "unisplt");
	settings.Add("necklaceTrap", false, "Necklace Trap", "unisplt");
	
	// All Awards Splits
	settings.Add("allawsplit", true, "Extra 'All Awards' Splits");
	settings.Add("raid", false, "Raid", "allawsplit");
	settings.Add("karlCharacter1", false, "Karl Character 1", "allawsplit");
	settings.Add("karlCharacter2", false, "Karl Character 2", "allawsplit");
	settings.Add("monsterTutorialStart", false, "Monster Tutorial Start", "allawsplit");
	settings.Add("karlCharacter3", false, "Karl Character 3", "allawsplit");
	settings.Add("karlCharacter4", false, "Karl Character 4", "allawsplit");
	settings.Add("karlCharacter5", false, "Karl Character 5", "allawsplit");
	settings.Add("cardReady", false, "Card Ready", "allawsplit");
	settings.Add("awardsScreen", false, "Awards Screen", "allawsplit");

	// Death% 
	settings.Add("deathp", false, "Death%");
	settings.Add("mdonedp", false, "Match Done", "deathp");
}

start
{
	if (current.scene == "Cinematic_Opening_SC") //Starting the autosplitter
	{
		vars.reset = !settings["autorst"];
		
		// Universal Splits
		vars.matchDone = !settings["matchDone"];
		vars.shears = !settings["shears"];
		vars.glassBook = !settings["glassBook"];
        vars.purchasedCake = !settings["purchasedCake"];
        vars.meetAnja = !settings["meetAnja"];
        vars.meetRenate = !settings["meetRenate"];
        vars.bagStart = !settings["bagStart"];
        vars.bagDone = !settings["bagDone"];
        vars.renatesMap = !settings["renatesMap"];
        vars.meetKarl = !settings["meetKarl"];
        vars.raidCardsDone = !settings["raidCardsDone"];
        vars.karlsKey = !settings["karlsKey"];
        vars.callMarkus = !settings["callMarkus"];
        vars.courtyardFire = !settings["courtyardFire"];
        vars.firePutOut = !settings["firePutOut"];
        vars.tablePlug = !settings["tablePlug"];
        vars.enterFurnaceRoom = !settings["enterFurnaceRoom"];
        vars.snakePrank = !settings["snakePrank"];
        vars.shearsSharpened = !settings["shearsSharpened"];
        vars.meetLukas = !settings["meetLukas"];
        vars.distractKarl = !settings["distractKarl"];
        vars.stainedGlassBoxStart = !settings["stainedGlassBoxStart"];
        vars.stainedGlassBoxDone = !settings["stainedGlassBoxDone"];
        vars.swapALotStart = !settings["swapALotStart"];
        vars.b = !settings["b"];
        vars.dictionary = !settings["dictionary"];
        vars.renateSeesDress = !settings["renateSeesDress"];
		vars.nedTimer = !settings["nedTimer"];
        vars.a = !settings["a"];
        vars.dungeonLegendPage = !settings["dungeonLegendPage"];
        vars.forest = !settings["forest"];
        vars.burrsAtCampsite = !settings["burrsAtCampsite"];
        vars.glockenspielDone = !settings["glockenspielDone"];
        vars.zapUpStart = !settings["zapUpStart"];
        vars.zapUpDone = !settings["zapUpDone"];
        vars.bookOverlay = !settings["bookOverlay"];
        vars.anjasKey = !settings["anjasKey"];
        vars.printedEmails = !settings["printedEmails"];
        vars.clockOpened = !settings["clockOpened"];
        vars.enigma1Start = !settings["enigma1Start"];
		vars.dayplannerStart = !settings["dayplannerStart"];
		vars.dayplannerOpened = !settings["dayplannerOpened"];
		vars.karlsCabinetStart = !settings["karlsCabinetStart"];
		vars.karlsCabinetOpened = !settings["karlsCabinetOpened"];
		vars.courtyardMonsterOnCamera = !settings["courtyardMonsterOnCamera"];
		vars.monsterJumpscare = !settings["monsterJumpscare"];
		vars.slider1Start = !settings["slider1Start"];
		vars.slider2Start = !settings["slider2Start"];
		vars.slider3Start = !settings["slider3Start"];
		vars.slidersDone = !settings["slidersDone"];
		vars.hexPuzzleStart = !settings["hexPuzzleStart"];
		vars.hexPuzzleDone = !settings["hexPuzzleDone"];
		vars.passagesLegendPage = !settings["passagesLegendPage"];
		vars.enigma2Page = !settings["enigma2Page"];
		vars.barrelOpened = !settings["barrelOpened"];
		vars.digForNecklace = !settings["digForNecklace"];
		vars.nancysRoomFromPassages = !settings["nancysRoomFromPassages"];
		vars.stilts = !settings["stilts"];
		vars.tellAnjaAboutCastleCast = !settings["tellAnjaAboutCastleCast"];
		vars.monsterAlert2 = !settings["monsterAlert2"];
		vars.seeMonsterInGlassShop = !settings["seeMonsterInGlassShop"];
		vars.glassShopFootprints = !settings["glassShopFootprints"];
		vars.caughtLukasAsMonster = !settings["caughtLukasAsMonster"];
		vars.tellKarlAboutLukas = !settings["tellKarlAboutLukas"];
		vars.seeMonsterAtTree = !settings["seeMonsterAtTree"];
		vars.seeAnjaLeavingCastle = !settings["seeAnjaLeavingCastle"];
		vars.lookAtPostcard = !settings["lookAtPostcard"];
		vars.showKarlProof = !settings["showKarlProof"];
		vars.lukasMissing = !settings["lukasMissing"];
		vars.findLukasInDungeon = !settings["findLukasInDungeon"];
		vars.freeLukas = !settings["freeLukas"];
		vars.ko = !settings["ko"];
		vars.entkommenStart = !settings["entkommenStart"];
		vars.entkommenDone = !settings["entkommenDone"];
		vars.forgedEmail = !settings["forgedEmail"];
		vars.necklaceTrap = !settings["necklaceTrap"];
		
		// All Awards Splits
		vars.raid = !settings["raid"];
		vars.karlCharacter1 = !settings["karlCharacter1"];
		vars.karlCharacter2 = !settings["karlCharacter2"];
		vars.monsterTutorialStart = !settings["monsterTutorialStart"];
		vars.karlCharacter3 = !settings["karlCharacter3"];
		vars.karlCharacter4 = !settings["karlCharacter4"];
		vars.karlCharacter5 = !settings["karlCharacter5"];
		vars.cardReady = !settings["cardReady"];
		vars.awardsScreen = !settings["awardsScreen"];
		
		// Death%
		vars.deathp = !settings["deathp"];
		vars.mdonedp = !settings["mdonedp"];
		
		return true;
	}
}

split
{
	string s = current.scene;
	switch (s) {
		// "Any%" & "All Awards" End
		case "CLS_LetterA_SC": 
			return true;
			
		// Death% End
		case "SecondChance_Type_SC":
			if (!vars.deathp) { vars.deathp = true; return true; }
			break;
			
		// Universal Splits
		case "Cinematic_BucketRaise_SC":
			if (!vars.matchDone) { vars.matchDone = true; return true; }
			else if (!vars.mdonedp) { vars.mdonedp = true; return true; } //Death% Match Split
			break;
		case "s2038":  
			if (!vars.shears) { vars.shears = true; return true; }
			break;
		case "s3061":
			if (!vars.glassBook) { vars.glassBook = true; return true; }
			break;
		case "s3141":
			if (!vars.purchasedCake) { vars.purchasedCake = true; return true; }
			break;
		case "s1400":
			if (!vars.meetAnja) { vars.meetAnja = true; return true; }
			break;
		case "s1300":
			if (!vars.meetRenate) { vars.meetRenate = true; return true; }
			break;
		case "RearrangeScript_SC":
			if (!vars.bagStart) { vars.bagStart = true; return true; }
			break;
		case "s3223":
			if (!vars.bagDone) { vars.bagDone = true; return true; }
			break;
		case "s3222":
			if (!vars.renatesMap) { vars.renatesMap = true; return true; }
			break;
		case "s1000":
			if (!vars.meetKarl) { vars.meetKarl = true; return true; }
			break;
		case "s3900":
			if (!vars.raidCardsDone) { vars.raidCardsDone = true; return true; }
			break;
		case "s3830":
			if (!vars.karlsKey) { vars.karlsKey = true; return true; }
			break;
		case "Landline_SC":
			if (!vars.callMarkus) { vars.callMarkus = true; return true; }
			break;
		case "s2240":
			if (!vars.courtyardFire) { vars.courtyardFire = true; return true; }
			break;
		case "s2244":
			if (!vars.firePutOut) { vars.firePutOut = true; return true; }
			break;
		case "s2341":
			if (!vars.tablePlug) { vars.tablePlug = true; return true; }
			break;
		case "s4410":
			if (!vars.enterFurnaceRoom) { vars.enterFurnaceRoom = true; return true; }
			break;
		case "Cinematic_SandPrank_SC":
			if (!vars.snakePrank) { vars.snakePrank = true; return true; }
			break;
		case "s4546":
			if (!vars.shearsSharpened) { vars.shearsSharpened = true; return true; }
			break;
		case "s1200":
			if (!vars.meetLukas) { vars.meetLukas = true; return true; }
			break;
		case "s1121":
			if (!vars.distractKarl) { vars.distractKarl = true; return true; }
			break;
		case "GlassSquaresScript_SC":
			if (!vars.stainedGlassBoxStart) { vars.stainedGlassBoxStart = true; return true; }
			break;
		case "s4234":
			if (!vars.stainedGlassBoxDone) { vars.stainedGlassBoxDone = true; return true; }
			break;
		case "s1287":
			if (!vars.swapALotStart) { vars.swapALotStart = true; return true; }
			break;
		case "s4227":
			if (!vars.b) { vars.b = true; return true; }
			break;
		case "s3522":
			if (!vars.dictionary) { vars.dictionary = true; return true; }
			break;
		case "s1303":
			if (!vars.renateSeesDress) { vars.renateSeesDress = true; return true; }
			break;
		case "s1508":
			if (!vars.nedTimer) { vars.nedTimer = true; return true; }
			break; 
		case "s4511":
			if (!vars.a) { vars.a = true; return true; }
			break;
		case "s5026":
			if (!vars.dungeonLegendPage) { vars.dungeonLegendPage = true; return true; }
			break;
		case "s5312":
			if (!vars.forest) { vars.forest = true; return true; }
			break;
		case "s5410a_SC":
			if (!vars.burrsAtCampsite) { vars.burrsAtCampsite = true; return true; }
			break;
		case "s2400":
			if (!vars.glockenspielDone) { vars.glockenspielDone = true; return true; }
			break;
		case "ControlsScript_SC":
			if (!vars.zapUpStart) { vars.zapUpStart = true; return true; }
			break;
		case "s2700":
			if (!vars.zapUpDone) { vars.zapUpDone = true; return true; }
			break;
		case "s4301":
			if (!vars.bookOverlay) { vars.bookOverlay = true; return true; }
			break;
		case "s3829":
			if (!vars.anjasKey) { vars.anjasKey = true; return true; }
			break;
		case "s3076":
			if (!vars.printedEmails) { vars.printedEmails = true; return true; }
			break;
		case "Win_Clocks_SC":
			if (!vars.clockOpened) { vars.clockOpened = true; return true; }
			break;
		case "EnigmaScript_SC":
			if (!vars.enigma1Start) { vars.enigma1Start = true; return true; }
			break;
		case "ComboScript_SC":
			if (!vars.dayplannerStart) { vars.dayplannerStart = true; return true; }
			break;
		case "s4015":
			if (!vars.dayplannerOpened) { vars.dayplannerOpened = true; return true; }
			break;
		case "KeypadScript_SC":
			if (!vars.karlsCabinetStart) { vars.karlsCabinetStart = true; return true; }
			break;
		case "s4000":
			if (!vars.karlsCabinetOpened) { vars.karlsCabinetOpened = true; return true; }
			break;
		case "s2702":
			if (!vars.courtyardMonsterOnCamera) { vars.courtyardMonsterOnCamera = true; return true; }
			break;
		case "Cinematic_CreatureHit_SC":
			if (!vars.monsterJumpscare) { vars.monsterJumpscare = true; return true; }
			break;
		case "TrafficScript01_SC":
			if (!vars.slider1Start) { vars.slider1Start = true; return true; }
			break;
		case "TrafficScript02_SC":
			if (!vars.slider2Start) { vars.slider2Start = true; return true; }
			break;
		case "TrafficScript03_SC":
			if (!vars.slider3Start) { vars.slider3Start = true; return true; }
			break;
		case "Winch_Win_SC":
			if (!vars.slidersDone) { vars.slidersDone = true; return true; }
			break;
		case "SequenceScript_SC":
			if (!vars.hexPuzzleStart) { vars.hexPuzzleStart = true; return true; }
			break;
		case "Sequence_Win_SC":
			if (!vars.hexPuzzleDone) { vars.hexPuzzleDone = true; return true; }
			break;
		case "s4862b_SC":
			if (!vars.passagesLegendPage) { vars.passagesLegendPage = true; return true; }
			break;
		case "s4852":
			if (!vars.enigma2Page) { vars.enigma2Page = true; return true; }
			break;
		case "s4863":
			if (!vars.barrelOpened) { vars.barrelOpened = true; return true; }
			break;
		case "DigScript_SC":
			if (!vars.digForNecklace) { vars.digForNecklace = true; return true; }
			break;
		case "SOL_from_PAS_SC":
			if (!vars.nancysRoomFromPassages) { vars.nancysRoomFromPassages = true; return true; }
			break;
		case "s2340":
			if (!vars.stilts) { vars.stilts = true; return true; }
			break;
		case "s1457":
			if (!vars.tellAnjaAboutCastleCast) { vars.tellAnjaAboutCastleCast = true; return true; }
			break;
		case "s4100":
			if (!vars.monsterAlert2) { vars.monsterAlert2 = true; return true; }
			break;
		case "s2701":
			if (!vars.seeMonsterInGlassShop) { vars.seeMonsterInGlassShop = true; return true; }
			break;
		case "s4534":
			if (!vars.glassShopFootprints) { vars.glassShopFootprints = true; return true; }
			break;
		case "s4351":
			if (!vars.caughtLukasAsMonster) { vars.caughtLukasAsMonster = true; return true; }
			break;
		case "s1072":
			if (!vars.tellKarlAboutLukas) { vars.tellKarlAboutLukas = true; return true; }
			break;
		case "FOR_CreaturePicture_SC":
			if (!vars.seeMonsterAtTree) { vars.seeMonsterAtTree = true; return true; }
			break;
		case "s2704":
			if (!vars.seeAnjaLeavingCastle) { vars.seeAnjaLeavingCastle = true; return true; }
			break;
		case "s3515":
			if (!vars.lookAtPostcard) { vars.lookAtPostcard = true; return true; }
			break;
		case "s1082":
			if (!vars.showKarlProof) { vars.showKarlProof = true; return true; }
			break;
		case "s1085":
			if (!vars.lukasMissing) { vars.lukasMissing = true; return true; }
			break;
		case "s5029":
			if (!vars.findLukasInDungeon) { vars.findLukasInDungeon = true; return true; }
			break;
		case "s5204":
			if (!vars.freeLukas) { vars.freeLukas = true; return true; }
			break;
		case "s5200":
			if (!vars.ko) { vars.ko = true; return true; }
			break;
		case "SlidersScript_SC":
			if (!vars.entkommenStart) { vars.entkommenStart = true; return true; }
			break;
		case "s5210":
			if (!vars.entkommenDone) { vars.entkommenDone = true; return true; }
			break;
		case "s4861":
			if (!vars.forgedEmail) { vars.forgedEmail = true; return true; }
			break;
		case "s5208a_SC":
			if (!vars.necklaceTrap) { vars.necklaceTrap = true; return true; }
			break;
		
		// All Awards Splits
		case "RaidScript_SC":
			if (!vars.raid) { vars.raid = true; return true; }
			break;
		case "s1126":
			if (!vars.karlCharacter1) { vars.karlCharacter1 = true; return true; }
			break;
		case "s1115":
			if (!vars.karlCharacter2) { vars.karlCharacter2 = true; return true; }
			break;
		case "MonsterTut_SC":
			if (!vars.monsterTutorialStart) { vars.monsterTutorialStart = true; return true; }
			break;
		case "s1116":
			if (!vars.karlCharacter3) { vars.karlCharacter3 = true; return true; }
			break;
		case "s1117":
			if (!vars.karlCharacter4) { vars.karlCharacter4 = true; return true; }
			break;
		case "s1118":
			if (!vars.karlCharacter5) { vars.karlCharacter5 = true; return true; }
			break;
		case "s1119":
			if (!vars.cardReady) { vars.cardReady = true; return true; }
			break;
		case "MetaAwards_SC":
			if (!vars.awardsScreen) { vars.awardsScreen = true; return true; }
			break;
	}
}

reset {
	if (!vars.reset && current.scene == "Badges_SC") {
		return true; 
	}
}