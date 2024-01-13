// Nancy Drew: Legend of the Crystal Skull Autosplitter
// Written by Toasterberry, scene values & splits by Yandema
// https://linktr.ee/toasterberry

state("Game")
{
	string5 scene : "Game.exe", 0x10A5E8, 0x4, 0x4, 0x8, 0x10, 0xC, 0x0;
}

startup
{
	settings.Add("marbSt",false,"Marbles Start");
	settings.Add("marbEn",false,"Marbles Complete");
	settings.Add("Bess1",false,"Bess 1");
	settings.Add("Lamont",false,"Lamont");
	settings.Add("SneezeTrapSt",false,"Sneeze Trap Start");
	settings.Add("SneezeTrapEn",false,"Sneeze Trap Done");
	settings.Add("SkullBoxOpened",false,"Skull Box Opened");
	settings.Add("Renee",false,"Renee");
	settings.Add("HoodooBook",false,"Hoodoo Book");
	settings.Add("BookPuzzleSt",false,"Book Puzzle Start");
	settings.Add("BookPuzzleEn",false,"Book Puzzle Done");
	settings.Add("diorEye",false,"Diorama Eye");
    settings.Add("cryptKey",false,"Crypt Key");
    settings.Add("painting",false,"Painting");
    settings.Add("portDone",false,"Portraits Done");
    settings.Add("bookEye",false,"Eye in Book");
    settings.Add("studyOpen",false,"Study Open");
    settings.Add("skeeDone",false,"Skee Ball Done");
    settings.Add("dummyEye",false,"Dummy Eye");
    settings.Add("spiderJump",false,"Spider Jumpscare");
	settings.Add("lastClockEye", false, "Last Clock Eye");
    settings.Add("trophyEye", false, "Trophy Eye");
    settings.Add("librarianEye", false, "Librarian's Eye");
    settings.Add("henrysKeychainEye", false, "Henry's Keychain Eye");
    settings.Add("mushroomBag", false, "Mushroom Bag");
    settings.Add("spiderEye", false, "Spider Eye");
    settings.Add("allStatueEyes", false, "All Statue Eyes");
    settings.Add("lightningRod", false, "Lightning Rod");
    settings.Add("tammy", false, "Tammy");
	settings.Add("Bernie", false, "Bernie");
	settings.Add("Constance", false, "Constance");
	settings.Add("Justin", false, "Justin");
	settings.Add("Manny", false, "Manny");
	settings.Add("Owen", false, "Owen");
	settings.Add("Neil", false, "Neil");
	settings.Add("Myra", false, "Myra");
	settings.Add("Rose", false, "Rose");
	settings.Add("Polly", false, "Polly");
	settings.Add("Gumbo",false,"Gumbo");
	settings.Add("SeeDogPhoto",false,"See Dog Photo");
	settings.Add("GotShovel",false,"Got Shovel");
	settings.Add("StepsPuzzleStart",false,"Steps Puzzle Start");
	settings.Add("StepsPuzzleDone",false,"Steps Puzzle Done");
	settings.Add("Gilbert",false,"Gilbert");
	settings.Add("IggyPirate",false,"Iggy Pirate");
	settings.Add("JollyRogerMeeting",false,"Jolly Roger Meeting");
	settings.Add("JeanLafitte",false,"Jean Lafitte");
	settings.Add("bigEye", false, "The Big Eye");
	settings.Add("bestCut", false, "Best Cutscene");
	settings.Add("gotCSkull", false, "Got Crystal Skull");
	settings.Add("matchDone", false, "Matching Puzzle Done");
	settings.Add("seeRenee", false, "See Renee at Bayou");
}

