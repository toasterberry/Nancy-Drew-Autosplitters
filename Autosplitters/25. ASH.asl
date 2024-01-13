// Nancy Drew: Alibi in Ashes
// Written by Toasterberry, splits by Yandema
// https://linktr.ee/toasterberry

state("Alibi")
{
	string20 scene : "Ndui.dll", 0x8B41C, 0xC, 0xE0, 0xF0, 0x0, 0x64, 0x8, 0x0;
}

startup
{
	// Settings
	settings.Add("autorst",false,"Auto reset at difficulty select");
	
	// Universal Splits
	settings.Add("unisplt", true, "Universal Splits");
	settings.Add("stackStart",false,"Stack Start", "unisplt");
	settings.Add("stackDone",false,"Stack Done", "unisplt");
	settings.Add("escapedTownHall", false, "Escaped Town Hall", "unisplt");
	settings.Add("controlBess", false, "Control Bess", "unisplt");
	settings.Add("dropOffNote", false, "Drop off Note", "unisplt");
	settings.Add("jailCellOpened", false, "Jail Cell Opened", "unisplt");
	settings.Add("chromatographMachine", false, "Chromatograph Machine", "unisplt");
	settings.Add("overhearChief", false, "Overhear Chief", "unisplt");
	settings.Add("controlNed", false, "Control Ned", "unisplt");
	settings.Add("pancakeCity", false, "Pancake City", "unisplt");
	settings.Add("mabelRoses", false, "Mabel Rose’s", "unisplt");
	settings.Add("meetAlexei", false, "Meet Alexei", "unisplt");
	settings.Add("gotLockerKey", false, "Got Locker Key", "unisplt");
	settings.Add("numberPunchStart", false, "Number Punch Start", "unisplt");
	settings.Add("numberPunchWin", false, "Number Punch Win", "unisplt");
	settings.Add("nancyGotLockerKey", false, "Nancy Got Locker Key", "unisplt");
	settings.Add("computerPasswordNote", false, "Computer Password Note", "unisplt");
	settings.Add("openedColorLightsDrawer", false, "Opened Color Lights Drawer", "unisplt");
	settings.Add("phone", false, "Phone", "unisplt");
	settings.Add("arsonBook", false, "Arson Book", "unisplt");
	settings.Add("insideTownHall", false, "Inside Town Hall", "unisplt");
	settings.Add("seeFireAlarm", false, "See Fire Alarm", "unisplt");
	settings.Add("gotSample", false, "Got Sample", "unisplt");
	settings.Add("meetDeirdre", false, "Meet Deirdre", "unisplt");
	settings.Add("analyzeChromatograph", false, "Analyze Chromatograph", "unisplt");
	settings.Add("evidenceBoard", false, "Evidence Board", "unisplt");
	settings.Add("computerUnlocked", false, "Computer Unlocked", "unisplt");
	settings.Add("dierdre217", false, "Dierdre 2:17", "unisplt");
	settings.Add("atDrewHome", false, "At Drew Home", "unisplt");
	settings.Add("inNancysRoom", false, "In Nancy’s Room", "unisplt");
	settings.Add("dustDierdresNote", false, "Dust Dierdre’s Note", "unisplt");
	settings.Add("upstairsNewspaper", false, "Upstairs Newspaper", "unisplt");
	settings.Add("nancyGotDierdresNote", false, "Nancy Got Dierdre’s Note", "unisplt");
	settings.Add("scanFingerprint", false, "Scan Fingerprint", "unisplt");
	settings.Add("newspaperOutsideAntiques", false, "Newspaper Outside Antiques", "unisplt");
	settings.Add("meetBrenda", false, "Meet Brenda", "unisplt");
	settings.Add("alexeiFingerprint", false, "Alexei Fingerprint", "unisplt");
	settings.Add("alarmKey", false, "Alarm Key", "unisplt");
	settings.Add("ether", false, "Ether", "unisplt");
	settings.Add("dierdreFingerprint", false, "Dierdre Fingerprint", "unisplt");
	settings.Add("toniFingerprint", false, "Toni Fingerprint", "unisplt");
	settings.Add("toulene", false, "Toulene", "unisplt");
	settings.Add("fileCabinetUnlocked", false, "File Cabinet Unlocked", "unisplt");
	settings.Add("nancyGot3Fingerprints", false, "Nancy Got 3 Fingerprints", "unisplt");
	settings.Add("brendasCard", false, "Brenda’s Card", "unisplt");
	settings.Add("dierdreDistracted", false, "Dierdre Distracted", "unisplt");
	settings.Add("brendaFingerprint", false, "Brenda Fingerprint", "unisplt");
	settings.Add("acetone", false, "Acetone", "unisplt");
	settings.Add("scoopClosedNewspaper", false, "Scoop Closed Newspaper", "unisplt");
	settings.Add("dierdresTicket", false, "Dierdre’s Ticket", "unisplt");
	settings.Add("toni217", false, "Toni 2:17", "unisplt");
	settings.Add("accelerants", false, "Accelerants", "unisplt");
	settings.Add("ticketShark", false, "TicketShark", "unisplt");
	settings.Add("outOfJail", false, "Out of Jail", "unisplt");
	settings.Add("brendasSchedule", false, "Brenda’s Schedule", "unisplt");
	settings.Add("bessAudioPuzzle", false, "Bess Audio Puzzle", "unisplt");
	settings.Add("dierdreAsNancy", false, "Dierdre as Nancy", "unisplt");
	settings.Add("alexeiAsNancy", false, "Alexei as Nancy", "unisplt");
	settings.Add("brendaAsNancy", false, "Brenda as Nancy", "unisplt");
	settings.Add("george", false, "George", "unisplt");
	settings.Add("battery", false, "Battery", "unisplt");
	settings.Add("jammerStart", false, "Jammer Start", "unisplt");
	settings.Add("jammerDone", false, "Jammer Done", "unisplt");
	settings.Add("wiresStart", false, "Wires Start", "unisplt");
	settings.Add("wiresDone", false, "Wires Done", "unisplt");
	settings.Add("unlockedBunker", false, "Unlocked Bunker", "unisplt");
	settings.Add("confrontBrenda", false, "Confront Brenda", "unisplt");
	settings.Add("tunnelsStart", false, "Tunnels Start", "unisplt");
	settings.Add("tunnelsDone", false, "Tunnels Done", "unisplt");
	
	// Death% 
	settings.Add("deathp", false, "Death%");
	settings.Add("dstackStart",false,"Stack Start", "deathp");
	settings.Add("dstackDone",false,"Stack Done", "deathp");
}

