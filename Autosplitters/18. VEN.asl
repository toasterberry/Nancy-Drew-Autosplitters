// Nancy Drew: The Phantom of Venice
// Written by Toasterberry, Scenes by Yandema
// https://linktr.ee/toasterberry

state("PhantomOfVenice") {
    string5 scene : "PhantomOfVenice.exe", 0xFDE30, 0x4, 0x8, 0x10, 0xC, 0x0;
}

startup {
    // Settings
	settings.Add("autorst",false,"Auto reset at difficulty select");
    
    // Universal Splits
    settings.Add("unisplt", true, "Universal Splits"); 
    settings.Add("Colin",false,"Colin", "unisplt");
    settings.Add("Helena",false,"Helena", "unisplt");
    settings.Add("BancoDelOroCard",false,"Banco Del Oro Card", "unisplt");
    settings.Add("PickupBinoculars",false,"Pick up Binoculars", "unisplt");
    settings.Add("FangosDoorisLocked",false,"Fango’s Door is Locked", "unisplt");
    settings.Add("Margherita",false,"Margherita", "unisplt");
    settings.Add("SpyonFango",false,"Spy on Fango", "unisplt");
    settings.Add("AnswerPrudenceCall",false,"Answer Prudence Call", "unisplt");
    settings.Add("Hairpin",false,"Hairpin", "unisplt");
    settings.Add("FoundBug",false,"Found Bug", "unisplt");
    settings.Add("InFangosOffice",false,"In Fango’s Office", "unisplt");
    settings.Add("HiddenintheCloset",false,"Hidden in the Closet", "unisplt");
    settings.Add("CorrectPigeon",false,"Correct Pigeon", "unisplt");
    settings.Add("TranslatedSamanthaQuickNote",false,"Translated Samantha Quick Note", "unisplt");
    settings.Add("Sunglasses",false,"Sunglasses", "unisplt");
    settings.Add("MoreChocolates",false,"More Chocolates", "unisplt");
    settings.Add("Enrico",false,"Enrico", "unisplt");
    settings.Add("ScopaExplanationStart",false,"Scopa Explanation Start", "unisplt");
    settings.Add("ScopaStart",false,"Scopa Start", "unisplt");
    settings.Add("ScopaDone",false,"Scopa Done", "unisplt");
    settings.Add("FangosComputer",false,"Fango’s Computer", "unisplt");
    settings.Add("AttackedbyPhantom",false,"Attacked by Phantom", "unisplt");
    settings.Add("MargheritainArgonOffice",false,"Margherita in Argon Office", "unisplt");
    settings.Add("RialtoMarketBottle",false,"Rialto Market Bottle", "unisplt");
    settings.Add("Tesserae1Start",false,"Tesserae 1 Start", "unisplt");
    settings.Add("Tesserae2Start",false,"Tesserae 2 Start", "unisplt");
    settings.Add("Tesserae3Start",false,"Tesserae 3 Start", "unisplt");
    settings.Add("Tesserae4Start",false,"Tesserae 4 Start", "unisplt");
    settings.Add("TesseraeDone",false,"Tesserae Done", "unisplt");
    settings.Add("DancingStart",false,"Dancing Start", "unisplt");
    settings.Add("DancingWon",false,"Dancing Won", "unisplt");
    settings.Add("FallingUrn",false,"Falling Urn", "unisplt");
    settings.Add("AtZattere",false,"At Zattere", "unisplt");
    settings.Add("ZattereUnlocked",false,"Zattere Unlocked", "unisplt");
    settings.Add("ZattereTopMiddleRoom",false,"(Zattere) Top Middle Room", "unisplt");
    settings.Add("ZattereTopRightRoom",false,"(Zattere) Top Right Room", "unisplt");
    settings.Add("Levers1",false,"Levers 1", "unisplt");
    settings.Add("ZattereMiddleRightRoom",false,"(Zattere) Middle Right Room", "unisplt");
    settings.Add("ZattereBottomRightRoom",false,"(Zattere) Bottom Right Room", "unisplt");
    settings.Add("Levers2",false,"Levers 2", "unisplt");
    settings.Add("ZattereMiddleBottomRoom",false,"(Zattere) Middle Bottom Room", "unisplt");
    settings.Add("ZattereBottomLeftRoom",false,"(Zattere) Bottom Left Room", "unisplt");
    settings.Add("Levers3",false,"Levers 3", "unisplt");
    settings.Add("ZattereMiddleLeftRoom",false,"(Zattere) Middle Left Room", "unisplt");
    settings.Add("ZattereTopLeftRoom",false,"(Zattere) Top Left Room", "unisplt");
    settings.Add("Levers4",false,"Levers 4", "unisplt");
    settings.Add("GotSapphire",false,"Got Sapphire", "unisplt");
    settings.Add("ATMBugs",false,"ATM Bugs", "unisplt");
    settings.Add("DeliveredSapphire",false,"Delivered Sapphire", "unisplt");
    settings.Add("PuzzleBoxOpened",false,"Puzzle Box Opened", "unisplt");
    settings.Add("PenBugPlanting",false,"Pen Bug Planting", "unisplt");
    settings.Add("SeeBackofFlyer",false,"See Back of Flyer", "unisplt");
    settings.Add("SeeScopaCards",false,"See Scopa Cards", "unisplt");
    settings.Add("numberss",false,"111#046", "unisplt");
    settings.Add("LastPageofItalianGuide",false,"Last Page of Italian Guide", "unisplt");
    settings.Add("Stakeout",false,"Stakeout", "unisplt");
    settings.Add("StakeoutDone",false,"Stakeout Done", "unisplt");
    settings.Add("PropanoKey",false,"Propano Key", "unisplt");
    settings.Add("DrainsStart",false,"Drains Start", "unisplt");
    settings.Add("DrainsDone",false,"Drains Done", "unisplt");
    settings.Add("LockedinSafeRoom",false,"Locked in Safe Room", "unisplt");
    settings.Add("EscapedfromTunnels",false,"Escaped from Tunnels", "unisplt");
    settings.Add("CapturedHelena",false,"Captured Helena", "unisplt");
    
    // Death%
    settings.Add("deathp", false, "Death%");
    settings.Add("DColin",false,"DColin", "deathp");
    settings.Add("DHelena",false,"DHelena", "deathp");
    settings.Add("DTranslateSign",false,"DTranslate Sign", "deathp");
    settings.Add("DMargherita",false,"DMargherita", "deathp");
    settings.Add("DBEES",false,"DBEES", "deathp");
}