start
{
	if (current.scene == "s3600")
	{
		vars.marbSt = !settings["marbSt"];
		vars.marbEn = !settings["marbEn"];
		vars.Bess1 = !settings["Bess1"];
		vars.Lamont = !settings["Lamont"];
		vars.SneezeTrapSt = !settings["SneezeTrapSt"];
		vars.SneezeTrapEn = !settings["SneezeTrapEn"];
		vars.SkullBoxOpened = !settings["SkullBoxOpened"];
		vars.Renee = !settings["Renee"];
		vars.HoodooBook = !settings["HoodooBook"];
		vars.BookPuzzleSt = !settings["BookPuzzleSt"];
		vars.BookPuzzleEn = !settings["BookPuzzleEn"];
		vars.diorEye = !settings["diorEye"];
        vars.cryptKey = !settings["cryptKey"];
        vars.painting = !settings["painting"];
        vars.portDone = !settings["portDone"];
        vars.bookEye = !settings["bookEye"];
        vars.studyOpen = !settings["studyOpen"];
        vars.skeeDone = !settings["skeeDone"];
        vars.dummyEye = !settings["dummyEye"];
        vars.spiderJump = !settings["spiderJump"];
		vars.lastClockEye = !settings["lastClockEye"];
        vars.trophyEye = !settings["trophyEye"];
        vars.librarianEye = !settings["librarianEye"];
        vars.henrysKeychainEye = !settings["henrysKeychainEye"];
        vars.mushroomBag = !settings["mushroomBag"];
        vars.spiderEye = !settings["spiderEye"];
        vars.allStatueEyes = !settings["allStatueEyes"];
        vars.lightningRod = !settings["lightningRod"];
        vars.tammy = !settings["tammy"];
		vars.Bernie = !settings["Bernie"];
		vars.Constance = !settings["Constance"];
		vars.Justin = !settings["Justin"];
		vars.Manny = !settings["Manny"];
		vars.Owen = !settings["Owen"];
		vars.Neil = !settings["Neil"];
		vars.Myra = !settings["Myra"];
		vars.Rose = !settings["Rose"];
		vars.Polly = !settings["Polly"];
		vars.Gumbo = !settings["Gumbo"];
		vars.SeeDogPhoto = !settings["SeeDogPhoto"];
		vars.GotShovel = !settings["GotShovel"];
		vars.StepsPuzzleStart = !settings["StepsPuzzleStart"];
		vars.StepsPuzzleDone = !settings["StepsPuzzleDone"];
		vars.Gilbert = !settings["Gilbert"];
		vars.IggyPirate = !settings["IggyPirate"];
		vars.JollyRogerMeeting = !settings["JollyRogerMeeting"];
		vars.JeanLafitte = !settings["JeanLafitte"];
		vars.bigEye = !settings["bigEye"];
		vars.bestCut = !settings["bestCut"];
		vars.gotCSkull = !settings["gotCSkull"];
		vars.matchDone = !settings["matchDone"];
		vars.seeRenee = !settings["seeRenee"];
		return true;
	}
}

