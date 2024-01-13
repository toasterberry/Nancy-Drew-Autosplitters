// Nancy Drew: Shadow at the Water's Edge Autosplitter
// Written by Toasterberry, scene values & splits by Yandema
// https://linktr.ee/toasterberry

state("Shadow")
{
	string5 scene : "Ndui.dll", 0x8E75C, 0x48, 0x104, 0x4, 0xE0, 0xE8, 0x0;
}

startup
{
	
	settings.Add("rentBath",false,"See Rentaro at Baths");
	settings.Add("portStart",false,"Portrait Start");
	settings.Add("portDone",false,"Portrait Done");
	settings.Add("takae",false,"Takae");
	settings.Add("kanaFin",false,"Finished Katakana");
	settings.Add("sawSuki",false,"Saw Suki");
	settings.Add("onMetro",false,"On Metro");
	settings.Add("meetYumi",false,"Meet Yumi");
	settings.Add("b1Done",false,"Bento 1 Done");
	settings.Add("inYumiApt",false,"In Yumi's apartment");
	settings.Add("b2Done",false,"Bento 2 Done");
	settings.Add("oriDone",false,"Origami Done");
	settings.Add("bathEnter",false,"Enter Baths");
	settings.Add("deliv1",false,"Delivery 1");
	settings.Add("kureEnter",false,"Enter Kure");
	settings.Add("slmScr",false,"Doors Slam Scare");
	settings.Add("tanaStart",false,"Tanagrams");
	settings.Add("tanaDone",false,"Tanagrams Done");
	settings.Add("teaStart",false,"Tea Start");
	settings.Add("teaDone",false,"Tea Done");
	settings.Add("rentGone",false,"Rentaro Gone");
	settings.Add("r18Key",false,"Room 18 Key");
	settings.Add("rCard",false,"Red Card");
	settings.Add("sTeapot",false,"Steam Teapot");
	settings.Add("sKey",false,"Skeleton Key");
	settings.Add("colorStart",false,"Colors Start");
	settings.Add("sBath",false,"Secret Baths Unlocked");
	settings.Add("picDone",false,"Pictures Done");
	settings.Add("b3Done",false,"Bento 3 Done");
	settings.Add("yumiWin",false,"Yumi Window Haunting");
	settings.Add("bigScr",false,"Big Jumpscare");
	settings.Add("takaeWillConv",false,"Will Convo with Takae");
	settings.Add("rentCnfrnt",false,"Confront Rentaro");
	settings.Add("theEnd",false,"The End");
	
}

start
{
	if (current.scene == "s1700")
	{
		vars.rentBath = !settings["rentBath"];
		vars.portStart = !settings["portStart"];
		vars.portDone = !settings["portDone"];
		vars.takae = !settings["takae"];
		vars.kanaFin = !settings["kanaFin"];
		vars.sawSuki = !settings["sawSuki"];
		vars.onMetro = !settings["onMetro"];
		vars.meetYumi = !settings["meetYumi"];
		vars.b1Done = !settings["b1Done"];
		vars.inYumiApt = !settings["inYumiApt"];
		vars.b2Done = !settings["b2Done"];
		vars.oriDone = !settings["oriDone"];
		vars.bathEnter = !settings["bathEnter"];
		vars.deliv1 = !settings["deliv1"];
		vars.kureEnter = !settings["kureEnter"];
		vars.slmScr = !settings["slmScr"];
		vars.tanaStart = !settings["tanaStart"];
		vars.tanaDone = !settings["tanaDone"];
		vars.teaStart = !settings["teaStart"];
		vars.teaDone = !settings["teaDone"];
		vars.rentGone = !settings["rentGone"];
		vars.r18Key = !settings["r18Key"];
		vars.rCard = !settings["rCard"];
		vars.sTeapot = !settings["sTeapot"];
		vars.sKey = !settings["sKey"];
		vars.colorStart = !settings["colorStart"];
		vars.sBath = !settings["sBath"];
		vars.picDone = !settings["picDone"];
		vars.b3Done = !settings["b3Done"];
		vars.yumiWin = !settings["yumiWin"];
		vars.bigScr = !settings["bigScr"];
		vars.takaeWillConv = !settings["takaeWillConv"];
		vars.rentCnfrnt = !settings["rentCnfrnt"];
		vars.theEnd = !settings["theEnd"];
		return true;
	}
}