start {

    if (current.scene == "s6420") {
        vars.reset = !settings["autorst"];
		// Universal Splits
        vars.Colin = !settings["Colin"];
        vars.Helena = !settings["Helena"];
        vars.BancoDelOroCard = !settings["BancoDelOroCard"];
        vars.PickupBinoculars = !settings["PickupBinoculars"];
        vars.FangosDoorisLocked = !settings["FangosDoorisLocked"];
        vars.Margherita = !settings["Margherita"];
        vars.SpyonFango = !settings["SpyonFango"];
        vars.AnswerPrudenceCall = !settings["AnswerPrudenceCall"];
        vars.Hairpin = !settings["Hairpin"];
        vars.FoundBug = !settings["FoundBug"];
        vars.InFangosOffice = !settings["InFangosOffice"];
        vars.HiddenintheCloset = !settings["HiddenintheCloset"];
        vars.CorrectPigeon = !settings["CorrectPigeon"];
        vars.TranslatedSamanthaQuickNote = !settings["TranslatedSamanthaQuickNote"];
        vars.Sunglasses = !settings["Sunglasses"];
        vars.MoreChocolates = !settings["MoreChocolates"];
        vars.Enrico = !settings["Enrico"];
        vars.ScopaExplanationStart = !settings["ScopaExplanationStart"];
        vars.ScopaStart = !settings["ScopaStart"];
        vars.ScopaDone = !settings["ScopaDone"];
        vars.FangosComputer = !settings["FangosComputer"];
        vars.AttackedbyPhantom = !settings["AttackedbyPhantom"];
        vars.MargheritainArgonOffice = !settings["MargheritainArgonOffice"];
        vars.RialtoMarketBottle = !settings["RialtoMarketBottle"];
        vars.Tesserae1Start = !settings["Tesserae1Start"];
        vars.Tesserae2Start = !settings["Tesserae2Start"];
        vars.Tesserae3Start = !settings["Tesserae3Start"];
        vars.Tesserae4Start = !settings["Tesserae4Start"];
        vars.TesseraeDone = !settings["TesseraeDone"];
        vars.DancingStart = !settings["DancingStart"];
        vars.DancingWon = !settings["DancingWon"];
        vars.FallingUrn = !settings["FallingUrn"];
        vars.AtZattere = !settings["AtZattere"];
        vars.ZattereUnlocked = !settings["ZattereUnlocked"];
        vars.ZattereTopMiddleRoom = !settings["ZattereTopMiddleRoom"];
        vars.ZattereTopRightRoom = !settings["ZattereTopRightRoom"];
        vars.Levers1 = !settings["Levers1"];
        vars.ZattereMiddleRightRoom = !settings["ZattereMiddleRightRoom"];
        vars.ZattereBottomRightRoom = !settings["ZattereBottomRightRoom"];
        vars.Levers2 = !settings["Levers2"];
        vars.ZattereMiddleBottomRoom = !settings["ZattereMiddleBottomRoom"];
        vars.ZattereBottomLeftRoom = !settings["ZattereBottomLeftRoom"];
        vars.Levers3 = !settings["Levers3"];
        vars.ZattereMiddleLeftRoom = !settings["ZattereMiddleLeftRoom"];
        vars.ZattereTopLeftRoom = !settings["ZattereTopLeftRoom"];
        vars.Levers4 = !settings["Levers4"];
        vars.GotSapphire = !settings["GotSapphire"];
        vars.ATMBugs = !settings["ATMBugs"];
        vars.DeliveredSapphire = !settings["DeliveredSapphire"];
        vars.PuzzleBoxOpened = !settings["PuzzleBoxOpened"];
        vars.PenBugPlanting = !settings["PenBugPlanting"];
        vars.SeeBackofFlyer = !settings["SeeBackofFlyer"];
        vars.SeeScopaCards = !settings["SeeScopaCards"];
        vars.numberss = !settings["numberss"];
        vars.LastPageofItalianGuide = !settings["LastPageofItalianGuide"];
        vars.Stakeout = !settings["Stakeout"];
        vars.StakeoutDone = !settings["StakeoutDone"];
        vars.PropanoKey = !settings["PropanoKey"];
        vars.DrainsStart = !settings["DrainsStart"];
        vars.DrainsDone = !settings["DrainsDone"];
        vars.LockedinSafeRoom = !settings["LockedinSafeRoom"];
        vars.EscapedfromTunnels = !settings["EscapedfromTunnels"];
        vars.CapturedHelena = !settings["CapturedHelena"];
		
        // Death%
        vars.DColin = !settings["DColin"];
        vars.DHelena = !settings["DHelena"];
        vars.DTranslateSign = !settings["DTranslateSign"];
        vars.DMargherita = !settings["DMargherita"];
        vars.DBEES = !settings["DBEES"];
        return true;
    }
}