split
{
	string s = current.scene;
	switch (s) {
		case "s6539":
			return true;
			break;
		case "s3560":
			if (!vars.marbSt) { vars.marbSt = true; return true; }
			break;
		case "s3561":
			if (!vars.marbEn) { vars.marbEn = true; return true; }
			break;
		case "s1880":
			if (!vars.Bess1) { vars.Bess1 = true; return true; }
			break;
		case "s1100":
			if (!vars.Lamont) { vars.Lamont = true; return true; }
			break;
		case "s2051":
			if (!vars.SneezeTrapSt) { vars.SneezeTrapSt = true; return true; }
			break;
		case "s2082":
			if (!vars.SneezeTrapEn) { vars.SneezeTrapEn = true; return true; }
			break;
		case "s2072":
			if (!vars.SkullBoxOpened) { vars.SkullBoxOpened = true; return true; }
			break;
		case "s1200":
			if (!vars.Renee) { vars.Renee = true; return true; }
			break;
		case "s4127":
			if (!vars.HoodooBook) { vars.HoodooBook = true; return true; }
			break;
		case "s2680":
			if (!vars.BookPuzzleSt) { vars.BookPuzzleSt = true; return true; }
			break;
		case "s2637":
			if (!vars.BookPuzzleEn) { vars.BookPuzzleEn = true; return true; }
			break;
		case "s3598":
            if (!vars.diorEye) { vars.diorEye = true; return true; }
            break;
        case "s3623":
            if (!vars.cryptKey) { vars.cryptKey = true; return true; }
            break;
        case "s2355":
            if (!vars.painting) { vars.painting = true; return true; }
            break;
        case "s3507":
            if (!vars.portDone) { vars.portDone = true; return true; }
            break;
        case "s2620":
            if (!vars.bookEye) { vars.bookEye = true; return true; }
            break;
        case "s3531":
            if (!vars.studyOpen) { vars.studyOpen = true; return true; }
            break;
        case "s4502":
            if (!vars.skeeDone) { vars.skeeDone = true; return true; }
            break;
        case "s4567":
            if (!vars.dummyEye) { vars.dummyEye = true; return true; }
            break;
        case "s4482":
            if (!vars.spiderJump) { vars.spiderJump = true; return true; }
            break;
		case "s3863":
            if (!vars.lastClockEye) { vars.lastClockEye = true; return true; }
            break;
        case "s2624":
            if (!vars.trophyEye) { vars.trophyEye = true; return true; }
            break;
        case "s2663":
            if (!vars.librarianEye) { vars.librarianEye = true; return true; }
            break;
        case "s1081":
            if (!vars.henrysKeychainEye) { vars.henrysKeychainEye = true; return true; }
            break;
        case "s1205":
            if (!vars.mushroomBag) { vars.mushroomBag = true; return true; }
            break;
        case "s3337":
            if (!vars.spiderEye) { vars.spiderEye = true; return true; }
            break;
        case "s3227":
            if (!vars.allStatueEyes) { vars.allStatueEyes = true; return true; }
            break;
        case "s2351":
            if (!vars.lightningRod) { vars.lightningRod = true; return true; }
            break;
        case "s2380":
            if (!vars.tammy) { vars.tammy = true; return true; }
            break;
		case "s2338":
			if (!vars.Bernie) { vars.Bernie = true; return true; }
			break;
		case "s2381":
			if (!vars.Constance) { vars.Constance = true; return true; }
			break;
		case "s2382":
			if (!vars.Justin) { vars.Justin = true; return true; }
			break;
		case "s2383":
			if (!vars.Manny) { vars.Manny = true; return true; }
			break;
		case "s2384":
			if (!vars.Owen) { vars.Owen = true; return true; }
			break;
		case "s2385":
			if (!vars.Neil) { vars.Neil = true; return true; }
			break;
		case "s2386":
			if (!vars.Myra) { vars.Myra = true; return true; }
			break;
		case "s2387":
			if (!vars.Rose) { vars.Rose = true; return true; }
			break;
		case "s2388":
			if (!vars.Polly) { vars.Polly = true; return true; }
			break;
		case "s3007":
			if (!vars.Gumbo) { vars.Gumbo = true; return true; }
			break;
		case "s2066":
			if (!vars.SeeDogPhoto) { vars.SeeDogPhoto = true; return true; }
			break;
		case "s3302":
			if (!vars.GotShovel) { vars.GotShovel = true; return true; }
			break;
		case "s2349":
			if (!vars.StepsPuzzleStart) { vars.StepsPuzzleStart = true; return true; }
			break;
		case "s2371":
			if (!vars.StepsPuzzleDone) { vars.StepsPuzzleDone = true; return true; }
			break;
		case "s1300":
			if (!vars.Gilbert) { vars.Gilbert = true; return true; }
			break;
		case "s4541":
			if (!vars.IggyPirate) { vars.IggyPirate = true; return true; }
			break;
		case "s1791":
			if (!vars.JollyRogerMeeting) { vars.JollyRogerMeeting = true; return true; }
			break;
		case "s4548":
			if (!vars.JeanLafitte) { vars.JeanLafitte = true; return true; }
			break;
		case "s4527":
			if (!vars.bigEye) { vars.bigEye = true; return true; }
			break;
		case "s3344":
			if (!vars.bestCut) { vars.bestCut = true; return true; }
			break;
		case "s3352":
			if (!vars.gotCSkull) { vars.gotCSkull = true; return true; }
			break;
		case "s3371":
			if (!vars.matchDone) { vars.matchDone = true; return true; }
			break;
		case "s2337":
			if (!vars.seeRenee) { vars.seeRenee = true; return true; }
			break;
	}
}

/*reset
{
	if (current.scene == "s6401" && old.scene != "s6539")
	{
		return true;
	}
}*/