start
{

	if (current.scene == "Cinematic_Opening_SC")
	{
		vars.reset = !settings["autorst"];
		
		// Universal Splits
		vars.stackStart = !settings["stackStart"];
		vars.stackDone = !settings["stackDone"];
		vars.escapedTownHall = !settings["escapedTownHall"];
		vars.controlBess = !settings["controlBess"];
		vars.dropOffNote = !settings["dropOffNote"];
		vars.jailCellOpened = !settings["jailCellOpened"];
		vars.chromatographMachine = !settings["chromatographMachine"];
		vars.overhearChief = !settings["overhearChief"];
		vars.controlNed = !settings["controlNed"];
		vars.pancakeCity = !settings["pancakeCity"];
		vars.mabelRoses = !settings["mabelRoses"];
		vars.meetAlexei = !settings["meetAlexei"];
		vars.gotLockerKey = !settings["gotLockerKey"];
		vars.numberPunchStart = !settings["numberPunchStart"];
		vars.numberPunchWin = !settings["numberPunchWin"];
		vars.nancyGotLockerKey = !settings["nancyGotLockerKey"];
		vars.computerPasswordNote = !settings["computerPasswordNote"];
		vars.openedColorLightsDrawer = !settings["openedColorLightsDrawer"];
		vars.phone = !settings["phone"];
		vars.arsonBook = !settings["arsonBook"];
		vars.insideTownHall = !settings["insideTownHall"];
		vars.seeFireAlarm = !settings["seeFireAlarm"];
		vars.gotSample = !settings["gotSample"];
		vars.meetDeirdre = !settings["meetDeirdre"];
		vars.analyzeChromatograph = !settings["analyzeChromatograph"];
		vars.evidenceBoard = !settings["evidenceBoard"];
		vars.computerUnlocked = !settings["computerUnlocked"];
		vars.dierdre217 = !settings["dierdre217"];
		vars.atDrewHome = !settings["atDrewHome"];
		vars.inNancysRoom = !settings["inNancysRoom"];
		vars.dustDierdresNote = !settings["dustDierdresNote"];
		vars.upstairsNewspaper = !settings["upstairsNewspaper"];
		vars.nancyGotDierdresNote = !settings["nancyGotDierdresNote"];
		vars.scanFingerprint = !settings["scanFingerprint"];
		vars.newspaperOutsideAntiques = !settings["newspaperOutsideAntiques"];
		vars.meetBrenda = !settings["meetBrenda"];
		vars.alexeiFingerprint = !settings["alexeiFingerprint"];
		vars.alarmKey = !settings["alarmKey"];
		vars.ether = !settings["ether"];
		vars.dierdreFingerprint = !settings["dierdreFingerprint"];
		vars.toniFingerprint = !settings["toniFingerprint"];
		vars.toulene = !settings["toulene"];
		vars.fileCabinetUnlocked = !settings["fileCabinetUnlocked"];
		vars.nancyGot3Fingerprints = !settings["nancyGot3Fingerprints"];
		vars.brendasCard = !settings["brendasCard"];
		vars.dierdreDistracted = !settings["dierdreDistracted"];
		vars.brendaFingerprint = !settings["brendaFingerprint"];
		vars.acetone = !settings["acetone"];
		vars.scoopClosedNewspaper = !settings["scoopClosedNewspaper"];
		vars.dierdresTicket = !settings["dierdresTicket"];
		vars.toni217 = !settings["toni217"];
		vars.accelerants = !settings["accelerants"];
		vars.ticketShark = !settings["ticketShark"];
		vars.outOfJail = !settings["outOfJail"];
		vars.brendasSchedule = !settings["brendasSchedule"];
		vars.bessAudioPuzzle = !settings["bessAudioPuzzle"];
		vars.dierdreAsNancy = !settings["dierdreAsNancy"];
		vars.alexeiAsNancy = !settings["alexeiAsNancy"];
		vars.brendaAsNancy = !settings["brendaAsNancy"];
		vars.george = !settings["george"];
		vars.battery = !settings["battery"];
		vars.jammerStart = !settings["jammerStart"];
		vars.jammerDone = !settings["jammerDone"];
		vars.wiresStart = !settings["wiresStart"];
		vars.wiresDone = !settings["wiresDone"];
		vars.unlockedBunker = !settings["unlockedBunker"];
		vars.confrontBrenda = !settings["confrontBrenda"];
		vars.tunnelsStart = !settings["tunnelsStart"];
		vars.tunnelsDone = !settings["tunnelsDone"];
		
		//Death%
		vars.deathp = !settings["deathp"];
		vars.dstackStart = !settings["dstackStart"];
		vars.dstackDone = !settings["dstackDone"];
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
		
		// Splits
		case "Stacking_SC":
			if (!vars.stackStart) { vars.stackStart = true; return true; }
			else if (!vars.dstackStart) { vars.dstackStart = true; return true; }
			break;
		case "StackingWin_SC":
			if (!vars.stackDone) { vars.stackDone = true; return true; }
			else if (!vars.dstackDone) { vars.dstackDone = true; return true; }
			break;
		case "s2695":
			if (!vars.escapedTownHall) { vars.escapedTownHall = true; return true; }
			break;
		case "s2900":
			if (!vars.controlBess) { vars.controlBess = true; return true; }
			break;
		case "s3529":
			if (!vars.dropOffNote) { vars.dropOffNote = true; return true; }
			break;
		case "s3521":
			if (!vars.jailCellOpened) { vars.jailCellOpened = true; return true; }
			break;
		case "s3524":
			if (!vars.chromatographMachine) { vars.chromatographMachine = true; return true; }
			break;
		case "s3507":
			if (!vars.overhearChief) { vars.overhearChief = true; return true; }
			break;
		case "s3200":
			if (!vars.controlNed) { vars.controlNed = true; return true; }
			break;
		case "MAP_to_Pancake_SC":
			if (!vars.pancakeCity) { vars.pancakeCity = true; return true; }
			break;
		case "MAP_to_Mabel_SC":
			if (!vars.mabelRoses) { vars.mabelRoses = true; return true; }
			break;
		case "s1200":
			if (!vars.meetAlexei) { vars.meetAlexei = true; return true; }
			break;
		case "PinsWin_SC":
			if (!vars.gotLockerKey) { vars.gotLockerKey = true; return true; }
			break;
		case "Numbers_SC":
			if (!vars.numberPunchStart) { vars.numberPunchStart = true; return true; }
			break;
		case "s3283":
			if (!vars.numberPunchWin) { vars.numberPunchWin = true; return true; }
			break;
		case "s3614":
			if (!vars.nancyGotLockerKey) { vars.nancyGotLockerKey = true; return true; }
			break;
		case "s3555":
			if (!vars.computerPasswordNote) { vars.computerPasswordNote = true; return true; }
			break;
		case "s3534":
			if (!vars.openedColorLightsDrawer) { vars.openedColorLightsDrawer = true; return true; }
			break;
		case "s3554":
			if (!vars.phone) { vars.phone = true; return true; }
			break;
		case "s3523":
			if (!vars.arsonBook) { vars.arsonBook = true; return true; }
			break;
		case "s2605":
			if (!vars.insideTownHall) { vars.insideTownHall = true; return true; }
			break;
		case "s2615":
			if (!vars.seeFireAlarm) { vars.seeFireAlarm = true; return true; }
			break;
		case "s2622":
			if (!vars.gotSample) { vars.gotSample = true; return true; }
			break;
		case "s1000":
			if (!vars.meetDeirdre) { vars.meetDeirdre = true; return true; }
			break;
		case "s3524a_SC":
			if (!vars.analyzeChromatograph) { vars.analyzeChromatograph = true; return true; }
			break;
		case "PoliceBoard_SC":
			if (!vars.evidenceBoard) { vars.evidenceBoard = true; return true; }
			break;
		case "s3551":
			if (!vars.computerUnlocked) { vars.computerUnlocked = true; return true; }
			break;
		case "s1024":
			if (!vars.dierdre217) { vars.dierdre217 = true; return true; }
			break;
		case "s2300":
			if (!vars.atDrewHome) { vars.atDrewHome = true; return true; }
			break;
		case "s2000":
			if (!vars.inNancysRoom) { vars.inNancysRoom = true; return true; }
			break;
		case "BED_Dusting_SC":
			if (!vars.dustDierdresNote) { vars.dustDierdresNote = true; return true; }
			break;
		case "s2503":
			if (!vars.upstairsNewspaper) { vars.upstairsNewspaper = true; return true; }
			break;
		case "s3610":
			if (!vars.nancyGotDierdresNote) { vars.nancyGotDierdresNote = true; return true; }
			break;
		case "Fingerprints_SC":
			if (!vars.scanFingerprint) { vars.scanFingerprint = true; return true; }
			break;
		case "s3224":
			if (!vars.newspaperOutsideAntiques) { vars.newspaperOutsideAntiques = true; return true; }
			break;
		case "s1600":
			if (!vars.meetBrenda) { vars.meetBrenda = true; return true; }
			break;
		case "s3226":
			if (!vars.alexeiFingerprint) { vars.alexeiFingerprint = true; return true; }
			break;
		case "s3230":
			if (!vars.alarmKey) { vars.alarmKey = true; return true; }
			break;
		case "s3220":
			if (!vars.ether) { vars.ether = true; return true; }
			break;
		case "s3140":
			if (!vars.dierdreFingerprint) { vars.dierdreFingerprint = true; return true; }
			break;
		case "s3130":
			if (!vars.toniFingerprint) { vars.toniFingerprint = true; return true; }
			break;
		case "s3050":
			if (!vars.toulene) { vars.toulene = true; return true; }
			break;
		case "s3041":
			if (!vars.fileCabinetUnlocked) { vars.fileCabinetUnlocked = true; return true; }
			break;
		case "s3607":
			if (!vars.nancyGot3Fingerprints) { vars.nancyGot3Fingerprints = true; return true; }
			break;
		case "s1619":
			if (!vars.brendasCard) { vars.brendasCard = true; return true; }
			break;
		case "s1064":
			if (!vars.dierdreDistracted) { vars.dierdreDistracted = true; return true; }
			break;
		case "s4156GGGG":
			if (!vars.brendaFingerprint) { vars.brendaFingerprint = true; return true; }
			break;
		case "s4156GGGG":
			if (!vars.acetone) { vars.acetone = true; return true; }
			break;
		case "s2504":
			if (!vars.scoopClosedNewspaper) { vars.scoopClosedNewspaper = true; return true; }
			break;
		case "s3002":
			if (!vars.dierdresTicket) { vars.dierdresTicket = true; return true; }
			break;
		case "s1406":
			if (!vars.toni217) { vars.toni217 = true; return true; }
			break;
		case "s3613a_SC":
			if (!vars.accelerants) { vars.accelerants = true; return true; }
			break;
		case "Tickets_SC":
			if (!vars.ticketShark) { vars.ticketShark = true; return true; }
			break;
		case "s3531":
			if (!vars.outOfJail) { vars.outOfJail = true; return true; }
			break;
		case "s4161":
			if (!vars.brendasSchedule) { vars.brendasSchedule = true; return true; }
			break;
		case "Equalizer_SC":
			if (!vars.bessAudioPuzzle) { vars.bessAudioPuzzle = true; return true; }
			break;
		case "s1101":
			if (!vars.dierdreAsNancy) { vars.dierdreAsNancy = true; return true; }
			break;
		case "s1301":
			if (!vars.alexeiAsNancy) { vars.alexeiAsNancy = true; return true; }
			break;
		case "s1702":
			if (!vars.brendaAsNancy) { vars.brendaAsNancy = true; return true; }
			break;
		case "s5000":
			if (!vars.george) { vars.george = true; return true; }
			break;
		case "s2012":
			if (!vars.battery) { vars.battery = true; return true; }
			break;
		case "Jammer_SC":
			if (!vars.jammerStart) { vars.jammerStart = true; return true; }
			break;
		case "s5015":
			if (!vars.jammerDone) { vars.jammerDone = true; return true; }
			break;
		case "Wire_SC":
			if (!vars.wiresStart) { vars.wiresStart = true; return true; }
			break;
		case "s4153":
			if (!vars.wiresDone) { vars.wiresDone = true; return true; }
			break;
		case "s3843":
			if (!vars.unlockedBunker) { vars.unlockedBunker = true; return true; }
			break;
		case "s4095":
			if (!vars.confrontBrenda) { vars.confrontBrenda = true; return true; }
			break;
		case "MazePuz_SC":
			if (!vars.tunnelsStart) { vars.tunnelsStart = true; return true; }
			break;
		case "s4090":
			if (!vars.tunnelsDone) { vars.tunnelsDone = true; return true; }
			break;
	}
		
}

reset {
	if (!vars.reset && current.scene == "Badges_SC") {
		return true; 
	}
}