split {
    string s = current.scene;
    switch (s) {
        case "s2074": //Death% End
		return true;
		
		case "s6500": //Universal End
		return true;
		
		case "s1271":
    if (!vars.Colin) { vars.Colin = true; return true; }
    break;
        case "s2320":
    if (!vars.Helena) { vars.Helena = true; return true; }
    break;
        case "s2333":
    if (!vars.BancoDelOroCard) { vars.BancoDelOroCard = true; return true; }
    break;
        case "s4121":
    if (!vars.PickupBinoculars) { vars.PickupBinoculars = true; return true; }
    break;
        case "s2949":
    if (!vars.FangosDoorisLocked) { vars.FangosDoorisLocked = true; return true; }
    break;
        case "s1000":
    if (!vars.Margherita) { vars.Margherita = true; return true; }
    break;
        case "s2070":
    if (!vars.SpyonFango) { vars.SpyonFango = true; return true; }
    break;
        case "s1611":
    if (!vars.AnswerPrudenceCall) { vars.AnswerPrudenceCall = true; return true; }
    break;
        case "s3544":
    if (!vars.Hairpin) { vars.Hairpin = true; return true; }
    break;
        case "s4724":
    if (!vars.FoundBug) { vars.FoundBug = true; return true; }
    break;
        case "s2925":
    if (!vars.InFangosOffice) { vars.InFangosOffice = true; return true; }
    break;
        case "s2943":
    if (!vars.HiddenintheCloset) { vars.HiddenintheCloset = true; return true; }
    break;
        case "s4421":
    if (!vars.CorrectPigeon) { vars.CorrectPigeon = true; return true; }
    break;
        case "s4419":
    if (!vars.TranslatedSamanthaQuickNote) { vars.TranslatedSamanthaQuickNote = true; return true; }
    break;
        case "s5227":
    if (!vars.Sunglasses) { vars.Sunglasses = true; return true; }
    break;
        case "s2334":
    if (!vars.MoreChocolates) { vars.MoreChocolates = true; return true; }
    break;
        case "s1300":
    if (!vars.Enrico) { vars.Enrico = true; return true; }
    break;
        case "s4460":
    if (!vars.ScopaExplanationStart) { vars.ScopaExplanationStart = true; return true; }
    break;
        case "s1317":
    if (!vars.ScopaStart) { vars.ScopaStart = true; return true; }
    break;
        case "s1314":
    if (!vars.ScopaDone) { vars.ScopaDone = true; return true; }
    break;
        case "s2930":
    if (!vars.FangosComputer) { vars.FangosComputer = true; return true; }
    break;
        case "s3545":
    if (!vars.AttackedbyPhantom) { vars.AttackedbyPhantom = true; return true; }
    break;
        case "s2037":
    if (!vars.MargheritainArgonOffice) { vars.MargheritainArgonOffice = true; return true; }
    break;
        case "s5819":
    if (!vars.RialtoMarketBottle) { vars.RialtoMarketBottle = true; return true; }
    break;
        case "s3252":
    if (!vars.Tesserae1Start) { vars.Tesserae1Start = true; return true; }
    break;
        case "s3253":
    if (!vars.Tesserae2Start) { vars.Tesserae2Start = true; return true; }
    break;
        case "s3254":
    if (!vars.Tesserae3Start) { vars.Tesserae3Start = true; return true; }
    break;
        case "s3255":
    if (!vars.Tesserae4Start) { vars.Tesserae4Start = true; return true; }
    break;
        case "s3251":
    if (!vars.TesseraeDone) { vars.TesseraeDone = true; return true; }
    break;
        case "s2602":
    if (!vars.DancingStart) { vars.DancingStart = true; return true; }
    break;
        case "s2750":
    if (!vars.DancingWon) { vars.DancingWon = true; return true; }
    break;
        case "s5005":
    if (!vars.FallingUrn) { vars.FallingUrn = true; return true; }
    break;
        case "s3800":
    if (!vars.AtZattere) { vars.AtZattere = true; return true; }
    break;
        case "s3805":
    if (!vars.ZattereUnlocked) { vars.ZattereUnlocked = true; return true; }
    break;
        case "s3872":
    if (!vars.ZattereTopMiddleRoom) { vars.ZattereTopMiddleRoom = true; return true; }
    break;
        case "s3873":
    if (!vars.ZattereTopRightRoom) { vars.ZattereTopRightRoom = true; return true; }
    break;
        case "s3891":
    if (!vars.Levers1) { vars.Levers1 = true; return true; }
    break;
        case "s3876":
    if (!vars.ZattereMiddleRightRoom) { vars.ZattereMiddleRightRoom = true; return true; }
    break;
        case "s3879":
    if (!vars.ZattereBottomRightRoom) { vars.ZattereBottomRightRoom = true; return true; }
    break;
        case "s3893":
    if (!vars.Levers2) { vars.Levers2 = true; return true; }
    break;
        case "s3878":
    if (!vars.ZattereMiddleBottomRoom) { vars.ZattereMiddleBottomRoom = true; return true; }
    break;
        case "s3877":
    if (!vars.ZattereBottomLeftRoom) { vars.ZattereBottomLeftRoom = true; return true; }
    break;
        case "s3892":
    if (!vars.Levers3) { vars.Levers3 = true; return true; }
    break;
        case "s3874":
    if (!vars.ZattereMiddleLeftRoom) { vars.ZattereMiddleLeftRoom = true; return true; }
    break;
        case "s3871":
    if (!vars.ZattereTopLeftRoom) { vars.ZattereTopLeftRoom = true; return true; }
    break;
        case "s3890":
    if (!vars.Levers4) { vars.Levers4 = true; return true; }
    break;
        case "s3851":
    if (!vars.GotSapphire) { vars.GotSapphire = true; return true; }
    break;
        case "s4126":
    if (!vars.ATMBugs) { vars.ATMBugs = true; return true; }
    break;
        case "s1332":
    if (!vars.DeliveredSapphire) { vars.DeliveredSapphire = true; return true; }
    break;
        case "s3272":
    if (!vars.PuzzleBoxOpened) { vars.PuzzleBoxOpened = true; return true; }
    break;
        case "s3235":
    if (!vars.PenBugPlanting) { vars.PenBugPlanting = true; return true; }
    break;
        case "s1045":
    if (!vars.SeeBackofFlyer) { vars.SeeBackofFlyer = true; return true; }
    break;
        case "s2911":
    if (!vars.SeeScopaCards) { vars.SeeScopaCards = true; return true; }
    break;
        case "s3000":
    if (!vars.numberss) { vars.numberss = true; return true; }
    break;
        case "s3573":
    if (!vars.LastPageofItalianGuide) { vars.LastPageofItalianGuide = true; return true; }
    break;
        case "s5617":
    if (!vars.Stakeout) { vars.Stakeout = true; return true; }
    break;
        case "5621":
    if (!vars.StakeoutDone) { vars.StakeoutDone = true; return true; }
    break;
        case "s4422":
    if (!vars.PropanoKey) { vars.PropanoKey = true; return true; }
    break;
        case "s6730":
    if (!vars.DrainsStart) { vars.DrainsStart = true; return true; }
    break;
        case "s6616":
    if (!vars.DrainsDone) { vars.DrainsDone = true; return true; }
    break;
        case "s6709":
    if (!vars.LockedinSafeRoom) { vars.LockedinSafeRoom = true; return true; }
    break;
        case "s6719":
    if (!vars.EscapedfromTunnels) { vars.EscapedfromTunnels = true; return true; }
    break;
        case "s5490":
    if (!vars.CapturedHelena) { vars.CapturedHelena = true; return true; }
    break;
    
	// Death%
		case "s1202":
    if (!vars.DColin) { vars.DColin = true; return true; }
    break;
        case "s2322":
    if (!vars.DHelena) { vars.DHelena = true; return true; }
    break;
        case "s5812":
    if (!vars.DTranslateSign) { vars.DTranslateSign = true; return true; }
    break;
        case "s1010":
    if (!vars.DMargherita) { vars.DMargherita = true; return true; }
    break;
        case "s2048":
    if (!vars.DBEES) { vars.DBEES = true; return true; }
    break;
    }
}

reset {
	if (!vars.reset && current.scene == "s6455") {
		return true; 
	}
}