split
{
	string s = current.scene;
	switch (s) {
		case "s6600": //The end :)
			break;
		case "s4688":
			if (!vars.rentBath) { vars.rentBath = true; return true; }
			break;
		case "s3603":  
			if (!vars.portStart) { vars.portStart = true; return true; }
			break;
		case "s3504":
			if (!vars.portDone) { vars.portDone = true; return true; }
			break;
		case "s2999":
			if (!vars.takae) { vars.takae = true; return true; }
			break;
		case "s1206":
			if (!vars.kanaFin) { vars.kanaFin = true; return true; }
			break;
		case "s2130":
			if (!vars.sawSuki) { vars.sawSuki = true; return true; }
			break;
		case "s4201":
			if (!vars.onMetro) { vars.onMetro = true; return true; }
			break;
		case "s1100":
			if (!vars.meetYumi) { vars.meetYumi = true; return true; }
			break;
		case "s1199":
			if (!vars.b1Done) { vars.b1Done = true; return true; }
			break;
		case "s5310":
			if (!vars.inYumiApt) { vars.inYumiApt = true; return true; }
			break;
		case "s1138":
			if (!vars.b2Done) { vars.b2Done = true; return true; }
			break;
		case "s1209":
			if (!vars.oriDone) { vars.oriDone = true; return true; }
			break;
		case "s4700":
			if (!vars.bathEnter) { vars.bathEnter = true; return true; }
			break;
		case "s1060":
			if (!vars.deliv1) { vars.deliv1 = true; return true; }
			break;
		case "s5610":
			if (!vars.kureEnter) { vars.kureEnter = true; return true; }
			break;
		case "s4689":
			if (!vars.slmScr) { vars.slmScr = true; return true; }
			break;
		case "s4732":
			if (!vars.tanaStart) { vars.tanaStart = true; return true; }
			break;
		case "s4734":
			if (!vars.tanaDone) { vars.tanaDone = true; return true; }
			break;
		case "s3195":
			if (!vars.teaStart) { vars.teaStart = true; return true; }
			break;
		case "s1212":
			if (!vars.teaDone) { vars.teaDone = true; return true; }
			break;
		case "s3500":
			if (!vars.rentGone) { vars.rentGone = true; return true; }
			break;
		case "s3333":
			if (!vars.r18Key) { vars.r18Key = true; return true; }
			break;
		case "s2934":
			if (!vars.rCard) { vars.rCard = true; return true; }
			break;
		case "s2021":
			if (!vars.sTeapot) { vars.sTeapot = true; return true; }
			break;
		case "s2129":
			if (!vars.sKey) { vars.sKey = true; return true; }
			break;
		case "s2599":
			if (!vars.colorStart) { vars.colorStart = true; return true; }
			break;
		case "s5050":
			if (!vars.sBath) { vars.sBath = true; return true; }
			break;
		case "s1148":
			if (!vars.picDone) { vars.picDone = true; return true; }
			break;
		case "s1152":
			if (!vars.b3Done) { vars.b3Done = true; return true; }
			break;
		case "s5599":
			if (!vars.yumiWin) { vars.yumiWin = true; return true; }
			break;
		case "s5197":
			if (!vars.bigScr) { vars.bigScr = true; return true; }
			break;
		case "s1225":
			if (!vars.takaeWillConv) { vars.takaeWillConv = true; return true; }
			break;
		case "s2333":
			if (!vars.rentCnfrnt) { vars.rentCnfrnt = true; return true; }
			break;
		
	}
}